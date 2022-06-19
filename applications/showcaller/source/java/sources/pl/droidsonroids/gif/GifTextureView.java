package pl.droidsonroids.gif;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Surface;
import android.view.TextureView;
import android.widget.ImageView;
import java.io.IOException;
import java.lang.ref.WeakReference;
import pl.droidsonroids.gif.AbstractC9701f;
import pl.droidsonroids.gif.C9698e;
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/GifTextureView.class */
public class GifTextureView extends TextureView {

    /* renamed from: d */
    private static final ImageView.ScaleType[] f40927d = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    /* renamed from: g */
    private AbstractC9701f f40930g;

    /* renamed from: h */
    private TextureView$SurfaceTextureListenerC9687c f40931h;

    /* renamed from: j */
    private C9698e.C9700b f40933j;

    /* renamed from: e */
    private ImageView.ScaleType f40928e = ImageView.ScaleType.FIT_CENTER;

    /* renamed from: f */
    private final Matrix f40929f = new Matrix();

    /* renamed from: i */
    private float f40932i = 1.0f;

    /* renamed from: pl.droidsonroids.gif.GifTextureView$a */
    /* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/GifTextureView$a.class */
    public static /* synthetic */ class C9685a {

        /* renamed from: a */
        static final /* synthetic */ int[] f40934a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f40934a = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f40934a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f40934a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f40934a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f40934a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f40934a[ImageView.ScaleType.FIT_START.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f40934a[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f40934a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* renamed from: pl.droidsonroids.gif.GifTextureView$b */
    /* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/GifTextureView$b.class */
    public interface AbstractC9686b {
        /* renamed from: a */
        void m75a(Canvas canvas);
    }

    /* renamed from: pl.droidsonroids.gif.GifTextureView$c */
    /* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/GifTextureView$c.class */
    public static class TextureView$SurfaceTextureListenerC9687c extends Thread implements TextureView.SurfaceTextureListener {

        /* renamed from: d */
        final C9691b f40935d = new C9691b();

        /* renamed from: e */
        private GifInfoHandle f40936e = new GifInfoHandle();

        /* renamed from: f */
        private IOException f40937f;

        /* renamed from: g */
        long[] f40938g;

        /* renamed from: h */
        private final WeakReference<GifTextureView> f40939h;

        /* renamed from: pl.droidsonroids.gif.GifTextureView$c$a */
        /* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/GifTextureView$c$a.class */
        class RunnableC9688a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ GifTextureView f40940d;

            RunnableC9688a(GifTextureView gifTextureView) {
                TextureView$SurfaceTextureListenerC9687c.this = r4;
                this.f40940d = gifTextureView;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f40940d.m76h(TextureView$SurfaceTextureListenerC9687c.this.f40936e);
            }
        }

        TextureView$SurfaceTextureListenerC9687c(GifTextureView gifTextureView) {
            super("GifRenderThread");
            this.f40939h = new WeakReference<>(gifTextureView);
        }

        /* renamed from: c */
        void m72c(GifTextureView gifTextureView, AbstractC9686b abstractC9686b) {
            this.f40935d.m66b();
            gifTextureView.setSuperSurfaceTextureListener(abstractC9686b != null ? new TextureView$SurfaceTextureListenerC9707i(abstractC9686b) : null);
            this.f40936e.m95s();
            interrupt();
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            GifTextureView gifTextureView = this.f40939h.get();
            if (gifTextureView != null) {
                gifTextureView.m76h(this.f40936e);
            }
            this.f40935d.m65c();
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            this.f40935d.m66b();
            this.f40936e.m95s();
            interrupt();
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                GifTextureView gifTextureView = this.f40939h.get();
                if (gifTextureView == null) {
                    return;
                }
                GifInfoHandle mo42a = gifTextureView.f40930g.mo42a();
                this.f40936e = mo42a;
                mo42a.m115B((char) 1, gifTextureView.isOpaque());
                if (gifTextureView.f40933j.f40971b >= 0) {
                    this.f40936e.m116A(gifTextureView.f40933j.f40971b);
                }
                GifTextureView gifTextureView2 = this.f40939h.get();
                if (gifTextureView2 == null) {
                    this.f40936e.m94t();
                    return;
                }
                gifTextureView2.setSuperSurfaceTextureListener(this);
                boolean isAvailable = gifTextureView2.isAvailable();
                this.f40935d.m64d(isAvailable);
                if (isAvailable) {
                    gifTextureView2.post(new RunnableC9688a(gifTextureView2));
                }
                this.f40936e.m114C(gifTextureView2.f40932i);
                while (!isInterrupted()) {
                    try {
                        this.f40935d.m67a();
                        GifTextureView gifTextureView3 = this.f40939h.get();
                        if (gifTextureView3 == null) {
                            break;
                        }
                        SurfaceTexture surfaceTexture = gifTextureView3.getSurfaceTexture();
                        if (surfaceTexture != null) {
                            Surface surface = new Surface(surfaceTexture);
                            try {
                                this.f40936e.m113a(surface, this.f40938g);
                            } finally {
                                surface.release();
                            }
                        }
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                    }
                }
                this.f40936e.m94t();
                this.f40936e = new GifInfoHandle();
            } catch (IOException e2) {
                this.f40937f = e2;
            }
        }
    }

    public GifTextureView(Context context) {
        super(context);
        m77g(null, 0, 0);
    }

    public GifTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m77g(attributeSet, 0, 0);
    }

    public GifTextureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m77g(attributeSet, i, 0);
    }

    /* renamed from: f */
    private static AbstractC9701f m78f(TypedArray typedArray) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(C9708j.GifTextureView_gifSource, typedValue)) {
            return null;
        }
        if (typedValue.resourceId != 0) {
            String resourceTypeName = typedArray.getResources().getResourceTypeName(typedValue.resourceId);
            if (C9698e.f40967a.contains(resourceTypeName)) {
                return new AbstractC9701f.C9704c(typedArray.getResources(), typedValue.resourceId);
            }
            if (!"string".equals(resourceTypeName)) {
                throw new IllegalArgumentException("Expected string, drawable, mipmap or raw resource type. '" + resourceTypeName + "' is not supported");
            }
        }
        return new AbstractC9701f.C9703b(typedArray.getResources().getAssets(), typedValue.string.toString());
    }

    /* renamed from: g */
    private void m77g(AttributeSet attributeSet, int i, int i2) {
        if (attributeSet != null) {
            int attributeIntValue = attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "scaleType", -1);
            if (attributeIntValue >= 0) {
                ImageView.ScaleType[] scaleTypeArr = f40927d;
                if (attributeIntValue < scaleTypeArr.length) {
                    this.f40928e = scaleTypeArr[attributeIntValue];
                }
            }
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C9708j.GifTextureView, i, i2);
            this.f40930g = m78f(obtainStyledAttributes);
            super.setOpaque(obtainStyledAttributes.getBoolean(C9708j.GifTextureView_isOpaque, false));
            obtainStyledAttributes.recycle();
            this.f40933j = new C9698e.C9700b(this, attributeSet, i, i2);
        } else {
            super.setOpaque(false);
            this.f40933j = new C9698e.C9700b();
        }
        if (!isInEditMode()) {
            TextureView$SurfaceTextureListenerC9687c textureView$SurfaceTextureListenerC9687c = new TextureView$SurfaceTextureListenerC9687c(this);
            this.f40931h = textureView$SurfaceTextureListenerC9687c;
            if (this.f40930g == null) {
                return;
            }
            textureView$SurfaceTextureListenerC9687c.start();
        }
    }

    /* renamed from: h */
    public void m76h(GifInfoHandle gifInfoHandle) {
        Matrix matrix = new Matrix();
        float width = getWidth();
        float height = getHeight();
        float m100n = gifInfoHandle.m100n() / width;
        float m107g = gifInfoHandle.m107g() / height;
        RectF rectF = new RectF(0.0f, 0.0f, gifInfoHandle.m100n(), gifInfoHandle.m107g());
        RectF rectF2 = new RectF(0.0f, 0.0f, width, height);
        float f = 1.0f;
        switch (C9685a.f40934a[this.f40928e.ordinal()]) {
            case 1:
                matrix.setScale(m100n, m107g, width / 2.0f, height / 2.0f);
                break;
            case 2:
                float min = 1.0f / Math.min(m100n, m107g);
                matrix.setScale(m100n * min, min * m107g, width / 2.0f, height / 2.0f);
                break;
            case 3:
                if (gifInfoHandle.m100n() > width || gifInfoHandle.m107g() > height) {
                    f = Math.min(1.0f / m100n, 1.0f / m107g);
                }
                matrix.setScale(m100n * f, f * m107g, width / 2.0f, height / 2.0f);
                break;
            case 4:
                matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
                matrix.preScale(m100n, m107g);
                break;
            case 5:
                matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
                matrix.preScale(m100n, m107g);
                break;
            case 6:
                matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
                matrix.preScale(m100n, m107g);
                break;
            case 7:
                return;
            case 8:
                matrix.set(this.f40929f);
                matrix.preScale(m100n, m107g);
                break;
        }
        super.setTransform(matrix);
    }

    public void setSuperSurfaceTextureListener(TextureView.SurfaceTextureListener surfaceTextureListener) {
        super.setSurfaceTextureListener(surfaceTextureListener);
    }

    public IOException getIOException() {
        return this.f40931h.f40937f != null ? this.f40931h.f40937f : GifIOException.fromCode(this.f40931h.f40936e.m104j());
    }

    public ImageView.ScaleType getScaleType() {
        return this.f40928e;
    }

    @Override // android.view.TextureView
    public TextureView.SurfaceTextureListener getSurfaceTextureListener() {
        return null;
    }

    @Override // android.view.TextureView
    public Matrix getTransform(Matrix matrix) {
        Matrix matrix2 = matrix;
        if (matrix == null) {
            matrix2 = new Matrix();
        }
        matrix2.set(this.f40929f);
        return matrix2;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        this.f40931h.m72c(this, null);
        super.onDetachedFromWindow();
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof GifViewSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        GifViewSavedState gifViewSavedState = (GifViewSavedState) parcelable;
        super.onRestoreInstanceState(gifViewSavedState.getSuperState());
        this.f40931h.f40938g = gifViewSavedState.f40942d[0];
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        TextureView$SurfaceTextureListenerC9687c textureView$SurfaceTextureListenerC9687c = this.f40931h;
        textureView$SurfaceTextureListenerC9687c.f40938g = textureView$SurfaceTextureListenerC9687c.f40936e.m101m();
        return new GifViewSavedState(super.onSaveInstanceState(), this.f40933j.f40970a ? this.f40931h.f40938g : null);
    }

    public void setFreezesAnimation(boolean z) {
        this.f40933j.f40970a = z;
    }

    public void setImageMatrix(Matrix matrix) {
        setTransform(matrix);
    }

    public void setInputSource(AbstractC9701f abstractC9701f) {
        synchronized (this) {
            setInputSource(abstractC9701f, null);
        }
    }

    public void setInputSource(AbstractC9701f abstractC9701f, AbstractC9686b abstractC9686b) {
        synchronized (this) {
            this.f40931h.m72c(this, abstractC9686b);
            try {
                this.f40931h.join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            this.f40930g = abstractC9701f;
            TextureView$SurfaceTextureListenerC9687c textureView$SurfaceTextureListenerC9687c = new TextureView$SurfaceTextureListenerC9687c(this);
            this.f40931h = textureView$SurfaceTextureListenerC9687c;
            if (abstractC9701f != null) {
                textureView$SurfaceTextureListenerC9687c.start();
            }
        }
    }

    @Override // android.view.TextureView
    public void setOpaque(boolean z) {
        if (z != isOpaque()) {
            super.setOpaque(z);
            setInputSource(this.f40930g);
        }
    }

    public void setScaleType(ImageView.ScaleType scaleType) {
        this.f40928e = scaleType;
        m76h(this.f40931h.f40936e);
    }

    public void setSpeed(float f) {
        this.f40932i = f;
        this.f40931h.f40936e.m114C(f);
    }

    @Override // android.view.TextureView
    public void setSurfaceTexture(SurfaceTexture surfaceTexture) {
        throw new UnsupportedOperationException("Changing SurfaceTexture is not supported");
    }

    @Override // android.view.TextureView
    public void setSurfaceTextureListener(TextureView.SurfaceTextureListener surfaceTextureListener) {
        throw new UnsupportedOperationException("Changing SurfaceTextureListener is not supported");
    }

    @Override // android.view.TextureView
    public void setTransform(Matrix matrix) {
        this.f40929f.set(matrix);
        m76h(this.f40931h.f40936e);
    }
}
