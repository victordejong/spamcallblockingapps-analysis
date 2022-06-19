package com.theartofdev.edmodo.cropper;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ScaleGestureDetector;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.theartofdev.edmodo.cropper.CropImageView;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropOverlayView.class */
public class CropOverlayView extends View {

    /* renamed from: A */
    private CropImageView.EnumC17168c f60790A;

    /* renamed from: B */
    private boolean f60791B;

    /* renamed from: C */
    private Integer f60792C;

    /* renamed from: a */
    final C17187e f60793a;

    /* renamed from: b */
    boolean f60794b;

    /* renamed from: c */
    int f60795c;

    /* renamed from: d */
    int f60796d;

    /* renamed from: e */
    CropImageView.EnumC17167b f60797e;

    /* renamed from: f */
    final Rect f60798f;

    /* renamed from: g */
    private ScaleGestureDetector f60799g;

    /* renamed from: h */
    private boolean f60800h;

    /* renamed from: i */
    private AbstractC17177a f60801i;

    /* renamed from: j */
    private final RectF f60802j;

    /* renamed from: k */
    private Paint f60803k;

    /* renamed from: l */
    private Paint f60804l;

    /* renamed from: m */
    private Paint f60805m;

    /* renamed from: n */
    private Paint f60806n;

    /* renamed from: o */
    private Path f60807o;

    /* renamed from: p */
    private final float[] f60808p;

    /* renamed from: q */
    private final RectF f60809q;

    /* renamed from: r */
    private int f60810r;

    /* renamed from: s */
    private int f60811s;

    /* renamed from: t */
    private float f60812t;

    /* renamed from: u */
    private float f60813u;

    /* renamed from: v */
    private float f60814v;

    /* renamed from: w */
    private float f60815w;

    /* renamed from: x */
    private float f60816x;

    /* renamed from: y */
    private C17188f f60817y;

    /* renamed from: z */
    private float f60818z;

    /* renamed from: com.theartofdev.edmodo.cropper.CropOverlayView$a */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropOverlayView$a.class */
    public interface AbstractC17177a {
        /* renamed from: a */
        void mo5784a(boolean z);
    }

    /* renamed from: com.theartofdev.edmodo.cropper.CropOverlayView$b */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropOverlayView$b.class */
    public final class C17178b extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        private C17178b() {
            CropOverlayView.this = r4;
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public final boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            RectF m5750a = CropOverlayView.this.f60793a.m5750a();
            float focusX = scaleGestureDetector.getFocusX();
            float focusY = scaleGestureDetector.getFocusY();
            float currentSpanY = scaleGestureDetector.getCurrentSpanY() / 2.0f;
            float currentSpanX = scaleGestureDetector.getCurrentSpanX() / 2.0f;
            float f = focusY - currentSpanY;
            float f2 = focusX - currentSpanX;
            float f3 = focusX + currentSpanX;
            float f4 = focusY + currentSpanY;
            if (f2 >= f3 || f > f4 || f2 < BitmapDescriptorFactory.HUE_RED || f3 > CropOverlayView.this.f60793a.m5742d() || f < BitmapDescriptorFactory.HUE_RED || f4 > CropOverlayView.this.f60793a.m5741e()) {
                return true;
            }
            m5750a.set(f2, f, f3, f4);
            CropOverlayView.this.f60793a.m5747a(m5750a);
            CropOverlayView.this.invalidate();
            return true;
        }
    }

    public CropOverlayView(Context context) {
        this(context, null);
    }

    public CropOverlayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f60793a = new C17187e();
        this.f60802j = new RectF();
        this.f60807o = new Path();
        this.f60808p = new float[8];
        this.f60809q = new RectF();
        this.f60818z = this.f60795c / this.f60796d;
        this.f60798f = new Rect();
    }

    /* renamed from: a */
    private static Paint m5794a(float f, int i) {
        if (f > BitmapDescriptorFactory.HUE_RED) {
            Paint paint = new Paint();
            paint.setColor(i);
            paint.setStrokeWidth(f);
            paint.setStyle(Paint.Style.STROKE);
            paint.setAntiAlias(true);
            return paint;
        }
        return null;
    }

    /* renamed from: a */
    private void m5793a(Canvas canvas) {
        if (this.f60805m != null) {
            Paint paint = this.f60803k;
            float strokeWidth = paint != null ? paint.getStrokeWidth() : 0.0f;
            RectF m5750a = this.f60793a.m5750a();
            m5750a.inset(strokeWidth, strokeWidth);
            float width = m5750a.width() / 3.0f;
            float height = m5750a.height() / 3.0f;
            if (this.f60797e != CropImageView.EnumC17167b.OVAL) {
                float f = m5750a.left + width;
                float f2 = m5750a.right - width;
                canvas.drawLine(f, m5750a.top, f, m5750a.bottom, this.f60805m);
                canvas.drawLine(f2, m5750a.top, f2, m5750a.bottom, this.f60805m);
                float f3 = m5750a.top + height;
                float f4 = m5750a.bottom - height;
                canvas.drawLine(m5750a.left, f3, m5750a.right, f3, this.f60805m);
                canvas.drawLine(m5750a.left, f4, m5750a.right, f4, this.f60805m);
                return;
            }
            float width2 = (m5750a.width() / 2.0f) - strokeWidth;
            float height2 = (m5750a.height() / 2.0f) - strokeWidth;
            float f5 = m5750a.left + width;
            float f6 = m5750a.right - width;
            float sin = (float) (height2 * Math.sin(Math.acos((width2 - width) / width2)));
            canvas.drawLine(f5, (m5750a.top + height2) - sin, f5, (m5750a.bottom - height2) + sin, this.f60805m);
            canvas.drawLine(f6, (m5750a.top + height2) - sin, f6, (m5750a.bottom - height2) + sin, this.f60805m);
            float f7 = m5750a.top + height;
            float f8 = m5750a.bottom - height;
            float cos = (float) (width2 * Math.cos(Math.asin((height2 - height) / height2)));
            canvas.drawLine((m5750a.left + width2) - cos, f7, (m5750a.right - width2) + cos, f7, this.f60805m);
            canvas.drawLine((m5750a.left + width2) - cos, f8, (m5750a.right - width2) + cos, f8, this.f60805m);
        }
    }

    /* renamed from: a */
    private void m5792a(RectF rectF) {
        if (rectF.width() < this.f60793a.m5746b()) {
            float m5746b = (this.f60793a.m5746b() - rectF.width()) / 2.0f;
            rectF.left -= m5746b;
            rectF.right += m5746b;
        }
        if (rectF.height() < this.f60793a.m5744c()) {
            float m5744c = (this.f60793a.m5744c() - rectF.height()) / 2.0f;
            rectF.top -= m5744c;
            rectF.bottom += m5744c;
        }
        if (rectF.width() > this.f60793a.m5742d()) {
            float width = (rectF.width() - this.f60793a.m5742d()) / 2.0f;
            rectF.left += width;
            rectF.right -= width;
        }
        if (rectF.height() > this.f60793a.m5741e()) {
            float height = (rectF.height() - this.f60793a.m5741e()) / 2.0f;
            rectF.top += height;
            rectF.bottom -= height;
        }
        m5788b(rectF);
        if (this.f60809q.width() > BitmapDescriptorFactory.HUE_RED && this.f60809q.height() > BitmapDescriptorFactory.HUE_RED) {
            float max = Math.max(this.f60809q.left, (float) BitmapDescriptorFactory.HUE_RED);
            float max2 = Math.max(this.f60809q.top, (float) BitmapDescriptorFactory.HUE_RED);
            float min = Math.min(this.f60809q.right, getWidth());
            float min2 = Math.min(this.f60809q.bottom, getHeight());
            if (rectF.left < max) {
                rectF.left = max;
            }
            if (rectF.top < max2) {
                rectF.top = max2;
            }
            if (rectF.right > min) {
                rectF.right = min;
            }
            if (rectF.bottom > min2) {
                rectF.bottom = min2;
            }
        }
        if (!this.f60794b || Math.abs(rectF.width() - (rectF.height() * this.f60818z)) <= 0.1d) {
            return;
        }
        if (rectF.width() > rectF.height() * this.f60818z) {
            float abs = Math.abs((rectF.height() * this.f60818z) - rectF.width()) / 2.0f;
            rectF.left += abs;
            rectF.right -= abs;
            return;
        }
        float abs2 = Math.abs((rectF.width() / this.f60818z) - rectF.height()) / 2.0f;
        rectF.top += abs2;
        rectF.bottom -= abs2;
    }

    /* renamed from: b */
    private void m5787b(boolean z) {
        try {
            AbstractC17177a abstractC17177a = this.f60801i;
            if (abstractC17177a == null) {
                return;
            }
            abstractC17177a.mo5784a(z);
        } catch (Exception e) {
            Log.e("AIC", "Exception in crop window changed", e);
        }
    }

    /* renamed from: b */
    private boolean m5788b(RectF rectF) {
        float m5761a = C17183c.m5761a(this.f60808p);
        float m5759b = C17183c.m5759b(this.f60808p);
        float m5758c = C17183c.m5758c(this.f60808p);
        float m5757d = C17183c.m5757d(this.f60808p);
        if (!m5785d()) {
            this.f60809q.set(m5761a, m5759b, m5758c, m5757d);
            return false;
        }
        float[] fArr = this.f60808p;
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[4];
        float f4 = fArr[5];
        float f5 = fArr[6];
        float f6 = fArr[7];
        if (fArr[7] < fArr[1]) {
            if (fArr[1] < fArr[3]) {
                f = fArr[6];
                f2 = fArr[7];
                f3 = fArr[2];
                f4 = fArr[3];
                f5 = fArr[4];
                f6 = fArr[5];
            } else {
                f = fArr[4];
                f2 = fArr[5];
                f3 = fArr[0];
                f4 = fArr[1];
                f5 = fArr[2];
                f6 = fArr[3];
            }
        } else if (fArr[1] > fArr[3]) {
            f = fArr[2];
            f2 = fArr[3];
            f3 = fArr[6];
            f4 = fArr[7];
            f5 = fArr[0];
            f6 = fArr[1];
        }
        float f7 = (f6 - f2) / (f5 - f);
        float f8 = (-1.0f) / f7;
        float f9 = f2 - (f7 * f);
        float f10 = f2 - (f * f8);
        float f11 = f4 - (f7 * f3);
        float f12 = f4 - (f3 * f8);
        float centerY = (rectF.centerY() - rectF.top) / (rectF.centerX() - rectF.left);
        float f13 = -centerY;
        float f14 = rectF.top - (rectF.left * centerY);
        float f15 = rectF.top - (rectF.right * f13);
        float f16 = f7 - centerY;
        float f17 = (f14 - f9) / f16;
        if (f17 >= rectF.right) {
            f17 = m5761a;
        }
        float max = Math.max(m5761a, f17);
        float f18 = (f14 - f10) / (f8 - centerY);
        if (f18 >= rectF.right) {
            f18 = max;
        }
        float max2 = Math.max(max, f18);
        float f19 = f8 - f13;
        float f20 = (f15 - f12) / f19;
        if (f20 >= rectF.right) {
            f20 = max2;
        }
        float max3 = Math.max(max2, f20);
        float f21 = (f15 - f10) / f19;
        if (f21 <= rectF.left) {
            f21 = m5758c;
        }
        float min = Math.min(m5758c, f21);
        float f22 = (f15 - f11) / (f7 - f13);
        if (f22 <= rectF.left) {
            f22 = min;
        }
        float min2 = Math.min(min, f22);
        float f23 = (f14 - f11) / f16;
        if (f23 <= rectF.left) {
            f23 = min2;
        }
        float min3 = Math.min(min2, f23);
        float max4 = Math.max(m5759b, Math.max((f7 * max3) + f9, (f8 * min3) + f10));
        float min4 = Math.min(m5757d, Math.min((f8 * max3) + f12, (f7 * min3) + f11));
        this.f60809q.left = max3;
        this.f60809q.top = max4;
        this.f60809q.right = min3;
        this.f60809q.bottom = min4;
        return true;
    }

    /* renamed from: c */
    private void m5786c() {
        float max = Math.max(C17183c.m5761a(this.f60808p), (float) BitmapDescriptorFactory.HUE_RED);
        float max2 = Math.max(C17183c.m5759b(this.f60808p), (float) BitmapDescriptorFactory.HUE_RED);
        float min = Math.min(C17183c.m5758c(this.f60808p), getWidth());
        float min2 = Math.min(C17183c.m5757d(this.f60808p), getHeight());
        if (min <= max || min2 <= max2) {
            return;
        }
        RectF rectF = new RectF();
        this.f60791B = true;
        float f = this.f60814v;
        float f2 = min - max;
        float f3 = f * f2;
        float f4 = min2 - max2;
        float f5 = f * f4;
        if (this.f60798f.width() > 0 && this.f60798f.height() > 0) {
            rectF.left = (this.f60798f.left / this.f60793a.f60885j) + max;
            rectF.top = (this.f60798f.top / this.f60793a.f60886k) + max2;
            rectF.right = rectF.left + (this.f60798f.width() / this.f60793a.f60885j);
            rectF.bottom = rectF.top + (this.f60798f.height() / this.f60793a.f60886k);
            rectF.left = Math.max(max, rectF.left);
            rectF.top = Math.max(max2, rectF.top);
            rectF.right = Math.min(min, rectF.right);
            rectF.bottom = Math.min(min2, rectF.bottom);
        } else if (!this.f60794b || min <= max || min2 <= max2) {
            rectF.left = max + f3;
            rectF.top = max2 + f5;
            rectF.right = min - f3;
            rectF.bottom = min2 - f5;
        } else if (f2 / f4 > this.f60818z) {
            rectF.top = max2 + f5;
            rectF.bottom = min2 - f5;
            float width = getWidth() / 2.0f;
            this.f60818z = this.f60795c / this.f60796d;
            float max3 = Math.max(this.f60793a.m5746b(), rectF.height() * this.f60818z) / 2.0f;
            rectF.left = width - max3;
            rectF.right = width + max3;
        } else {
            rectF.left = max + f3;
            rectF.right = min - f3;
            float height = getHeight() / 2.0f;
            float max4 = Math.max(this.f60793a.m5744c(), rectF.width() / this.f60818z) / 2.0f;
            rectF.top = height - max4;
            rectF.bottom = height + max4;
        }
        m5792a(rectF);
        this.f60793a.m5747a(rectF);
    }

    /* renamed from: d */
    private boolean m5785d() {
        float[] fArr = this.f60808p;
        return (fArr[0] == fArr[6] || fArr[1] == fArr[7]) ? false : true;
    }

    /* renamed from: a */
    public final void m5795a() {
        RectF m5750a = this.f60793a.m5750a();
        m5792a(m5750a);
        this.f60793a.m5747a(m5750a);
    }

    /* renamed from: a */
    public final boolean m5790a(boolean z) {
        if (this.f60800h != z) {
            this.f60800h = z;
            if (!z || this.f60799g != null) {
                return true;
            }
            this.f60799g = new ScaleGestureDetector(getContext(), new C17178b());
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public final void m5789b() {
        if (this.f60791B) {
            setCropWindowRect(C17183c.f60855b);
            m5786c();
            invalidate();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onDraw(android.graphics.Canvas r8) {
        /*
            Method dump skipped, instructions count: 999
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.theartofdev.edmodo.cropper.CropOverlayView.onDraw(android.graphics.Canvas):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00f4, code lost:
        if ((r0.right + r0) > r0.right) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x014d, code lost:
        if ((r0.bottom + r0) > r0.bottom) goto L40;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 1872
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.theartofdev.edmodo.cropper.CropOverlayView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setAspectRatioX(int i) {
        if (i > 0) {
            if (this.f60795c == i) {
                return;
            }
            this.f60795c = i;
            this.f60818z = i / this.f60796d;
            if (!this.f60791B) {
                return;
            }
            m5786c();
            invalidate();
            return;
        }
        throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
    }

    public void setAspectRatioY(int i) {
        if (i > 0) {
            if (this.f60796d == i) {
                return;
            }
            this.f60796d = i;
            this.f60818z = this.f60795c / i;
            if (!this.f60791B) {
                return;
            }
            m5786c();
            invalidate();
            return;
        }
        throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
    }

    public void setBounds(float[] fArr, int i, int i2) {
        if (fArr == null || !Arrays.equals(this.f60808p, fArr)) {
            if (fArr == null) {
                Arrays.fill(this.f60808p, (float) BitmapDescriptorFactory.HUE_RED);
            } else {
                System.arraycopy(fArr, 0, this.f60808p, 0, fArr.length);
            }
            this.f60810r = i;
            this.f60811s = i2;
            RectF m5750a = this.f60793a.m5750a();
            if (m5750a.width() != BitmapDescriptorFactory.HUE_RED && m5750a.height() != BitmapDescriptorFactory.HUE_RED) {
                return;
            }
            m5786c();
        }
    }

    public void setCropShape(CropImageView.EnumC17167b enumC17167b) {
        if (this.f60797e != enumC17167b) {
            this.f60797e = enumC17167b;
            if (Build.VERSION.SDK_INT <= 17) {
                if (this.f60797e == CropImageView.EnumC17167b.OVAL) {
                    Integer valueOf = Integer.valueOf(getLayerType());
                    this.f60792C = valueOf;
                    if (valueOf.intValue() != 1) {
                        setLayerType(1, null);
                    } else {
                        this.f60792C = null;
                    }
                } else {
                    Integer num = this.f60792C;
                    if (num != null) {
                        setLayerType(num.intValue(), null);
                        this.f60792C = null;
                    }
                }
            }
            invalidate();
        }
    }

    public void setCropWindowChangeListener(AbstractC17177a abstractC17177a) {
        this.f60801i = abstractC17177a;
    }

    public void setCropWindowLimits(float f, float f2, float f3, float f4) {
        C17187e c17187e = this.f60793a;
        c17187e.f60879d = f;
        c17187e.f60880e = f2;
        c17187e.f60885j = f3;
        c17187e.f60886k = f4;
    }

    public void setCropWindowRect(RectF rectF) {
        this.f60793a.m5747a(rectF);
    }

    public void setFixedAspectRatio(boolean z) {
        if (this.f60794b != z) {
            this.f60794b = z;
            if (!this.f60791B) {
                return;
            }
            m5786c();
            invalidate();
        }
    }

    public void setGuidelines(CropImageView.EnumC17168c enumC17168c) {
        if (this.f60790A != enumC17168c) {
            this.f60790A = enumC17168c;
            if (!this.f60791B) {
                return;
            }
            invalidate();
        }
    }

    public void setInitialAttributeValues(CropImageOptions cropImageOptions) {
        C17187e c17187e = this.f60793a;
        c17187e.f60877b = cropImageOptions.minCropWindowWidth;
        c17187e.f60878c = cropImageOptions.minCropWindowHeight;
        c17187e.f60881f = cropImageOptions.minCropResultWidth;
        c17187e.f60882g = cropImageOptions.minCropResultHeight;
        c17187e.f60883h = cropImageOptions.maxCropResultWidth;
        c17187e.f60884i = cropImageOptions.maxCropResultHeight;
        setCropShape(cropImageOptions.cropShape);
        setSnapRadius(cropImageOptions.snapRadius);
        setGuidelines(cropImageOptions.guidelines);
        setFixedAspectRatio(cropImageOptions.fixAspectRatio);
        setAspectRatioX(cropImageOptions.aspectRatioX);
        setAspectRatioY(cropImageOptions.aspectRatioY);
        m5790a(cropImageOptions.multiTouchEnabled);
        this.f60815w = cropImageOptions.touchRadius;
        this.f60814v = cropImageOptions.initialCropWindowPaddingRatio;
        this.f60803k = m5794a(cropImageOptions.borderLineThickness, cropImageOptions.borderLineColor);
        this.f60812t = cropImageOptions.borderCornerOffset;
        this.f60813u = cropImageOptions.borderCornerLength;
        this.f60804l = m5794a(cropImageOptions.borderCornerThickness, cropImageOptions.borderCornerColor);
        this.f60805m = m5794a(cropImageOptions.guidelinesThickness, cropImageOptions.guidelinesColor);
        int i = cropImageOptions.backgroundColor;
        Paint paint = new Paint();
        paint.setColor(i);
        this.f60806n = paint;
    }

    public void setInitialCropWindowRect(Rect rect) {
        Rect rect2 = this.f60798f;
        if (rect == null) {
            rect = C17183c.f60854a;
        }
        rect2.set(rect);
        if (this.f60791B) {
            m5786c();
            invalidate();
            m5787b(false);
        }
    }

    public void setMaxCropResultSize(int i, int i2) {
        C17187e c17187e = this.f60793a;
        c17187e.f60883h = i;
        c17187e.f60884i = i2;
    }

    public void setMinCropResultSize(int i, int i2) {
        C17187e c17187e = this.f60793a;
        c17187e.f60881f = i;
        c17187e.f60882g = i2;
    }

    public void setSnapRadius(float f) {
        this.f60816x = f;
    }
}
