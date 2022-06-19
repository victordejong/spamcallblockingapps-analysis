package com.androidplot;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.androidplot.Series;
import com.androidplot.SeriesRegistry;
import com.androidplot.p007ui.Anchor;
import com.androidplot.p007ui.BoxModel;
import com.androidplot.p007ui.Formatter;
import com.androidplot.p007ui.HorizontalPositioning;
import com.androidplot.p007ui.LayoutManager;
import com.androidplot.p007ui.Resizable;
import com.androidplot.p007ui.SeriesBundle;
import com.androidplot.p007ui.SeriesRenderer;
import com.androidplot.p007ui.Size;
import com.androidplot.p007ui.SizeMode;
import com.androidplot.p007ui.TextOrientation;
import com.androidplot.p007ui.VerticalPositioning;
import com.androidplot.p007ui.widget.TextLabelWidget;
import com.androidplot.util.AttrUtils;
import com.androidplot.util.DisplayDimensions;
import com.androidplot.util.PixelUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/androidplot/Plot.class */
public abstract class Plot<SeriesType extends Series, FormatterType extends Formatter, RendererType extends SeriesRenderer, BundleType extends SeriesBundle<SeriesType, FormatterType>, RegistryType extends SeriesRegistry<BundleType, SeriesType, FormatterType>> extends View implements Resizable {
    private static final String BASE_PACKAGE = "com.androidplot.";
    private static final int DEFAULT_TITLE_WIDGET_TEXT_SIZE_SP = 10;
    private static final String TAG = "com.androidplot.Plot";
    private static final String XML_ATTR_PREFIX = "androidplot";
    private Paint backgroundPaint;
    private Paint borderPaint;
    private float borderRadiusX;
    private float borderRadiusY;
    private BorderStyle borderStyle;
    private BoxModel boxModel;
    private DisplayDimensions displayDims;
    private boolean isIdle;
    private boolean keepRunning;
    private LayoutManager layoutManager;
    private final ArrayList<PlotListener> listeners;
    private final BufferedCanvas pingPong;
    private RegistryType registry;
    private RenderMode renderMode;
    private final Object renderSync;
    private Thread renderThread;
    private HashMap<Class<? extends RendererType>, RendererType> renderers;
    private TextLabelWidget title;

    /* renamed from: com.androidplot.Plot$2 */
    /* loaded from: classes-dex2jar.jar:com/androidplot/Plot$2.class */
    public static /* synthetic */ class C07622 {
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$Plot$BorderStyle;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[BorderStyle.values().length];
            $SwitchMap$com$androidplot$Plot$BorderStyle = iArr;
            try {
                iArr[BorderStyle.ROUNDED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$androidplot$Plot$BorderStyle[BorderStyle.SQUARE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/androidplot/Plot$BorderStyle.class */
    public enum BorderStyle {
        ROUNDED,
        SQUARE,
        NONE
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/androidplot/Plot$BufferedCanvas.class */
    public static class BufferedCanvas {
        private volatile Bitmap bgBuffer;
        private Canvas canvas;
        private volatile Bitmap fgBuffer;

        private BufferedCanvas() {
            this.canvas = new Canvas();
        }

        public Bitmap getBitmap() {
            return this.fgBuffer;
        }

        public Canvas getCanvas() {
            synchronized (this) {
                if (this.bgBuffer != null) {
                    this.canvas.setBitmap(this.bgBuffer);
                    return this.canvas;
                }
                return null;
            }
        }

        public void recycle() {
            if (this.bgBuffer != null) {
                this.bgBuffer.recycle();
                this.bgBuffer = null;
            }
            if (this.fgBuffer != null) {
                this.fgBuffer.recycle();
                this.fgBuffer = null;
            }
            System.gc();
        }

        public void resize(int i, int i2) {
            synchronized (this) {
                if (i2 <= 0 || i <= 0) {
                    this.bgBuffer = null;
                    this.fgBuffer = null;
                } else {
                    try {
                        this.bgBuffer = Bitmap.createBitmap(i2, i, Bitmap.Config.ARGB_8888);
                        this.fgBuffer = Bitmap.createBitmap(i2, i, Bitmap.Config.ARGB_8888);
                    } catch (IllegalArgumentException e) {
                        throw new IllegalArgumentException("Illegal argument passed to Bitmap.createBitmap.  width: " + i2 + " height: " + i);
                    }
                }
            }
        }

        public void swap() {
            synchronized (this) {
                Bitmap bitmap = this.bgBuffer;
                this.bgBuffer = this.fgBuffer;
                this.fgBuffer = bitmap;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/androidplot/Plot$RenderMode.class */
    public enum RenderMode {
        USE_BACKGROUND_THREAD,
        USE_MAIN_THREAD
    }

    public Plot(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.boxModel = new BoxModel();
        this.borderStyle = BorderStyle.NONE;
        this.borderRadiusX = 15.0f;
        this.borderRadiusY = 15.0f;
        this.displayDims = new DisplayDimensions();
        this.renderMode = RenderMode.USE_MAIN_THREAD;
        this.pingPong = new BufferedCanvas();
        this.renderSync = new Object();
        this.keepRunning = false;
        this.isIdle = true;
        this.listeners = new ArrayList<>();
        this.registry = getRegistryInstance();
        this.renderers = new HashMap<>();
        Paint paint = new Paint();
        this.borderPaint = paint;
        paint.setColor(Color.rgb(150, 150, 150));
        this.borderPaint.setStyle(Paint.Style.STROKE);
        this.borderPaint.setStrokeWidth(1.0f);
        this.borderPaint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.backgroundPaint = paint2;
        paint2.setColor(-12303292);
        this.backgroundPaint.setStyle(Paint.Style.FILL);
        init(context, attributeSet, 0);
    }

    public Plot(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.boxModel = new BoxModel();
        this.borderStyle = BorderStyle.NONE;
        this.borderRadiusX = 15.0f;
        this.borderRadiusY = 15.0f;
        this.displayDims = new DisplayDimensions();
        this.renderMode = RenderMode.USE_MAIN_THREAD;
        this.pingPong = new BufferedCanvas();
        this.renderSync = new Object();
        this.keepRunning = false;
        this.isIdle = true;
        this.listeners = new ArrayList<>();
        this.registry = getRegistryInstance();
        this.renderers = new HashMap<>();
        Paint paint = new Paint();
        this.borderPaint = paint;
        paint.setColor(Color.rgb(150, 150, 150));
        this.borderPaint.setStyle(Paint.Style.STROKE);
        this.borderPaint.setStrokeWidth(1.0f);
        this.borderPaint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.backgroundPaint = paint2;
        paint2.setColor(-12303292);
        this.backgroundPaint.setStyle(Paint.Style.FILL);
        init(context, attributeSet, i);
    }

    public Plot(Context context, String str) {
        this(context, str, RenderMode.USE_MAIN_THREAD);
    }

    public Plot(Context context, String str, RenderMode renderMode) {
        super(context);
        this.boxModel = new BoxModel();
        this.borderStyle = BorderStyle.NONE;
        this.borderRadiusX = 15.0f;
        this.borderRadiusY = 15.0f;
        this.displayDims = new DisplayDimensions();
        this.renderMode = RenderMode.USE_MAIN_THREAD;
        this.pingPong = new BufferedCanvas();
        this.renderSync = new Object();
        this.keepRunning = false;
        this.isIdle = true;
        this.listeners = new ArrayList<>();
        this.registry = getRegistryInstance();
        this.renderers = new HashMap<>();
        Paint paint = new Paint();
        this.borderPaint = paint;
        paint.setColor(Color.rgb(150, 150, 150));
        this.borderPaint.setStyle(Paint.Style.STROKE);
        this.borderPaint.setStrokeWidth(1.0f);
        this.borderPaint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.backgroundPaint = paint2;
        paint2.setColor(-12303292);
        this.backgroundPaint.setStyle(Paint.Style.FILL);
        this.renderMode = renderMode;
        init(context, null, 0);
        getTitle().setText(str);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:4|56|5|8|(15:58|10|11|(1:13)|53|18|19|(1:21)|22|(2:24|37)|38|(4:41|(2:45|61)|46|39)|54|47|64)|17|53|18|19|(0)|22|(0)|38|(1:39)|54|47|64) */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c5, code lost:
        android.util.Log.d(com.androidplot.Plot.TAG, "Styleable definition not found for: " + com.androidplot.Plot.class.getSimpleName());
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00f2, code lost:
        if (r10 == null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x010d, code lost:
        if (r10 == null) goto L38;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a0 A[Catch: all -> 0x00c0, NoSuchFieldException -> 0x00c4, IllegalAccessException -> 0x010a, TRY_ENTER, TryCatch #6 {IllegalAccessException -> 0x010a, NoSuchFieldException -> 0x00c4, blocks: (B:18:0x008c, B:21:0x00a0), top: B:53:0x008c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0130  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void loadAttrs(android.util.AttributeSet r7, int r8) {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.androidplot.Plot.loadAttrs(android.util.AttributeSet, int):void");
    }

    private void processBaseAttrs(TypedArray typedArray) {
        setMarkupEnabled(typedArray.getBoolean(C0763R.styleable.Plot_markupEnabled, false));
        RenderMode renderMode = RenderMode.values()[typedArray.getInt(C0763R.styleable.Plot_renderMode, getRenderMode().ordinal())];
        if (renderMode != getRenderMode()) {
            setRenderMode(renderMode);
        }
        AttrUtils.configureBoxModelable(typedArray, this.boxModel, C0763R.styleable.Plot_marginTop, C0763R.styleable.Plot_marginBottom, C0763R.styleable.Plot_marginLeft, C0763R.styleable.Plot_marginRight, C0763R.styleable.Plot_paddingTop, C0763R.styleable.Plot_paddingBottom, C0763R.styleable.Plot_paddingLeft, C0763R.styleable.Plot_paddingRight);
        getTitle().setText(typedArray.getString(C0763R.styleable.Plot_title));
        getTitle().getLabelPaint().setTextSize(typedArray.getDimension(C0763R.styleable.Plot_titleTextSize, PixelUtils.spToPix(10.0f)));
        getTitle().getLabelPaint().setColor(typedArray.getColor(C0763R.styleable.Plot_titleTextColor, getTitle().getLabelPaint().getColor()));
        getBackgroundPaint().setColor(typedArray.getColor(C0763R.styleable.Plot_backgroundColor, getBackgroundPaint().getColor()));
        AttrUtils.configureLinePaint(typedArray, getBorderPaint(), C0763R.styleable.Plot_borderColor, C0763R.styleable.Plot_borderThickness);
    }

    public boolean addListener(PlotListener plotListener) {
        boolean z;
        synchronized (this) {
            if (!this.listeners.contains(plotListener)) {
                if (this.listeners.add(plotListener)) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    public boolean addSeries(SeriesType seriestype, FormatterType formattertype) {
        boolean add;
        synchronized (this) {
            add = getRegistry().add(seriestype, formattertype);
            attachSeries(seriestype, formattertype);
        }
        return add;
    }

    public boolean addSeries(FormatterType formattertype, SeriesType... seriestypeArr) {
        synchronized (this) {
            for (SeriesType seriestype : seriestypeArr) {
                if (!addSeries((Plot<SeriesType, FormatterType, RendererType, BundleType, RegistryType>) seriestype, (SeriesType) formattertype)) {
                    return false;
                }
            }
            return true;
        }
    }

    protected void attachSeries(SeriesType seriestype, FormatterType formattertype) {
        Class<? extends RendererType> cls = (Class<? extends RendererType>) formattertype.getRendererClass();
        if (!getRenderers().containsKey(cls)) {
            getRenderers().put(cls, (RendererType) formattertype.getRendererInstance(this));
        }
        if (seriestype instanceof PlotListener) {
            addListener((PlotListener) seriestype);
        }
    }

    public void clear() {
        for (SeriesType seriestype : getRegistry().getSeriesList()) {
            if (seriestype instanceof PlotListener) {
                removeListener((PlotListener) seriestype);
            }
        }
        getRegistry().clear();
    }

    protected void drawBackground(Canvas canvas, RectF rectF) {
        drawRect(canvas, rectF, this.backgroundPaint);
    }

    protected void drawBorder(Canvas canvas, RectF rectF) {
        drawRect(canvas, rectF, this.borderPaint);
    }

    protected void drawRect(Canvas canvas, RectF rectF, Paint paint) {
        if (C07622.$SwitchMap$com$androidplot$Plot$BorderStyle[this.borderStyle.ordinal()] != 1) {
            canvas.drawRect(rectF, paint);
        } else {
            canvas.drawRoundRect(rectF, this.borderRadiusX, this.borderRadiusY, paint);
        }
    }

    public Paint getBackgroundPaint() {
        return this.backgroundPaint;
    }

    public Paint getBorderPaint() {
        return this.borderPaint;
    }

    public DisplayDimensions getDisplayDimensions() {
        return this.displayDims;
    }

    public FormatterType getFormatter(SeriesType seriestype, Class<? extends RendererType> cls) {
        return getSeries(seriestype, cls).getFormatter();
    }

    public LayoutManager getLayoutManager() {
        return this.layoutManager;
    }

    protected ArrayList<PlotListener> getListeners() {
        return this.listeners;
    }

    public float getPlotMarginBottom() {
        return this.boxModel.getMarginBottom();
    }

    public float getPlotMarginLeft() {
        return this.boxModel.getMarginLeft();
    }

    public float getPlotMarginRight() {
        return this.boxModel.getMarginRight();
    }

    public float getPlotMarginTop() {
        return this.boxModel.getMarginTop();
    }

    public float getPlotPaddingBottom() {
        return this.boxModel.getPaddingBottom();
    }

    public float getPlotPaddingLeft() {
        return this.boxModel.getPaddingLeft();
    }

    public float getPlotPaddingRight() {
        return this.boxModel.getPaddingRight();
    }

    public float getPlotPaddingTop() {
        return this.boxModel.getPaddingTop();
    }

    public RegistryType getRegistry() {
        return this.registry;
    }

    protected abstract RegistryType getRegistryInstance();

    public RenderMode getRenderMode() {
        return this.renderMode;
    }

    public SeriesRenderer getRenderer(Class cls) {
        return getRenderers().get(cls);
    }

    public List<RendererType> getRendererList() {
        return new ArrayList(getRenderers().values());
    }

    public HashMap<Class<? extends RendererType>, RendererType> getRenderers() {
        return this.renderers;
    }

    protected SeriesBundle<SeriesType, FormatterType> getSeries(SeriesType seriestype, Class<? extends RendererType> cls) {
        for (SeriesBundle<SeriesType, FormatterType> seriesBundle : getSeries(seriestype)) {
            if (seriesBundle.getFormatter().getRendererClass() == cls) {
                return seriesBundle;
            }
        }
        return null;
    }

    protected List<SeriesBundle<SeriesType, FormatterType>> getSeries(SeriesType seriestype) {
        return getRegistry().get(seriestype);
    }

    public TextLabelWidget getTitle() {
        return this.title;
    }

    protected final void init(Context context, AttributeSet attributeSet, int i) {
        PixelUtils.init(context);
        LayoutManager layoutManager = new LayoutManager();
        this.layoutManager = layoutManager;
        TextLabelWidget textLabelWidget = new TextLabelWidget(layoutManager, new Size(25.0f, SizeMode.ABSOLUTE, 100.0f, SizeMode.ABSOLUTE), TextOrientation.HORIZONTAL);
        this.title = textLabelWidget;
        textLabelWidget.position(0.0f, HorizontalPositioning.RELATIVE_TO_CENTER, 0.0f, VerticalPositioning.ABSOLUTE_FROM_TOP, Anchor.TOP_MIDDLE);
        this.title.getLabelPaint().setTextSize(PixelUtils.spToPix(10.0f));
        onPreInit();
        this.layoutManager.moveToTop(this.title);
        if (context != null && attributeSet != null) {
            loadAttrs(attributeSet, i);
        }
        onAfterConfig();
        this.layoutManager.onPostInit();
        if (this.renderMode == RenderMode.USE_BACKGROUND_THREAD) {
            this.renderThread = new Thread(new Runnable() { // from class: com.androidplot.Plot.1
                @Override // java.lang.Runnable
                public void run() {
                    Plot.this.keepRunning = true;
                    while (Plot.this.keepRunning) {
                        Plot.this.isIdle = false;
                        synchronized (Plot.this.pingPong) {
                            Plot.this.renderOnCanvas(Plot.this.pingPong.getCanvas());
                            Plot.this.pingPong.swap();
                        }
                        synchronized (Plot.this.renderSync) {
                            Plot.this.postInvalidate();
                            if (Plot.this.keepRunning) {
                                try {
                                    Plot.this.renderSync.wait();
                                } catch (InterruptedException e) {
                                    Plot.this.keepRunning = false;
                                }
                            }
                        }
                    }
                    Plot.this.pingPong.recycle();
                }
            }, "Androidplot renderThread");
        }
    }

    public boolean isEmpty() {
        return getRegistry().isEmpty();
    }

    protected boolean isHwAccelerationSupported() {
        return false;
    }

    @Override // com.androidplot.p007ui.Resizable
    public void layout(DisplayDimensions displayDimensions) {
        synchronized (this) {
            this.displayDims = displayDimensions;
            this.layoutManager.layout(displayDimensions);
        }
    }

    protected void notifyListenersAfterDraw(Canvas canvas) {
        Iterator<PlotListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onAfterDraw(this, canvas);
        }
    }

    public void notifyListenersBeforeDraw(Canvas canvas) {
        Iterator<PlotListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onBeforeDraw(this, canvas);
        }
    }

    protected void onAfterConfig() {
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        synchronized (this.renderSync) {
            this.keepRunning = false;
            this.renderSync.notify();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.renderMode == RenderMode.USE_BACKGROUND_THREAD) {
            synchronized (this.pingPong) {
                Bitmap bitmap = this.pingPong.getBitmap();
                if (bitmap != null) {
                    canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
                }
            }
        } else if (this.renderMode == RenderMode.USE_MAIN_THREAD) {
            renderOnCanvas(canvas);
        } else {
            throw new IllegalArgumentException("Unsupported Render Mode: " + this.renderMode);
        }
    }

    protected void onPreInit() {
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        synchronized (this) {
            PixelUtils.init(getContext());
            if (Build.VERSION.SDK_INT >= 11 && !isHwAccelerationSupported() && isHardwareAccelerated()) {
                setLayerType(1, null);
            }
            if (this.renderMode == RenderMode.USE_BACKGROUND_THREAD) {
                this.pingPong.resize(i2, i);
            }
            RectF rectF = new RectF(0.0f, 0.0f, i, i2);
            RectF marginatedRect = this.boxModel.getMarginatedRect(rectF);
            layout(new DisplayDimensions(rectF, marginatedRect, this.boxModel.getPaddedRect(marginatedRect)));
            super.onSizeChanged(i, i2, i3, i4);
            Thread thread = this.renderThread;
            if (thread != null && !thread.isAlive()) {
                this.renderThread.start();
            }
        }
    }

    protected abstract void processAttrs(TypedArray typedArray);

    public void redraw() {
        if (this.renderMode == RenderMode.USE_BACKGROUND_THREAD) {
            if (!this.isIdle) {
                return;
            }
            synchronized (this.renderSync) {
                this.renderSync.notify();
            }
        } else if (this.renderMode != RenderMode.USE_MAIN_THREAD) {
            throw new IllegalArgumentException("Unsupported Render Mode: " + this.renderMode);
        } else if (Looper.myLooper() == Looper.getMainLooper()) {
            invalidate();
        } else {
            postInvalidate();
        }
    }

    public boolean removeListener(PlotListener plotListener) {
        boolean remove;
        synchronized (this) {
            remove = this.listeners.remove(plotListener);
        }
        return remove;
    }

    public void removeSeries(SeriesType seriestype) {
        synchronized (this) {
            if (seriestype instanceof PlotListener) {
                removeListener((PlotListener) seriestype);
            }
            getRegistry().remove(seriestype);
        }
    }

    public boolean removeSeries(SeriesType seriestype, Class<? extends RendererType> cls) {
        synchronized (this) {
            if (getRegistry().remove(seriestype, cls).size() != 1 || !(seriestype instanceof PlotListener)) {
                return false;
            }
            removeListener((PlotListener) seriestype);
            return true;
        }
    }

    protected void renderOnCanvas(Canvas canvas) {
        synchronized (this) {
            if (canvas == null) {
                return;
            }
            notifyListenersBeforeDraw(canvas);
            try {
                canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                if (this.backgroundPaint != null) {
                    drawBackground(canvas, this.displayDims.marginatedRect);
                }
                this.layoutManager.draw(canvas);
                if (getBorderPaint() != null) {
                    drawBorder(canvas, this.displayDims.marginatedRect);
                }
            } catch (Exception e) {
                Log.e(TAG, "Exception while rendering Plot.", e);
            }
            this.isIdle = true;
            notifyListenersAfterDraw(canvas);
        }
    }

    public void setBackgroundPaint(Paint paint) {
        this.backgroundPaint = paint;
    }

    public void setBorderPaint(Paint paint) {
        if (paint == null) {
            this.borderPaint = null;
            return;
        }
        Paint paint2 = new Paint(paint);
        this.borderPaint = paint2;
        paint2.setStyle(Paint.Style.STROKE);
    }

    public void setBorderStyle(BorderStyle borderStyle, Float f, Float f2) {
        if (borderStyle == BorderStyle.ROUNDED) {
            if (f == null || f2 == null) {
                throw new IllegalArgumentException("radiusX and radiusY cannot be null when using BorderStyle.ROUNDED");
            }
            this.borderRadiusX = f.floatValue();
            this.borderRadiusY = f2.floatValue();
        }
        this.borderStyle = borderStyle;
    }

    public void setLayoutManager(LayoutManager layoutManager) {
        this.layoutManager = layoutManager;
    }

    public void setMarkupEnabled(boolean z) {
        this.layoutManager.setMarkupEnabled(z);
    }

    public void setPlotMarginBottom(float f) {
        this.boxModel.setMarginBottom(f);
    }

    public void setPlotMarginLeft(float f) {
        this.boxModel.setMarginLeft(f);
    }

    public void setPlotMarginRight(float f) {
        this.boxModel.setMarginRight(f);
    }

    public void setPlotMarginTop(float f) {
        this.boxModel.setMarginTop(f);
    }

    public void setPlotMargins(float f, float f2, float f3, float f4) {
        setPlotMarginLeft(f);
        setPlotMarginTop(f2);
        setPlotMarginRight(f3);
        setPlotMarginBottom(f4);
    }

    public void setPlotPadding(float f, float f2, float f3, float f4) {
        setPlotPaddingLeft(f);
        setPlotPaddingTop(f2);
        setPlotPaddingRight(f3);
        setPlotPaddingBottom(f4);
    }

    public void setPlotPaddingBottom(float f) {
        this.boxModel.setPaddingBottom(f);
    }

    public void setPlotPaddingLeft(float f) {
        this.boxModel.setPaddingLeft(f);
    }

    public void setPlotPaddingRight(float f) {
        this.boxModel.setPaddingRight(f);
    }

    public void setPlotPaddingTop(float f) {
        this.boxModel.setPaddingTop(f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setRegistry(RegistryType registrytype) {
        this.registry = registrytype;
        for (BundleType bundletype : registrytype.getSeriesAndFormatterList()) {
            attachSeries(bundletype.getSeries(), bundletype.getFormatter());
        }
    }

    public void setRenderMode(RenderMode renderMode) {
        this.renderMode = renderMode;
    }

    public void setTitle(TextLabelWidget textLabelWidget) {
        this.title = textLabelWidget;
    }

    public void setTitle(String str) {
        getTitle().setText(str);
    }
}
