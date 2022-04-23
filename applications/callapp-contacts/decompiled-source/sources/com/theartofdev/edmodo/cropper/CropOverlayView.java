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
    private CropImageView.c A;
    private boolean B;
    private Integer C;

    /* renamed from: a  reason: collision with root package name */
    final e f35030a;

    /* renamed from: b  reason: collision with root package name */
    boolean f35031b;

    /* renamed from: c  reason: collision with root package name */
    int f35032c;

    /* renamed from: d  reason: collision with root package name */
    int f35033d;
    CropImageView.b e;
    final Rect f;
    private ScaleGestureDetector g;
    private boolean h;
    private a i;
    private final RectF j;
    private Paint k;
    private Paint l;
    private Paint m;
    private Paint n;
    private Path o;
    private final float[] p;
    private final RectF q;
    private int r;
    private int s;
    private float t;
    private float u;
    private float v;
    private float w;
    private float x;
    private f y;
    private float z;

    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropOverlayView$a.class */
    public interface a {
        void a(boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropOverlayView$b.class */
    public final class b extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        private b() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public final boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            RectF a2 = CropOverlayView.this.f35030a.a();
            float focusX = scaleGestureDetector.getFocusX();
            float focusY = scaleGestureDetector.getFocusY();
            float currentSpanY = scaleGestureDetector.getCurrentSpanY() / 2.0f;
            float currentSpanX = scaleGestureDetector.getCurrentSpanX() / 2.0f;
            float f = focusY - currentSpanY;
            float f2 = focusX - currentSpanX;
            float f3 = focusX + currentSpanX;
            float f4 = focusY + currentSpanY;
            if (f2 >= f3 || f > f4 || f2 < BitmapDescriptorFactory.HUE_RED || f3 > CropOverlayView.this.f35030a.d() || f < BitmapDescriptorFactory.HUE_RED || f4 > CropOverlayView.this.f35030a.e()) {
                return true;
            }
            a2.set(f2, f, f3, f4);
            CropOverlayView.this.f35030a.a(a2);
            CropOverlayView.this.invalidate();
            return true;
        }
    }

    public CropOverlayView(Context context) {
        this(context, null);
    }

    public CropOverlayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f35030a = new e();
        this.j = new RectF();
        this.o = new Path();
        this.p = new float[8];
        this.q = new RectF();
        this.z = this.f35032c / this.f35033d;
        this.f = new Rect();
    }

    private static Paint a(float f, int i) {
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            return null;
        }
        Paint paint = new Paint();
        paint.setColor(i);
        paint.setStrokeWidth(f);
        paint.setStyle(Paint.Style.STROKE);
        paint.setAntiAlias(true);
        return paint;
    }

    private void a(Canvas canvas) {
        if (this.m != null) {
            Paint paint = this.k;
            float strokeWidth = paint != null ? paint.getStrokeWidth() : BitmapDescriptorFactory.HUE_RED;
            RectF a2 = this.f35030a.a();
            a2.inset(strokeWidth, strokeWidth);
            float width = a2.width() / 3.0f;
            float height = a2.height() / 3.0f;
            if (this.e == CropImageView.b.OVAL) {
                float width2 = (a2.width() / 2.0f) - strokeWidth;
                float height2 = (a2.height() / 2.0f) - strokeWidth;
                float f = a2.left + width;
                float f2 = a2.right - width;
                float sin = (float) (height2 * Math.sin(Math.acos((width2 - width) / width2)));
                canvas.drawLine(f, (a2.top + height2) - sin, f, (a2.bottom - height2) + sin, this.m);
                canvas.drawLine(f2, (a2.top + height2) - sin, f2, (a2.bottom - height2) + sin, this.m);
                float f3 = a2.top + height;
                float f4 = a2.bottom - height;
                float cos = (float) (width2 * Math.cos(Math.asin((height2 - height) / height2)));
                canvas.drawLine((a2.left + width2) - cos, f3, (a2.right - width2) + cos, f3, this.m);
                canvas.drawLine((a2.left + width2) - cos, f4, (a2.right - width2) + cos, f4, this.m);
                return;
            }
            float f5 = a2.left + width;
            float f6 = a2.right - width;
            canvas.drawLine(f5, a2.top, f5, a2.bottom, this.m);
            canvas.drawLine(f6, a2.top, f6, a2.bottom, this.m);
            float f7 = a2.top + height;
            float f8 = a2.bottom - height;
            canvas.drawLine(a2.left, f7, a2.right, f7, this.m);
            canvas.drawLine(a2.left, f8, a2.right, f8, this.m);
        }
    }

    private void a(RectF rectF) {
        if (rectF.width() < this.f35030a.b()) {
            float b2 = (this.f35030a.b() - rectF.width()) / 2.0f;
            rectF.left -= b2;
            rectF.right += b2;
        }
        if (rectF.height() < this.f35030a.c()) {
            float c2 = (this.f35030a.c() - rectF.height()) / 2.0f;
            rectF.top -= c2;
            rectF.bottom += c2;
        }
        if (rectF.width() > this.f35030a.d()) {
            float width = (rectF.width() - this.f35030a.d()) / 2.0f;
            rectF.left += width;
            rectF.right -= width;
        }
        if (rectF.height() > this.f35030a.e()) {
            float height = (rectF.height() - this.f35030a.e()) / 2.0f;
            rectF.top += height;
            rectF.bottom -= height;
        }
        b(rectF);
        if (this.q.width() > BitmapDescriptorFactory.HUE_RED && this.q.height() > BitmapDescriptorFactory.HUE_RED) {
            float max = Math.max(this.q.left, (float) BitmapDescriptorFactory.HUE_RED);
            float max2 = Math.max(this.q.top, (float) BitmapDescriptorFactory.HUE_RED);
            float min = Math.min(this.q.right, getWidth());
            float min2 = Math.min(this.q.bottom, getHeight());
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
        if (this.f35031b && Math.abs(rectF.width() - (rectF.height() * this.z)) > 0.1d) {
            if (rectF.width() > rectF.height() * this.z) {
                float abs = Math.abs((rectF.height() * this.z) - rectF.width()) / 2.0f;
                rectF.left += abs;
                rectF.right -= abs;
                return;
            }
            float abs2 = Math.abs((rectF.width() / this.z) - rectF.height()) / 2.0f;
            rectF.top += abs2;
            rectF.bottom -= abs2;
        }
    }

    private void b(boolean z) {
        try {
            a aVar = this.i;
            if (aVar != null) {
                aVar.a(z);
            }
        } catch (Exception e) {
            Log.e("AIC", "Exception in crop window changed", e);
        }
    }

    private boolean b(RectF rectF) {
        float a2 = c.a(this.p);
        float b2 = c.b(this.p);
        float c2 = c.c(this.p);
        float d2 = c.d(this.p);
        if (!d()) {
            this.q.set(a2, b2, c2, d2);
            return false;
        }
        float[] fArr = this.p;
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
            f17 = a2;
        }
        float max = Math.max(a2, f17);
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
            f21 = c2;
        }
        float min = Math.min(c2, f21);
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
        float max4 = Math.max(b2, Math.max((f7 * max3) + f9, (f8 * min3) + f10));
        float min4 = Math.min(d2, Math.min((f8 * max3) + f12, (f7 * min3) + f11));
        this.q.left = max3;
        this.q.top = max4;
        this.q.right = min3;
        this.q.bottom = min4;
        return true;
    }

    private void c() {
        float max = Math.max(c.a(this.p), (float) BitmapDescriptorFactory.HUE_RED);
        float max2 = Math.max(c.b(this.p), (float) BitmapDescriptorFactory.HUE_RED);
        float min = Math.min(c.c(this.p), getWidth());
        float min2 = Math.min(c.d(this.p), getHeight());
        if (min > max && min2 > max2) {
            RectF rectF = new RectF();
            this.B = true;
            float f = this.v;
            float f2 = min - max;
            float f3 = f * f2;
            float f4 = min2 - max2;
            float f5 = f * f4;
            if (this.f.width() > 0 && this.f.height() > 0) {
                rectF.left = (this.f.left / this.f35030a.j) + max;
                rectF.top = (this.f.top / this.f35030a.k) + max2;
                rectF.right = rectF.left + (this.f.width() / this.f35030a.j);
                rectF.bottom = rectF.top + (this.f.height() / this.f35030a.k);
                rectF.left = Math.max(max, rectF.left);
                rectF.top = Math.max(max2, rectF.top);
                rectF.right = Math.min(min, rectF.right);
                rectF.bottom = Math.min(min2, rectF.bottom);
            } else if (!this.f35031b || min <= max || min2 <= max2) {
                rectF.left = max + f3;
                rectF.top = max2 + f5;
                rectF.right = min - f3;
                rectF.bottom = min2 - f5;
            } else if (f2 / f4 > this.z) {
                rectF.top = max2 + f5;
                rectF.bottom = min2 - f5;
                float width = getWidth() / 2.0f;
                this.z = this.f35032c / this.f35033d;
                float max3 = Math.max(this.f35030a.b(), rectF.height() * this.z) / 2.0f;
                rectF.left = width - max3;
                rectF.right = width + max3;
            } else {
                rectF.left = max + f3;
                rectF.right = min - f3;
                float height = getHeight() / 2.0f;
                float max4 = Math.max(this.f35030a.c(), rectF.width() / this.z) / 2.0f;
                rectF.top = height - max4;
                rectF.bottom = height + max4;
            }
            a(rectF);
            this.f35030a.a(rectF);
        }
    }

    private boolean d() {
        float[] fArr = this.p;
        return (fArr[0] == fArr[6] || fArr[1] == fArr[7]) ? false : true;
    }

    public final void a() {
        RectF a2 = this.f35030a.a();
        a(a2);
        this.f35030a.a(a2);
    }

    public final boolean a(boolean z) {
        if (this.h == z) {
            return false;
        }
        this.h = z;
        if (!z || this.g != null) {
            return true;
        }
        this.g = new ScaleGestureDetector(getContext(), new b());
        return true;
    }

    public final void b() {
        if (this.B) {
            setCropWindowRect(c.f35052b);
            c();
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
        if ((r0.right + r0) > r0.right) goto L_0x00f7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x014d, code lost:
        if ((r0.bottom + r0) > r0.bottom) goto L_0x0150;
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
        if (i <= 0) {
            throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
        } else if (this.f35032c != i) {
            this.f35032c = i;
            this.z = i / this.f35033d;
            if (this.B) {
                c();
                invalidate();
            }
        }
    }

    public void setAspectRatioY(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
        } else if (this.f35033d != i) {
            this.f35033d = i;
            this.z = this.f35032c / i;
            if (this.B) {
                c();
                invalidate();
            }
        }
    }

    public void setBounds(float[] fArr, int i, int i2) {
        if (fArr == null || !Arrays.equals(this.p, fArr)) {
            if (fArr == null) {
                Arrays.fill(this.p, (float) BitmapDescriptorFactory.HUE_RED);
            } else {
                System.arraycopy(fArr, 0, this.p, 0, fArr.length);
            }
            this.r = i;
            this.s = i2;
            RectF a2 = this.f35030a.a();
            if (a2.width() == BitmapDescriptorFactory.HUE_RED || a2.height() == BitmapDescriptorFactory.HUE_RED) {
                c();
            }
        }
    }

    public void setCropShape(CropImageView.b bVar) {
        if (this.e != bVar) {
            this.e = bVar;
            if (Build.VERSION.SDK_INT <= 17) {
                if (this.e == CropImageView.b.OVAL) {
                    Integer valueOf = Integer.valueOf(getLayerType());
                    this.C = valueOf;
                    if (valueOf.intValue() != 1) {
                        setLayerType(1, null);
                    } else {
                        this.C = null;
                    }
                } else {
                    Integer num = this.C;
                    if (num != null) {
                        setLayerType(num.intValue(), null);
                        this.C = null;
                    }
                }
            }
            invalidate();
        }
    }

    public void setCropWindowChangeListener(a aVar) {
        this.i = aVar;
    }

    public void setCropWindowLimits(float f, float f2, float f3, float f4) {
        e eVar = this.f35030a;
        eVar.f35066d = f;
        eVar.e = f2;
        eVar.j = f3;
        eVar.k = f4;
    }

    public void setCropWindowRect(RectF rectF) {
        this.f35030a.a(rectF);
    }

    public void setFixedAspectRatio(boolean z) {
        if (this.f35031b != z) {
            this.f35031b = z;
            if (this.B) {
                c();
                invalidate();
            }
        }
    }

    public void setGuidelines(CropImageView.c cVar) {
        if (this.A != cVar) {
            this.A = cVar;
            if (this.B) {
                invalidate();
            }
        }
    }

    public void setInitialAttributeValues(CropImageOptions cropImageOptions) {
        e eVar = this.f35030a;
        eVar.f35064b = cropImageOptions.minCropWindowWidth;
        eVar.f35065c = cropImageOptions.minCropWindowHeight;
        eVar.f = cropImageOptions.minCropResultWidth;
        eVar.g = cropImageOptions.minCropResultHeight;
        eVar.h = cropImageOptions.maxCropResultWidth;
        eVar.i = cropImageOptions.maxCropResultHeight;
        setCropShape(cropImageOptions.cropShape);
        setSnapRadius(cropImageOptions.snapRadius);
        setGuidelines(cropImageOptions.guidelines);
        setFixedAspectRatio(cropImageOptions.fixAspectRatio);
        setAspectRatioX(cropImageOptions.aspectRatioX);
        setAspectRatioY(cropImageOptions.aspectRatioY);
        a(cropImageOptions.multiTouchEnabled);
        this.w = cropImageOptions.touchRadius;
        this.v = cropImageOptions.initialCropWindowPaddingRatio;
        this.k = a(cropImageOptions.borderLineThickness, cropImageOptions.borderLineColor);
        this.t = cropImageOptions.borderCornerOffset;
        this.u = cropImageOptions.borderCornerLength;
        this.l = a(cropImageOptions.borderCornerThickness, cropImageOptions.borderCornerColor);
        this.m = a(cropImageOptions.guidelinesThickness, cropImageOptions.guidelinesColor);
        int i = cropImageOptions.backgroundColor;
        Paint paint = new Paint();
        paint.setColor(i);
        this.n = paint;
    }

    public void setInitialCropWindowRect(Rect rect) {
        Rect rect2 = this.f;
        if (rect == null) {
            rect = c.f35051a;
        }
        rect2.set(rect);
        if (this.B) {
            c();
            invalidate();
            b(false);
        }
    }

    public void setMaxCropResultSize(int i, int i2) {
        e eVar = this.f35030a;
        eVar.h = i;
        eVar.i = i2;
    }

    public void setMinCropResultSize(int i, int i2) {
        e eVar = this.f35030a;
        eVar.f = i;
        eVar.g = i2;
    }

    public void setSnapRadius(float f) {
        this.x = f;
    }
}
