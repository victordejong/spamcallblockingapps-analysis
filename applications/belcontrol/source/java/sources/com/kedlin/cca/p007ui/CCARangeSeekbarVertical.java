package com.kedlin.cca.p007ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ImageView;
import com.millennialmedia.InterstitialAd;
import java.lang.Number;
import java.math.BigDecimal;
@SuppressLint({"ViewConstructor"})
/* renamed from: com.kedlin.cca.ui.CCARangeSeekbarVertical */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CCARangeSeekbarVertical.class */
public class CCARangeSeekbarVertical<T extends Number> extends ImageView {

    /* renamed from: D */
    public static final int f3794D;

    /* renamed from: E */
    public static final int f3795E;

    /* renamed from: B */
    public int f3797B;

    /* renamed from: C */
    public boolean f3798C;

    /* renamed from: b */
    public final Bitmap f3800b;

    /* renamed from: h */
    public final float f3805h;

    /* renamed from: j */
    public final float f3806j;

    /* renamed from: k */
    public final float f3807k;

    /* renamed from: l */
    public final float f3808l;

    /* renamed from: m */
    public final T f3809m;

    /* renamed from: n */
    public final T f3810n;

    /* renamed from: o */
    public final EnumC0653b f3811o;

    /* renamed from: p */
    public final double f3812p;

    /* renamed from: q */
    public final double f3813q;

    /* renamed from: r */
    public final double f3814r;

    /* renamed from: u */
    public double f3817u;

    /* renamed from: x */
    public AbstractC0654c<T> f3820x;

    /* renamed from: y */
    public RectF f3821y;

    /* renamed from: z */
    public float f3822z;

    /* renamed from: a */
    public final Paint f3799a = new Paint(1);

    /* renamed from: c */
    public final Bitmap f3801c = BitmapFactory.decodeResource(getResources(), 2131231574);

    /* renamed from: d */
    public final Bitmap f3802d = BitmapFactory.decodeResource(getResources(), 2131231576);

    /* renamed from: f */
    public final Bitmap f3803f = BitmapFactory.decodeResource(getResources(), 2131231575);

    /* renamed from: g */
    public final Bitmap f3804g = BitmapFactory.decodeResource(getResources(), 2131231577);

    /* renamed from: s */
    public double f3815s = 0.0d;

    /* renamed from: t */
    public double f3816t = 1.0d;

    /* renamed from: v */
    public EnumC0655d f3818v = null;

    /* renamed from: w */
    public boolean f3819w = false;

    /* renamed from: A */
    public int f3796A = 255;

    /* renamed from: com.kedlin.cca.ui.CCARangeSeekbarVertical$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CCARangeSeekbarVertical$a.class */
    public static /* synthetic */ class C0652a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3823a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0653b.values().length];
            f3823a = iArr;
            try {
                iArr[EnumC0653b.LONG.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3823a[EnumC0653b.DOUBLE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3823a[EnumC0653b.INTEGER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3823a[EnumC0653b.FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f3823a[EnumC0653b.SHORT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f3823a[EnumC0653b.BYTE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f3823a[EnumC0653b.BIG_DECIMAL.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.kedlin.cca.ui.CCARangeSeekbarVertical$b */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CCARangeSeekbarVertical$b.class */
    public enum EnumC0653b {
        LONG,
        DOUBLE,
        INTEGER,
        FLOAT,
        SHORT,
        BYTE,
        BIG_DECIMAL;

        /* renamed from: a */
        public static <E extends Number> EnumC0653b m4291a(E e) {
            if (e instanceof Long) {
                return LONG;
            }
            if (e instanceof Double) {
                return DOUBLE;
            }
            if (e instanceof Integer) {
                return INTEGER;
            }
            if (e instanceof Float) {
                return FLOAT;
            }
            if (e instanceof Short) {
                return SHORT;
            }
            if (e instanceof Byte) {
                return BYTE;
            }
            if (e instanceof BigDecimal) {
                return BIG_DECIMAL;
            }
            throw new IllegalArgumentException("Number class '" + e.getClass().getName() + "' is not supported");
        }

        /* renamed from: b */
        public Number m4290b(double d) {
            switch (C0652a.f3823a[ordinal()]) {
                case 1:
                    return Long.valueOf((long) d);
                case 2:
                    return Double.valueOf(d);
                case 3:
                    return Integer.valueOf((int) d);
                case 4:
                    return Float.valueOf((float) d);
                case 5:
                    return Short.valueOf((short) d);
                case 6:
                    return Byte.valueOf((byte) d);
                case 7:
                    return BigDecimal.valueOf(d);
                default:
                    throw new InstantiationError("can't convert " + this + " to a Number object");
            }
        }
    }

    /* renamed from: com.kedlin.cca.ui.CCARangeSeekbarVertical$c */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CCARangeSeekbarVertical$c.class */
    public interface AbstractC0654c<T> {
        /* renamed from: a */
        void m4289a(CCARangeSeekbarVertical<?> cCARangeSeekbarVertical, T t, T t2, EnumC0655d enumC0655d);
    }

    /* renamed from: com.kedlin.cca.ui.CCARangeSeekbarVertical$d */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CCARangeSeekbarVertical$d.class */
    public enum EnumC0655d {
        MIN,
        MAX
    }

    static {
        int argb = Color.argb(255, 220, 167, 167);
        f3794D = argb;
        Color.argb(255, (int) InterstitialAd.InterstitialErrorStatus.NOT_LOADED, 220, 167);
        f3795E = argb;
    }

    public CCARangeSeekbarVertical(T t, T t2, T t3, Context context) {
        super(context);
        Bitmap decodeResource = BitmapFactory.decodeResource(getResources(), 2131231573);
        this.f3800b = decodeResource;
        float width = decodeResource.getWidth();
        this.f3805h = width;
        float f = width * 0.5f;
        this.f3806j = f;
        this.f3807k = decodeResource.getHeight() * 0.5f;
        this.f3808l = f;
        this.f3817u = 0.0d;
        this.f3821y = null;
        this.f3809m = t;
        this.f3810n = t2;
        double doubleValue = t.doubleValue();
        this.f3812p = doubleValue;
        double doubleValue2 = t2.doubleValue();
        this.f3813q = doubleValue2;
        double doubleValue3 = t3.doubleValue();
        this.f3814r = doubleValue3;
        this.f3817u = doubleValue3 / (doubleValue2 - doubleValue);
        this.f3811o = EnumC0653b.m4291a(t);
        this.f3821y = new RectF(0.0f, 0.0f, 0.0f, 0.0f);
        setFocusable(true);
        setFocusableInTouchMode(true);
        m4302d();
    }

    /* renamed from: a */
    public final void m4305a() {
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
    }

    /* renamed from: b */
    public final void m4304b(float f, boolean z, Canvas canvas, boolean z2) {
        Bitmap bitmap = this.f3800b;
        if (isEnabled()) {
            bitmap = z ? z2 ? this.f3802d : this.f3804g : z2 ? this.f3801c : this.f3803f;
        }
        canvas.drawBitmap(bitmap, (getWidth() * 0.5f) - this.f3806j, f - this.f3807k, this.f3799a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0026, code lost:
        if ((r6 / getHeight()) > 0.5f) goto L10;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.kedlin.cca.p007ui.CCARangeSeekbarVertical.EnumC0655d m4303c(float r6) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r5
            double r2 = r2.f3815s
            boolean r0 = r0.m4301e(r1, r2)
            r7 = r0
            r0 = r5
            r1 = r6
            r2 = r5
            double r2 = r2.f3816t
            boolean r0 = r0.m4301e(r1, r2)
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L2c
            r0 = r8
            if (r0 == 0) goto L2c
            r0 = r6
            r1 = r5
            int r1 = r1.getHeight()
            float r1 = (float) r1
            float r0 = r0 / r1
            r1 = 1056964608(0x3f000000, float:0.5)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L3c
            goto L30
        L2c:
            r0 = r7
            if (r0 == 0) goto L38
        L30:
            com.kedlin.cca.ui.CCARangeSeekbarVertical$d r0 = com.kedlin.cca.p007ui.CCARangeSeekbarVertical.EnumC0655d.MIN
            r9 = r0
            goto L47
        L38:
            r0 = r8
            if (r0 == 0) goto L44
        L3c:
            com.kedlin.cca.ui.CCARangeSeekbarVertical$d r0 = com.kedlin.cca.p007ui.CCARangeSeekbarVertical.EnumC0655d.MAX
            r9 = r0
            goto L47
        L44:
            r0 = 0
            r9 = r0
        L47:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kedlin.cca.p007ui.CCARangeSeekbarVertical.m4303c(float):com.kedlin.cca.ui.CCARangeSeekbarVertical$d");
    }

    /* renamed from: d */
    public final void m4302d() {
        this.f3797B = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    /* renamed from: e */
    public final boolean m4301e(float f, double d) {
        return Math.abs(f - m4300f(d)) <= this.f3805h;
    }

    /* renamed from: f */
    public final float m4300f(double d) {
        return (float) (this.f3808l + (d * (getHeight() - (this.f3808l * 2.0f))));
    }

    /* renamed from: g */
    public final T m4299g(double d) {
        EnumC0653b enumC0653b = this.f3811o;
        double d2 = this.f3812p;
        return (T) enumC0653b.m4290b(d2 + Math.round((d * (this.f3813q - d2)) / this.f3814r));
    }

    public T getAbsoluteMaxValue() {
        return this.f3810n;
    }

    public T getAbsoluteMinValue() {
        return this.f3809m;
    }

    public T getSelectedMaxValue() {
        return m4299g(this.f3816t);
    }

    public T getSelectedMinValue() {
        return m4299g(this.f3815s);
    }

    /* renamed from: h */
    public void m4298h() {
        AbstractC0654c<T> abstractC0654c = this.f3820x;
        if (abstractC0654c != null) {
            abstractC0654c.m4289a(this, getSelectedMinValue(), getSelectedMaxValue(), this.f3818v);
        }
    }

    /* renamed from: i */
    public final void m4297i(MotionEvent motionEvent) {
        int action = (motionEvent.getAction() & 65280) >> 8;
        if (motionEvent.getPointerId(action) == this.f3796A) {
            int i = action == 0 ? 1 : 0;
            this.f3822z = motionEvent.getY(i);
            this.f3796A = motionEvent.getPointerId(i);
        }
    }

    /* renamed from: j */
    public void m4296j() {
        this.f3798C = true;
    }

    /* renamed from: k */
    public void m4295k() {
        this.f3798C = false;
        setNormalizedMaxValue(Math.round(this.f3816t / this.f3817u) * this.f3817u);
        setNormalizedMinValue(Math.round(this.f3815s / this.f3817u) * this.f3817u);
    }

    /* renamed from: l */
    public final double m4294l(float f) {
        float height;
        float f2;
        if (getHeight() <= this.f3808l * 2.0f) {
            return 0.0d;
        }
        return Math.min(1.0d, Math.max(0.0d, (f - f2) / (height - (f2 * 2.0f))));
    }

    /* renamed from: m */
    public final void m4293m(MotionEvent motionEvent) {
        float y = motionEvent.getY(motionEvent.findPointerIndex(this.f3796A));
        if (EnumC0655d.MIN.equals(this.f3818v)) {
            setNormalizedMinValue(m4294l(y));
        } else if (!EnumC0655d.MAX.equals(this.f3818v)) {
        } else {
            setNormalizedMaxValue(m4294l(y));
        }
    }

    /* renamed from: n */
    public final double m4292n(T t) {
        if (0.0d == this.f3813q - this.f3812p) {
            return 0.0d;
        }
        double doubleValue = t.doubleValue();
        double d = this.f3812p;
        return (doubleValue - d) / (this.f3813q - d);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        RectF rectF;
        Paint paint;
        synchronized (this) {
            super.onDraw(canvas);
            this.f3821y.left = (getWidth() * 0.5f) - 2.0f;
            RectF rectF2 = this.f3821y;
            rectF2.top = this.f3808l;
            rectF2.right = rectF2.left + 4.0f;
            rectF2.bottom = getHeight() - this.f3808l;
            this.f3799a.setColor(-7829368);
            this.f3799a.setAntiAlias(true);
            canvas.drawRect(this.f3821y, this.f3799a);
            if (isEnabled()) {
                double d = this.f3816t;
                double d2 = this.f3815s;
                if (d >= d2) {
                    this.f3821y.top = m4300f(d2);
                    this.f3821y.bottom = m4300f(this.f3816t);
                    this.f3799a.setColor(f3795E);
                    rectF = this.f3821y;
                    paint = this.f3799a;
                } else {
                    RectF rectF3 = this.f3821y;
                    rectF3.top = this.f3808l;
                    rectF3.bottom = m4300f(d);
                    Paint paint2 = this.f3799a;
                    int i = f3795E;
                    paint2.setColor(i);
                    canvas.drawRect(this.f3821y, this.f3799a);
                    this.f3821y.top = m4300f(this.f3815s);
                    this.f3821y.bottom = getHeight() - this.f3808l;
                    this.f3799a.setColor(i);
                    rectF = this.f3821y;
                    paint = this.f3799a;
                }
                canvas.drawRect(rectF, paint);
            }
            m4304b(m4300f(this.f3815s), EnumC0655d.MIN.equals(this.f3818v), canvas, true);
            m4304b(m4300f(this.f3816t), EnumC0655d.MAX.equals(this.f3818v), canvas, false);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        synchronized (this) {
            int i5 = (int) this.f3805h;
            int i6 = ((int) this.f3807k) * 14;
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size2 = View.MeasureSpec.getSize(i2);
            if (mode == 1073741824) {
                i3 = size;
            } else {
                i3 = i5;
                if (mode == Integer.MIN_VALUE) {
                    i3 = Math.min(i5, size);
                }
            }
            if (mode2 == 1073741824) {
                i4 = size2;
            } else {
                i4 = i6;
                if (mode2 == Integer.MIN_VALUE) {
                    i4 = Math.min(i6, size2);
                }
            }
            setMeasuredDimension(i3, i4);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("SUPER"));
        this.f3815s = bundle.getDouble("MIN");
        this.f3816t = bundle.getDouble("MAX");
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("SUPER", super.onSaveInstanceState());
        bundle.putDouble("MIN", this.f3815s);
        bundle.putDouble("MAX", this.f3816t);
        return bundle;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractC0654c<T> abstractC0654c;
        if (!isEnabled()) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            int pointerId = motionEvent.getPointerId(motionEvent.getPointerCount() - 1);
            this.f3796A = pointerId;
            float y = motionEvent.getY(motionEvent.findPointerIndex(pointerId));
            this.f3822z = y;
            EnumC0655d m4303c = m4303c(y);
            this.f3818v = m4303c;
            if (m4303c == null) {
                return super.onTouchEvent(motionEvent);
            }
            setPressed(true);
            invalidate();
            m4296j();
            m4293m(motionEvent);
            m4305a();
            return true;
        }
        if (action == 1) {
            if (this.f3798C) {
                m4293m(motionEvent);
                m4295k();
                setPressed(false);
            } else {
                m4296j();
                m4293m(motionEvent);
                m4295k();
            }
            this.f3818v = null;
            invalidate();
            abstractC0654c = this.f3820x;
            if (abstractC0654c == null) {
                return true;
            }
        } else if (action != 2) {
            if (action != 3) {
                if (action == 5) {
                    int pointerCount = motionEvent.getPointerCount() - 1;
                    this.f3822z = motionEvent.getY(pointerCount);
                    this.f3796A = motionEvent.getPointerId(pointerCount);
                } else if (action != 6) {
                    return true;
                } else {
                    m4297i(motionEvent);
                }
            } else if (this.f3798C) {
                m4295k();
                setPressed(false);
            }
            invalidate();
            return true;
        } else if (this.f3818v == null) {
            return true;
        } else {
            if (this.f3798C) {
                m4293m(motionEvent);
            } else if (Math.abs(motionEvent.getY(motionEvent.findPointerIndex(this.f3796A)) - this.f3822z) > this.f3797B) {
                setPressed(true);
                invalidate();
                m4296j();
                m4293m(motionEvent);
                m4305a();
            }
            if (!this.f3819w) {
                return true;
            }
            abstractC0654c = this.f3820x;
            if (abstractC0654c == null) {
                return true;
            }
        }
        abstractC0654c.m4289a(this, getSelectedMinValue(), getSelectedMaxValue(), this.f3818v);
        return true;
    }

    public void setNormalizedMaxValue(double d) {
        this.f3816t = Math.min(1.0d, Math.max(0.0d, d));
        invalidate();
    }

    public void setNormalizedMinValue(double d) {
        this.f3815s = Math.min(1.0d, Math.max(0.0d, d));
        invalidate();
    }

    public void setNotifyWhileDragging(boolean z) {
        this.f3819w = z;
    }

    public void setOnRangeSeekBarChangeListener(AbstractC0654c<T> abstractC0654c) {
        this.f3820x = abstractC0654c;
    }

    public void setOnRangeSeekBarChangeListener(AbstractC0654c<T> abstractC0654c, boolean z) {
        setOnRangeSeekBarChangeListener(abstractC0654c);
        if (abstractC0654c == null || !z) {
            return;
        }
        abstractC0654c.m4289a(this, getSelectedMinValue(), getSelectedMaxValue(), this.f3818v);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [double] */
    public void setSelectedMaxValue(T t) {
        setNormalizedMaxValue(0.0d == this.f3813q - this.f3812p ? (char) 0 : m4292n(t));
    }

    public void setSelectedMinValue(T t) {
        if (0.0d == this.f3813q - this.f3812p) {
            setNormalizedMinValue(0.0d);
        } else {
            setNormalizedMinValue(m4292n(t));
        }
    }
}
