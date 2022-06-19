package com.androidplot.p008xy;

import android.graphics.PointF;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import com.androidplot.Region;
import java.io.Serializable;
import java.util.EnumSet;
/* renamed from: com.androidplot.xy.PanZoom */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/PanZoom.class */
public class PanZoom implements View.OnTouchListener {
    protected static final int FIRST_FINGER = 0;
    protected static final float MIN_DIST_2_FING = 5.0f;
    protected static final int SECOND_FINGER = 1;
    private View.OnTouchListener delegate;
    private DragState dragState;
    protected RectF fingersRect;
    private PointF firstFingerPos;
    private boolean isEnabled;
    private Pan pan;
    private XYPlot plot;
    private State state;
    private Zoom zoom;
    private ZoomLimit zoomLimit;

    /* renamed from: com.androidplot.xy.PanZoom$1 */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/PanZoom$1.class */
    public static /* synthetic */ class C07801 {
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$xy$PanZoom$Zoom;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[Zoom.values().length];
            $SwitchMap$com$androidplot$xy$PanZoom$Zoom = iArr;
            try {
                iArr[Zoom.STRETCH_HORIZONTAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$androidplot$xy$PanZoom$Zoom[Zoom.STRETCH_VERTICAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$androidplot$xy$PanZoom$Zoom[Zoom.STRETCH_BOTH.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$androidplot$xy$PanZoom$Zoom[Zoom.SCALE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: com.androidplot.xy.PanZoom$DragState */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/PanZoom$DragState.class */
    public enum DragState {
        NONE,
        ONE_FINGER,
        TWO_FINGERS
    }

    /* renamed from: com.androidplot.xy.PanZoom$Pan */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/PanZoom$Pan.class */
    public enum Pan {
        NONE,
        HORIZONTAL,
        VERTICAL,
        BOTH
    }

    /* renamed from: com.androidplot.xy.PanZoom$State */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/PanZoom$State.class */
    public static class State implements Serializable {
        private BoundaryMode domainBoundaryMode;
        private Number domainLowerBoundary;
        private Number domainUpperBoundary;
        private BoundaryMode rangeBoundaryMode;
        private Number rangeLowerBoundary;
        private Number rangeUpperBoundary;

        public void apply(XYPlot xYPlot) {
            applyDomainBoundaries(xYPlot);
            applyRangeBoundaries(xYPlot);
        }

        public void applyDomainBoundaries(XYPlot xYPlot) {
            xYPlot.setDomainBoundaries(this.domainLowerBoundary, this.domainUpperBoundary, this.domainBoundaryMode);
        }

        public void applyRangeBoundaries(XYPlot xYPlot) {
            xYPlot.setRangeBoundaries(this.rangeLowerBoundary, this.rangeUpperBoundary, this.rangeBoundaryMode);
        }

        public void setDomainBoundaries(Number number, Number number2, BoundaryMode boundaryMode) {
            this.domainLowerBoundary = number;
            this.domainUpperBoundary = number2;
            this.domainBoundaryMode = boundaryMode;
        }

        public void setRangeBoundaries(Number number, Number number2, BoundaryMode boundaryMode) {
            this.rangeLowerBoundary = number;
            this.rangeUpperBoundary = number2;
            this.rangeBoundaryMode = boundaryMode;
        }
    }

    /* renamed from: com.androidplot.xy.PanZoom$Zoom */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/PanZoom$Zoom.class */
    public enum Zoom {
        NONE,
        STRETCH_HORIZONTAL,
        STRETCH_VERTICAL,
        STRETCH_BOTH,
        SCALE
    }

    /* renamed from: com.androidplot.xy.PanZoom$ZoomLimit */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/PanZoom$ZoomLimit.class */
    public enum ZoomLimit {
        OUTER,
        MIN_TICKS
    }

    protected PanZoom(XYPlot xYPlot, Pan pan, Zoom zoom) {
        this.isEnabled = true;
        this.dragState = DragState.NONE;
        this.state = new State();
        this.plot = xYPlot;
        this.pan = pan;
        this.zoom = zoom;
        this.zoomLimit = ZoomLimit.OUTER;
    }

    protected PanZoom(XYPlot xYPlot, Pan pan, Zoom zoom, ZoomLimit zoomLimit) {
        this.isEnabled = true;
        this.dragState = DragState.NONE;
        this.state = new State();
        this.plot = xYPlot;
        this.pan = pan;
        this.zoom = zoom;
        this.zoomLimit = zoomLimit;
    }

    public static PanZoom attach(XYPlot xYPlot) {
        return attach(xYPlot, Pan.BOTH, Zoom.SCALE);
    }

    public static PanZoom attach(XYPlot xYPlot, Pan pan, Zoom zoom) {
        return attach(xYPlot, pan, zoom, ZoomLimit.OUTER);
    }

    public static PanZoom attach(XYPlot xYPlot, Pan pan, Zoom zoom, ZoomLimit zoomLimit) {
        PanZoom panZoom = new PanZoom(xYPlot, pan, zoom, zoomLimit);
        xYPlot.setOnTouchListener(panZoom);
        return panZoom;
    }

    protected void adjustDomainBoundary(Number number, Number number2, BoundaryMode boundaryMode) {
        this.state.setDomainBoundaries(number, number2, boundaryMode);
        this.state.applyDomainBoundaries(this.plot);
    }

    protected void adjustRangeBoundary(Number number, Number number2, BoundaryMode boundaryMode) {
        this.state.setRangeBoundaries(number, number2, boundaryMode);
        this.state.applyRangeBoundaries(this.plot);
    }

    protected void calculatePan(PointF pointF, Region region, boolean z) {
        int i;
        float f;
        float f2;
        if (z) {
            region.setMinMax(this.plot.getBounds().getxRegion());
            f2 = pointF.x - this.firstFingerPos.x;
            f = region.getMax().floatValue() - region.getMin().floatValue();
            i = this.plot.getWidth();
        } else {
            region.setMinMax(this.plot.getBounds().getyRegion());
            f2 = -(pointF.y - this.firstFingerPos.y);
            f = region.getMax().floatValue() - region.getMin().floatValue();
            i = this.plot.getHeight();
        }
        float f3 = f2 * (f / i);
        region.setMin(Float.valueOf(region.getMin().floatValue() + f3));
        region.setMax(Float.valueOf(region.getMax().floatValue() + f3));
        float floatValue = region.length().floatValue();
        if (z && this.plot.getOuterLimits().getxRegion().isDefined()) {
            if (region.getMin().floatValue() < this.plot.getOuterLimits().getMinX().floatValue()) {
                region.setMin(this.plot.getOuterLimits().getMinX());
                region.setMax(Float.valueOf(region.getMin().floatValue() + floatValue));
            }
            if (region.getMax().floatValue() <= this.plot.getOuterLimits().getMaxX().floatValue()) {
                return;
            }
            region.setMax(this.plot.getOuterLimits().getMaxX());
            region.setMin(Float.valueOf(region.getMax().floatValue() - floatValue));
        } else if (!this.plot.getOuterLimits().getyRegion().isDefined()) {
        } else {
            if (region.getMin().floatValue() < this.plot.getOuterLimits().getMinY().floatValue()) {
                region.setMin(this.plot.getOuterLimits().getMinY());
                region.setMax(Float.valueOf(region.getMin().floatValue() + floatValue));
            }
            if (region.getMax().floatValue() <= this.plot.getOuterLimits().getMaxY().floatValue()) {
                return;
            }
            region.setMax(this.plot.getOuterLimits().getMaxY());
            region.setMin(Float.valueOf(region.getMax().floatValue() - floatValue));
        }
    }

    protected void calculateZoom(RectF rectF, float f, boolean z) {
        float f2;
        float f3;
        RectRegion bounds = this.plot.getBounds();
        if (z) {
            f3 = bounds.getMaxX().floatValue();
            f2 = bounds.getMinX().floatValue();
        } else {
            f3 = bounds.getMaxY().floatValue();
            f2 = bounds.getMinY().floatValue();
        }
        float f4 = f3 - f2;
        float f5 = f3 - (f4 / 2.0f);
        float f6 = f4 * f;
        float f7 = f6 / 2.0f;
        RectRegion outerLimits = this.plot.getOuterLimits();
        if (z) {
            float f8 = f7;
            if (this.zoomLimit == ZoomLimit.MIN_TICKS) {
                f8 = f7;
                if (this.plot.getDomainStepValue() > f6) {
                    f8 = (float) (this.plot.getDomainStepValue() / 2.0d);
                }
            }
            rectF.left = f5 - f8;
            rectF.right = f5 + f8;
            if (!outerLimits.isFullyDefined()) {
                return;
            }
            if (rectF.left < outerLimits.getMinX().floatValue()) {
                rectF.left = outerLimits.getMinX().floatValue();
            }
            if (rectF.right <= outerLimits.getMaxX().floatValue()) {
                return;
            }
            rectF.right = outerLimits.getMaxX().floatValue();
            return;
        }
        float f9 = f7;
        if (this.zoomLimit == ZoomLimit.MIN_TICKS) {
            f9 = f7;
            if (this.plot.getRangeStepValue() > f6) {
                f9 = (float) (this.plot.getRangeStepValue() / 2.0d);
            }
        }
        rectF.top = f5 - f9;
        rectF.bottom = f5 + f9;
        if (!outerLimits.isFullyDefined()) {
            return;
        }
        if (rectF.top < outerLimits.getMinY().floatValue()) {
            rectF.top = outerLimits.getMinY().floatValue();
        }
        if (rectF.bottom <= outerLimits.getMaxY().floatValue()) {
            return;
        }
        rectF.bottom = outerLimits.getMaxY().floatValue();
    }

    protected RectF fingerDistance(float f, float f2, float f3, float f4) {
        int i = (f > f3 ? 1 : (f == f3 ? 0 : -1));
        float f5 = i > 0 ? f3 : f;
        if (i <= 0) {
            f = f3;
        }
        int i2 = (f2 > f4 ? 1 : (f2 == f4 ? 0 : -1));
        float f6 = i2 > 0 ? f4 : f2;
        if (i2 <= 0) {
            f2 = f4;
        }
        return new RectF(f5, f6, f, f2);
    }

    protected RectF fingerDistance(MotionEvent motionEvent) {
        return fingerDistance(motionEvent.getX(0), motionEvent.getY(0), motionEvent.getX(1), motionEvent.getY(1));
    }

    public View.OnTouchListener getDelegate() {
        return this.delegate;
    }

    protected RectF getFingersRect() {
        return this.fingersRect;
    }

    public Pan getPan() {
        return this.pan;
    }

    public State getState() {
        return this.state;
    }

    public Zoom getZoom() {
        return this.zoom;
    }

    public ZoomLimit getZoomLimit() {
        return this.zoomLimit;
    }

    public boolean isEnabled() {
        return this.isEnabled;
    }

    protected boolean isValidScale(float f) {
        boolean z;
        if (!Float.isInfinite(f) && !Float.isNaN(f)) {
            double d = f;
            if (d <= -0.001d || d >= 0.001d) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        View.OnTouchListener onTouchListener = this.delegate;
        boolean onTouch = onTouchListener != null ? onTouchListener.onTouch(view, motionEvent) : false;
        if (!isEnabled() || onTouch) {
            return true;
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.firstFingerPos = new PointF(motionEvent.getX(), motionEvent.getY());
            this.dragState = DragState.ONE_FINGER;
            return true;
        } else if (action == 1) {
            reset();
            return true;
        } else if (action == 2) {
            if (this.dragState == DragState.ONE_FINGER) {
                pan(motionEvent);
                return true;
            } else if (this.dragState != DragState.TWO_FINGERS) {
                return true;
            } else {
                zoom(motionEvent);
                return true;
            }
        } else if (action != 5) {
            if (action != 6) {
                return true;
            }
            this.dragState = DragState.NONE;
            return true;
        } else {
            setFingersRect(fingerDistance(motionEvent));
            if (getFingersRect().width() <= MIN_DIST_2_FING && getFingersRect().width() >= -5.0f) {
                return true;
            }
            this.dragState = DragState.TWO_FINGERS;
            return true;
        }
    }

    protected void pan(MotionEvent motionEvent) {
        if (this.pan == Pan.NONE) {
            return;
        }
        PointF pointF = this.firstFingerPos;
        this.firstFingerPos = new PointF(motionEvent.getX(), motionEvent.getY());
        if (EnumSet.of(Pan.HORIZONTAL, Pan.BOTH).contains(this.pan)) {
            Region region = new Region();
            calculatePan(pointF, region, true);
            adjustDomainBoundary(region.getMin(), region.getMax(), BoundaryMode.FIXED);
        }
        if (EnumSet.of(Pan.VERTICAL, Pan.BOTH).contains(this.pan)) {
            Region region2 = new Region();
            calculatePan(pointF, region2, false);
            adjustRangeBoundary(region2.getMin(), region2.getMax(), BoundaryMode.FIXED);
        }
        this.plot.redraw();
    }

    public void reset() {
        this.firstFingerPos = null;
        setFingersRect(null);
        setFingersRect(null);
    }

    public void setDelegate(View.OnTouchListener onTouchListener) {
        this.delegate = onTouchListener;
    }

    public void setEnabled(boolean z) {
        this.isEnabled = z;
    }

    protected void setFingersRect(RectF rectF) {
        this.fingersRect = rectF;
    }

    public void setPan(Pan pan) {
        this.pan = pan;
    }

    public void setState(State state) {
        this.state = state;
        state.apply(this.plot);
    }

    public void setZoom(Zoom zoom) {
        this.zoom = zoom;
    }

    public void setZoomLimit(ZoomLimit zoomLimit) {
        this.zoomLimit = zoomLimit;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0150  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void zoom(android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.androidplot.p008xy.PanZoom.zoom(android.view.MotionEvent):void");
    }
}
