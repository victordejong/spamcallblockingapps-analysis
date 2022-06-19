package com.rey.material.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import com.rey.material.app.b;
import com.rey.material.app.b$b;
import com.rey.material.app.b$c;
import p092e.p107g.p108a.p109a.View$OnTouchListenerC3116f;
import p092e.p107g.p108a.p110b.C3121a;
import p092e.p107g.p108a.p110b.C3122b;
import p092e.p107g.p108a.p110b.C3124d;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Slider.class */
public class Slider extends View implements b$c {

    /* renamed from: C */
    private Interpolator f11815C;

    /* renamed from: D */
    private int f11816D;

    /* renamed from: E */
    private PointF f11817E;

    /* renamed from: F */
    private boolean f11818F;

    /* renamed from: G */
    private float f11819G;

    /* renamed from: H */
    private float f11820H;

    /* renamed from: J */
    private int f11822J;

    /* renamed from: K */
    private int f11823K;

    /* renamed from: L */
    private String f11824L;

    /* renamed from: M */
    private RunnableC2838d f11825M;

    /* renamed from: N */
    private RunnableC2839e f11826N;

    /* renamed from: O */
    private RunnableC2837c f11827O;

    /* renamed from: Q */
    private AbstractC2836b f11829Q;

    /* renamed from: b */
    private View$OnClickListenerC2847a f11830b;

    /* renamed from: c */
    protected int f11831c;

    /* renamed from: e */
    private Paint f11833e;

    /* renamed from: f */
    private RectF f11834f;

    /* renamed from: g */
    private RectF f11835g;

    /* renamed from: h */
    private Path f11836h;

    /* renamed from: i */
    private Path f11837i;

    /* renamed from: j */
    private Path f11838j;

    /* renamed from: o */
    private int f11843o;

    /* renamed from: p */
    private int f11844p;

    /* renamed from: d */
    protected int f11832d = Integer.MIN_VALUE;

    /* renamed from: k */
    private int f11839k = 0;

    /* renamed from: l */
    private int f11840l = 100;

    /* renamed from: m */
    private int f11841m = 1;

    /* renamed from: n */
    private boolean f11842n = false;

    /* renamed from: q */
    private int f11845q = -1;

    /* renamed from: r */
    private Paint.Cap f11846r = Paint.Cap.BUTT;

    /* renamed from: s */
    private int f11847s = -1;

    /* renamed from: t */
    private int f11848t = -1;

    /* renamed from: u */
    private int f11849u = -1;

    /* renamed from: v */
    private float f11850v = -1.0f;

    /* renamed from: w */
    private Typeface f11851w = Typeface.DEFAULT;

    /* renamed from: x */
    private int f11852x = -1;

    /* renamed from: y */
    private int f11853y = -1;

    /* renamed from: z */
    private int f11854z = 17;

    /* renamed from: A */
    private int f11813A = -1;

    /* renamed from: B */
    private int f11814B = -1;

    /* renamed from: I */
    private boolean f11821I = false;

    /* renamed from: P */
    private boolean f11828P = false;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Slider$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C2834a();

        /* renamed from: b */
        float f11855b;

        /* renamed from: com.rey.material.widget.Slider$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Slider$SavedState$a.class */
        static final class C2834a implements Parcelable.Creator<SavedState> {
            C2834a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: b */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f11855b = parcel.readFloat();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "Slider.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " pos=" + this.f11855b + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.f11855b);
        }
    }

    /* renamed from: com.rey.material.widget.Slider$b */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Slider$b.class */
    public interface AbstractC2836b {
        /* renamed from: a */
        void m1388a(Slider slider, boolean z, float f, float f2, int i, int i2);
    }

    /* renamed from: com.rey.material.widget.Slider$c */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Slider$c.class */
    public class RunnableC2837c implements Runnable {

        /* renamed from: b */
        boolean f11856b = false;

        /* renamed from: c */
        long f11857c;

        /* renamed from: d */
        float f11858d;

        /* renamed from: e */
        float f11859e;

        /* renamed from: f */
        float f11860f;

        /* renamed from: g */
        float f11861g;

        /* renamed from: h */
        float f11862h;

        /* renamed from: i */
        int f11863i;

        RunnableC2837c() {
            Slider.this = r4;
        }

        /* renamed from: a */
        public float m1387a() {
            return this.f11861g;
        }

        /* renamed from: b */
        public boolean m1386b() {
            return this.f11856b;
        }

        /* renamed from: c */
        public void m1385c() {
            this.f11857c = SystemClock.uptimeMillis();
            this.f11860f = Slider.this.f11850v;
            this.f11858d = Slider.this.f11820H;
            this.f11859e = Slider.this.f11819G;
            float f = 0.0f;
            if (this.f11861g != 0.0f) {
                f = 1.0f;
            }
            this.f11862h = f;
            this.f11863i = (!Slider.this.f11842n || Slider.this.f11818F) ? Slider.this.f11813A : (Slider.this.f11814B * 2) + Slider.this.f11813A;
        }

        /* renamed from: d */
        public boolean m1384d(float f) {
            if (Slider.this.f11850v == f) {
                return false;
            }
            this.f11861g = f;
            if (Slider.this.getHandler() == null) {
                Slider.this.f11850v = f;
                Slider.this.invalidate();
                return false;
            }
            m1385c();
            this.f11856b = true;
            Slider.this.getHandler().postAtTime(this, SystemClock.uptimeMillis() + 16);
            Slider.this.invalidate();
            return true;
        }

        /* renamed from: e */
        public void m1383e() {
            this.f11856b = false;
            Slider slider = Slider.this;
            slider.f11819G = (!slider.f11842n || !Slider.this.f11818F) ? Slider.this.f11848t : 0.0f;
            Slider slider2 = Slider.this;
            slider2.f11820H = slider2.f11821I ? 1.0f : this.f11862h;
            Slider.this.f11850v = this.f11861g;
            if (Slider.this.getHandler() != null) {
                Slider.this.getHandler().removeCallbacks(this);
            }
            Slider.this.invalidate();
        }

        @Override // java.lang.Runnable
        public void run() {
            float f;
            Slider slider;
            float f2;
            Slider slider2;
            Slider slider3;
            float f3;
            float min = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.f11857c)) / this.f11863i);
            float interpolation = Slider.this.f11815C.getInterpolation(min);
            if (Slider.this.f11842n) {
                if (Slider.this.f11818F) {
                    Slider slider4 = Slider.this;
                    float f4 = this.f11861g;
                    float f5 = this.f11860f;
                    slider4.f11850v = ((f4 - f5) * interpolation) + f5;
                    Slider slider5 = Slider.this;
                    slider3 = slider5;
                    if (slider5.f11821I) {
                        slider3 = slider5;
                        f3 = 1.0f;
                    }
                    float f6 = this.f11862h;
                    float f7 = this.f11858d;
                    f3 = ((f6 - f7) * interpolation) + f7;
                } else {
                    float f8 = Slider.this.f11813A / this.f11863i;
                    float f9 = (Slider.this.f11813A + Slider.this.f11814B) / this.f11863i;
                    if (min < f8) {
                        interpolation = Slider.this.f11815C.getInterpolation(min / f8);
                        Slider.this.f11819G = this.f11859e * (1.0f - interpolation);
                        Slider slider6 = Slider.this;
                        float f10 = this.f11861g;
                        float f11 = this.f11860f;
                        slider6.f11850v = ((f10 - f11) * interpolation) + f11;
                        Slider slider7 = Slider.this;
                        slider3 = slider7;
                        if (slider7.f11821I) {
                            slider3 = slider7;
                            f3 = 1.0f;
                        }
                        float f62 = this.f11862h;
                        float f72 = this.f11858d;
                        f3 = ((f62 - f72) * interpolation) + f72;
                    } else if (min > f9) {
                        Slider.this.f11819G = (slider2.f11848t * (min - f9)) / (1.0f - f9);
                    }
                }
                slider3.f11820H = f3;
            } else {
                Slider slider8 = Slider.this;
                float f12 = this.f11861g;
                float f13 = this.f11860f;
                slider8.f11850v = ((f12 - f13) * interpolation) + f13;
                Slider slider9 = Slider.this;
                if (slider9.f11821I) {
                    f = 1.0f;
                } else {
                    float f14 = this.f11862h;
                    float f15 = this.f11858d;
                    f = ((f14 - f15) * interpolation) + f15;
                }
                slider9.f11820H = f;
                double d = min;
                if (d < 0.2d) {
                    slider = Slider.this;
                    f2 = Math.max(slider.f11848t + (Slider.this.f11847s * min * 5.0f), Slider.this.f11819G);
                } else if (d >= 0.8d) {
                    slider = Slider.this;
                    f2 = slider.f11848t + (Slider.this.f11847s * (5.0f - (min * 5.0f)));
                }
                slider.f11819G = f2;
            }
            if (min == 1.0f) {
                m1383e();
            }
            if (this.f11856b) {
                if (Slider.this.getHandler() != null) {
                    Slider.this.getHandler().postAtTime(this, SystemClock.uptimeMillis() + 16);
                } else {
                    m1383e();
                }
            }
            Slider.this.invalidate();
        }
    }

    /* renamed from: com.rey.material.widget.Slider$d */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Slider$d.class */
    public class RunnableC2838d implements Runnable {

        /* renamed from: b */
        boolean f11865b = false;

        /* renamed from: c */
        long f11866c;

        /* renamed from: d */
        float f11867d;

        /* renamed from: e */
        int f11868e;

        RunnableC2838d() {
            Slider.this = r4;
        }

        /* renamed from: a */
        public void m1382a() {
            this.f11866c = SystemClock.uptimeMillis();
            this.f11867d = Slider.this.f11819G;
        }

        /* renamed from: b */
        public boolean m1381b(int i) {
            if (Slider.this.f11819G == i) {
                return false;
            }
            this.f11868e = i;
            if (Slider.this.getHandler() == null) {
                Slider.this.f11819G = this.f11868e;
                Slider.this.invalidate();
                return false;
            }
            m1382a();
            this.f11865b = true;
            Slider.this.getHandler().postAtTime(this, SystemClock.uptimeMillis() + 16);
            Slider.this.invalidate();
            return true;
        }

        /* renamed from: c */
        public void m1380c() {
            this.f11865b = false;
            Slider.this.f11819G = this.f11868e;
            if (Slider.this.getHandler() != null) {
                Slider.this.getHandler().removeCallbacks(this);
            }
            Slider.this.invalidate();
        }

        @Override // java.lang.Runnable
        public void run() {
            float min = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.f11866c)) / Slider.this.f11814B);
            float interpolation = Slider.this.f11815C.getInterpolation(min);
            Slider slider = Slider.this;
            float f = this.f11868e;
            float f2 = this.f11867d;
            slider.f11819G = ((f - f2) * interpolation) + f2;
            if (min == 1.0f) {
                m1380c();
            }
            if (this.f11865b) {
                if (Slider.this.getHandler() != null) {
                    Slider.this.getHandler().postAtTime(this, SystemClock.uptimeMillis() + 16);
                } else {
                    m1380c();
                }
            }
            Slider.this.invalidate();
        }
    }

    /* renamed from: com.rey.material.widget.Slider$e */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Slider$e.class */
    public class RunnableC2839e implements Runnable {

        /* renamed from: b */
        boolean f11870b = false;

        /* renamed from: c */
        long f11871c;

        /* renamed from: d */
        float f11872d;

        /* renamed from: e */
        int f11873e;

        RunnableC2839e() {
            Slider.this = r4;
        }

        /* renamed from: a */
        public void m1379a() {
            this.f11871c = SystemClock.uptimeMillis();
            this.f11872d = Slider.this.f11820H;
        }

        /* renamed from: b */
        public boolean m1378b(int i) {
            if (Slider.this.f11820H == i) {
                return false;
            }
            this.f11873e = i;
            if (Slider.this.getHandler() == null) {
                Slider slider = Slider.this;
                slider.f11820H = slider.f11821I ? 1.0f : this.f11873e;
                Slider.this.invalidate();
                return false;
            }
            m1379a();
            this.f11870b = true;
            Slider.this.getHandler().postAtTime(this, SystemClock.uptimeMillis() + 16);
            Slider.this.invalidate();
            return true;
        }

        /* renamed from: c */
        public void m1377c() {
            this.f11870b = false;
            Slider slider = Slider.this;
            slider.f11820H = slider.f11821I ? 1.0f : this.f11873e;
            if (Slider.this.getHandler() != null) {
                Slider.this.getHandler().removeCallbacks(this);
            }
            Slider.this.invalidate();
        }

        @Override // java.lang.Runnable
        public void run() {
            float f;
            float min = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.f11871c)) / Slider.this.f11814B);
            float interpolation = Slider.this.f11815C.getInterpolation(min);
            Slider slider = Slider.this;
            if (slider.f11821I) {
                f = 1.0f;
            } else {
                float f2 = this.f11873e;
                float f3 = this.f11872d;
                f = ((f2 - f3) * interpolation) + f3;
            }
            slider.f11820H = f;
            if (min == 1.0f) {
                m1377c();
            }
            if (this.f11870b) {
                if (Slider.this.getHandler() != null) {
                    Slider.this.getHandler().postAtTime(this, SystemClock.uptimeMillis() + 16);
                } else {
                    m1377c();
                }
            }
            Slider.this.invalidate();
        }
    }

    public Slider(Context context) {
        super(context);
        m1394v(context, null, 0, 0);
    }

    public Slider(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m1394v(context, attributeSet, 0, 0);
    }

    public Slider(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m1394v(context, attributeSet, i, 0);
    }

    private String getValueText() {
        int value = getValue();
        if (this.f11824L == null || this.f11823K != value) {
            this.f11823K = value;
            this.f11824L = String.valueOf(value);
        }
        return this.f11824L;
    }

    /* renamed from: r */
    private float m1398r(float f) {
        if (!this.f11842n) {
            return f;
        }
        int i = this.f11840l - this.f11839k;
        float f2 = i;
        int round = Math.round(f * f2);
        int i2 = this.f11841m;
        int i3 = round / i2;
        int i4 = i3 * i2;
        int min = Math.min(i, (i3 + 1) * i2);
        return (round - i4 < min - round ? i4 : min) / f2;
    }

    /* renamed from: s */
    private double m1397s(float f, float f2, float f3, float f4) {
        return Math.sqrt(Math.pow(f - f3, 2.0d) + Math.pow(f2 - f4, 2.0d));
    }

    /* renamed from: t */
    private Path m1396t(Path path, float f, float f2, float f3, float f4) {
        if (path == null) {
            path = new Path();
        } else {
            path.reset();
        }
        float f5 = f - f3;
        float f6 = f + f3;
        float f7 = f2 + f3;
        float f8 = f2 - (f3 * f4);
        float atan2 = (float) ((Math.atan2(f2 - f8, f6 - f) * 180.0d) / 3.141592653589793d);
        float m1397s = (float) m1397s(f, f8, f5, f2);
        this.f11835g.set(f - m1397s, f8 - m1397s, f + m1397s, f8 + m1397s);
        path.moveTo(f5, f2);
        path.arcTo(this.f11835g, 180.0f - atan2, (atan2 * 2.0f) + 180.0f);
        if (f4 > 0.9f) {
            path.lineTo(f, f7);
        } else {
            float f9 = (f6 + f) / 2.0f;
            float f10 = (f2 + f7) / 2.0f;
            double m1397s2 = m1397s(f6, f2, f9, f10);
            double d = 1.0f - f4;
            Double.isNaN(d);
            double tan = m1397s2 / Math.tan((d * 3.141592653589793d) / 4.0d);
            double d2 = f9;
            double cos = Math.cos(0.7853981633974483d);
            Double.isNaN(d2);
            float f11 = (float) (d2 - (cos * tan));
            double d3 = f10;
            double sin = Math.sin(0.7853981633974483d);
            Double.isNaN(d3);
            float f12 = (float) (d3 - (sin * tan));
            double d4 = f2 - f12;
            float atan22 = (float) ((Math.atan2(d4, f6 - f11) * 180.0d) / 3.141592653589793d);
            double d5 = f7 - f12;
            float atan23 = (float) ((Math.atan2(d5, f - f11) * 180.0d) / 3.141592653589793d);
            float m1397s3 = (float) m1397s(f11, f12, f6, f2);
            float f13 = f12 - m1397s3;
            float f14 = f12 + m1397s3;
            this.f11835g.set(f11 - m1397s3, f13, f11 + m1397s3, f14);
            path.arcTo(this.f11835g, atan22, atan23 - atan22);
            float f15 = (2.0f * f) - f11;
            float atan24 = (float) ((Math.atan2(d5, f - f15) * 180.0d) / 3.141592653589793d);
            float atan25 = (float) ((Math.atan2(d4, f5 - f15) * 180.0d) / 3.141592653589793d);
            this.f11835g.set(f15 - m1397s3, f13, f15 + m1397s3, f14);
            path.arcTo(this.f11835g, 0.7853982f + atan24, atan25 - atan24);
        }
        path.close();
        return path;
    }

    /* renamed from: u */
    private void m1395u(float f, float f2, float f3) {
        float f4;
        float f5;
        float f6;
        float f7 = this.f11845q / 2.0f;
        this.f11836h.reset();
        this.f11837i.reset();
        if (f3 - 1.0f < f7) {
            if (this.f11846r != Paint.Cap.ROUND) {
                float f8 = this.f11834f.left;
                if (f > f8) {
                    float f9 = f2 - f7;
                    this.f11836h.moveTo(f8, f9);
                    this.f11836h.lineTo(f, f9);
                    float f10 = f2 + f7;
                    this.f11836h.lineTo(f, f10);
                    this.f11836h.lineTo(this.f11834f.left, f10);
                    this.f11836h.close();
                }
                float f11 = this.f11834f.right;
                if (f >= f11) {
                    return;
                }
                float f12 = f2 + f7;
                this.f11837i.moveTo(f11, f12);
                this.f11837i.lineTo(f, f12);
                float f13 = f2 - f7;
                this.f11837i.lineTo(f, f13);
                this.f11837i.lineTo(this.f11834f.right, f13);
            } else {
                float f14 = this.f11834f.left;
                if (f > f14) {
                    float f15 = f2 - f7;
                    float f16 = f2 + f7;
                    this.f11835g.set(f14, f15, this.f11845q + f14, f16);
                    this.f11836h.arcTo(this.f11835g, 90.0f, 180.0f);
                    this.f11836h.lineTo(f, f15);
                    this.f11836h.lineTo(f, f16);
                    this.f11836h.close();
                }
                float f17 = this.f11834f.right;
                if (f >= f17) {
                    return;
                }
                float f18 = f2 - f7;
                float f19 = f2 + f7;
                this.f11835g.set(f17 - this.f11845q, f18, f17, f19);
                this.f11837i.arcTo(this.f11835g, 270.0f, 180.0f);
                this.f11837i.lineTo(f, f19);
                this.f11837i.lineTo(f, f18);
            }
        } else if (this.f11846r != Paint.Cap.ROUND) {
            float f20 = f - f3;
            float f21 = f + f3;
            this.f11835g.set(f20 + 1.0f, (f2 - f3) + 1.0f, f21 - 1.0f, (f2 + f3) - 1.0f);
            float asin = (float) ((Math.asin(f7 / f4) / 3.141592653589793d) * 180.0d);
            float f22 = this.f11834f.left;
            if (f20 > f22) {
                this.f11836h.moveTo(f22, f2 - f7);
                this.f11836h.arcTo(this.f11835g, 180.0f + asin, (-asin) * 2.0f);
                this.f11836h.lineTo(this.f11834f.left, f2 + f7);
                this.f11836h.close();
            }
            float f23 = this.f11834f.right;
            if (f21 >= f23) {
                return;
            }
            this.f11837i.moveTo(f23, f2 - f7);
            this.f11837i.arcTo(this.f11835g, -asin, asin * 2.0f);
            this.f11837i.lineTo(this.f11834f.right, f2 + f7);
        } else {
            float asin2 = (float) ((Math.asin(f7 / f4) / 3.141592653589793d) * 180.0d);
            float f24 = f - f3;
            if (f24 > this.f11834f.left) {
                float acos = (float) ((Math.acos(Math.max(0.0f, (((f5 + f7) - f) + f3) / f7)) / 3.141592653589793d) * 180.0d);
                RectF rectF = this.f11835g;
                float f25 = this.f11834f.left;
                rectF.set(f25, f2 - f7, this.f11845q + f25, f2 + f7);
                this.f11836h.arcTo(this.f11835g, 180.0f - acos, acos * 2.0f);
                this.f11835g.set(f24 + 1.0f, (f2 - f3) + 1.0f, (f + f3) - 1.0f, (f2 + f3) - 1.0f);
                this.f11836h.arcTo(this.f11835g, 180.0f + asin2, (-asin2) * 2.0f);
                this.f11836h.close();
            }
            float f26 = f + f3;
            if (f26 >= this.f11834f.right) {
                return;
            }
            float acos2 = (float) Math.acos(Math.max(0.0f, ((f26 - f6) + f7) / f7));
            Path path = this.f11837i;
            double d = this.f11834f.right - f7;
            double d2 = acos2;
            double cos = Math.cos(d2);
            double d3 = f7;
            Double.isNaN(d3);
            Double.isNaN(d);
            float f27 = (float) (d + (cos * d3));
            double d4 = f2;
            double sin = Math.sin(d2);
            Double.isNaN(d3);
            Double.isNaN(d4);
            path.moveTo(f27, (float) (d4 + (sin * d3)));
            Double.isNaN(d2);
            float f28 = (float) ((d2 / 3.141592653589793d) * 180.0d);
            RectF rectF2 = this.f11835g;
            float f29 = this.f11834f.right;
            rectF2.set(f29 - this.f11845q, f2 - f7, f29, f7 + f2);
            this.f11837i.arcTo(this.f11835g, f28, (-f28) * 2.0f);
            this.f11835g.set(f24 + 1.0f, (f2 - f3) + 1.0f, f26 - 1.0f, (f2 + f3) - 1.0f);
            this.f11837i.arcTo(this.f11835g, -asin2, asin2 * 2.0f);
        }
        this.f11837i.close();
    }

    /* renamed from: v */
    private void m1394v(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f11833e = new Paint(1);
        this.f11843o = C3122b.m84b(context, -16777216);
        this.f11844p = C3122b.m82d(context, -16777216);
        this.f11834f = new RectF();
        this.f11835g = new RectF();
        this.f11836h = new Path();
        this.f11837i = new Path();
        this.f11825M = new RunnableC2838d();
        this.f11826N = new RunnableC2839e();
        this.f11827O = new RunnableC2837c();
        this.f11816D = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f11817E = new PointF();
        m1399q(context, attributeSet, i, i2);
        this.f11831c = b.f(context, attributeSet, i, i2);
    }

    /* renamed from: w */
    private boolean m1393w(float f, float f2, float f3) {
        float width = this.f11834f.width();
        float f4 = this.f11850v;
        RectF rectF = this.f11834f;
        float f5 = (width * f4) + rectF.left;
        float centerY = rectF.centerY();
        return f >= f5 - f3 && f <= f5 + f3 && f2 >= centerY - f3 && f2 < centerY + f3;
    }

    /* renamed from: x */
    private void m1392x() {
        Rect rect = new Rect();
        String valueOf = String.valueOf(this.f11840l);
        this.f11833e.setTextSize(this.f11852x);
        float measureText = this.f11833e.measureText(valueOf);
        double d = this.f11848t;
        double sqrt = Math.sqrt(2.0d);
        Double.isNaN(d);
        double m81e = C3122b.m81e(getContext(), 8);
        Double.isNaN(m81e);
        float f = (float) (((d * sqrt) * 2.0d) - m81e);
        if (measureText > f) {
            this.f11833e.setTextSize((this.f11852x * f) / measureText);
        }
        this.f11833e.getTextBounds(valueOf, 0, valueOf.length(), rect);
        this.f11822J = rect.height();
    }

    /* renamed from: y */
    private void m1391y(float f, boolean z, boolean z2, boolean z3) {
        AbstractC2836b abstractC2836b;
        int i = 1;
        boolean z4 = getPosition() != f;
        int value = getValue();
        float position = getPosition();
        if (!z || !this.f11827O.m1384d(f)) {
            this.f11850v = f;
            float f2 = 0.0f;
            if (z2) {
                if (!this.f11818F) {
                    this.f11825M.m1381b(this.f11848t);
                }
                RunnableC2839e runnableC2839e = this.f11826N;
                if (f == 0.0f) {
                    i = 0;
                }
                runnableC2839e.m1378b(i);
            } else {
                this.f11819G = this.f11848t;
                if (this.f11821I || f != 0.0f) {
                    f2 = 1.0f;
                }
                this.f11820H = f2;
                invalidate();
            }
        }
        int value2 = getValue();
        float position2 = getPosition();
        if (!z4 || (abstractC2836b = this.f11829Q) == null) {
            return;
        }
        abstractC2836b.m1388a(this, z3, position, position2, value, value2);
    }

    @Override // com.rey.material.app.b$c
    /* renamed from: d */
    public void mo1341d(b$b b_b) {
        int b = b.c().b(this.f11831c);
        if (this.f11832d != b) {
            this.f11832d = b;
            m1400p(b);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        float width = this.f11834f.width();
        float f = this.f11850v;
        RectF rectF = this.f11834f;
        float f2 = (width * f) + rectF.left;
        float f3 = f2;
        if (this.f11828P) {
            f3 = (rectF.centerX() * 2.0f) - f2;
        }
        float centerY = this.f11834f.centerY();
        int m87b = C3121a.m87b(this.f11844p, isEnabled() ? this.f11843o : this.f11844p, this.f11820H);
        m1395u(f3, centerY, this.f11819G);
        this.f11833e.setStyle(Paint.Style.FILL);
        this.f11833e.setColor(this.f11828P ? m87b : this.f11844p);
        canvas.drawPath(this.f11837i, this.f11833e);
        this.f11833e.setColor(this.f11828P ? this.f11844p : m87b);
        canvas.drawPath(this.f11836h, this.f11833e);
        this.f11833e.setColor(m87b);
        if (!this.f11842n) {
            float f4 = isEnabled() ? this.f11819G : this.f11819G - this.f11847s;
            float f5 = this.f11820H;
            if (f5 == 1.0f) {
                this.f11833e.setStyle(Paint.Style.FILL);
            } else {
                int i = this.f11847s;
                float f6 = ((f4 - i) * f5) + i;
                f4 -= f6 / 2.0f;
                this.f11833e.setStyle(Paint.Style.STROKE);
                this.f11833e.setStrokeWidth(f6);
            }
            canvas.drawCircle(f3, centerY, f4, this.f11833e);
            return;
        }
        float f7 = this.f11819G;
        int i2 = this.f11848t;
        float f8 = 1.0f - (f7 / i2);
        if (f8 > 0.0f) {
            this.f11838j = m1396t(this.f11838j, f3, centerY, i2, f8);
            this.f11833e.setStyle(Paint.Style.FILL);
            int save = canvas.save();
            canvas.translate(0.0f, (-this.f11848t) * 2 * f8);
            canvas.drawPath(this.f11838j, this.f11833e);
            this.f11833e.setColor(C3121a.m88a(this.f11853y, f8));
            canvas.drawText(getValueText(), f3, ((this.f11822J / 2.0f) + centerY) - (this.f11848t * f8), this.f11833e);
            canvas.restoreToCount(save);
        }
        float f9 = isEnabled() ? this.f11819G : this.f11819G - this.f11847s;
        if (f9 <= 0.0f) {
            return;
        }
        this.f11833e.setColor(m87b);
        canvas.drawCircle(f3, centerY, f9, this.f11833e);
    }

    public float getExactValue() {
        return ((this.f11840l - this.f11839k) * getPosition()) + this.f11839k;
    }

    public int getMaxValue() {
        return this.f11840l;
    }

    public int getMinValue() {
        return this.f11839k;
    }

    public float getPosition() {
        return this.f11827O.m1386b() ? this.f11827O.m1387a() : this.f11850v;
    }

    protected View$OnClickListenerC2847a getRippleManager() {
        if (this.f11830b == null) {
            synchronized (View$OnClickListenerC2847a.class) {
                try {
                    if (this.f11830b == null) {
                        this.f11830b = new View$OnClickListenerC2847a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f11830b;
    }

    public int getStepValue() {
        return this.f11841m;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        int i;
        if (this.f11842n) {
            double d = this.f11848t;
            double sqrt = Math.sqrt(2.0d);
            Double.isNaN(d);
            i = (int) (d * (sqrt + 4.0d));
        } else {
            i = this.f11849u * 2;
        }
        return i + getPaddingTop() + getPaddingBottom();
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        int i;
        if (this.f11842n) {
            double d = this.f11848t;
            double sqrt = Math.sqrt(2.0d);
            Double.isNaN(d);
            i = (int) (d * sqrt);
        } else {
            i = this.f11849u;
        }
        return (i * 4) + getPaddingLeft() + getPaddingRight();
    }

    public int getValue() {
        return Math.round(getExactValue());
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f11831c != 0) {
            b.c().j(this);
            mo1341d(null);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        View$OnClickListenerC2847a.m1339a(this);
        if (this.f11831c != 0) {
            b.c().m(this);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        setMeasuredDimension(mode != Integer.MIN_VALUE ? mode != 0 ? size : getSuggestedMinimumWidth() : Math.min(size, getSuggestedMinimumWidth()), mode2 != Integer.MIN_VALUE ? mode2 != 0 ? size2 : getSuggestedMinimumHeight() : Math.min(size2, getSuggestedMinimumHeight()));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setPosition(savedState.f11855b, false);
        requestLayout();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        if (this.f11828P != z) {
            this.f11828P = z;
            invalidate();
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f11855b = getPosition();
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        float f;
        float f2;
        RectF rectF;
        float f3;
        float f4;
        RectF rectF2;
        float f5;
        RectF rectF3;
        this.f11834f.left = getPaddingLeft() + this.f11848t;
        RectF rectF4 = this.f11834f;
        int paddingRight = getPaddingRight();
        int i5 = this.f11848t;
        rectF4.right = (i - paddingRight) - i5;
        int i6 = this.f11854z & 112;
        if (!this.f11842n) {
            int i7 = this.f11849u * 2;
            if (i6 == 48) {
                this.f11834f.top = getPaddingTop();
                rectF = this.f11834f;
                f2 = rectF.top;
            } else if (i6 == 80) {
                this.f11834f.bottom = i2 - getPaddingBottom();
                rectF2 = this.f11834f;
                f4 = rectF2.bottom;
                f3 = i7;
                rectF2.top = f4 - f3;
                return;
            } else {
                rectF = this.f11834f;
                f2 = (i2 - i7) / 2.0f;
                rectF.top = f2;
            }
            f = i7;
            rectF.bottom = f2 + f;
        }
        double d = i5;
        double sqrt = Math.sqrt(2.0d);
        Double.isNaN(d);
        int i8 = (int) (d * (sqrt + 4.0d));
        int i9 = this.f11848t * 2;
        if (i6 == 48) {
            rectF3 = this.f11834f;
            f5 = Math.max(getPaddingTop(), i8 - i9);
        } else if (i6 == 80) {
            this.f11834f.bottom = i2 - getPaddingBottom();
            rectF2 = this.f11834f;
            f4 = rectF2.bottom;
            f3 = i9;
            rectF2.top = f4 - f3;
            return;
        } else {
            rectF3 = this.f11834f;
            f5 = Math.max((i2 - i9) / 2.0f, i8 - i9);
        }
        rectF3.top = f5;
        rectF = this.f11834f;
        f2 = rectF.top;
        f = i9;
        rectF.bottom = f2 + f;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float m1398r;
        super.onTouchEvent(motionEvent);
        getRippleManager().m1336d(motionEvent);
        int i = 0;
        if (!isEnabled()) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        float f = x;
        if (this.f11828P) {
            f = (this.f11834f.centerX() * 2.0f) - x;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f11818F = m1393w(f, y, (float) this.f11848t) && !this.f11827O.m1386b();
            this.f11817E.set(f, y);
            if (!this.f11818F) {
                return true;
            }
            RunnableC2838d runnableC2838d = this.f11825M;
            if (!this.f11842n) {
                i = this.f11849u;
            }
            runnableC2838d.m1381b(i);
            return true;
        }
        if (action == 1) {
            if (!this.f11818F) {
                PointF pointF = this.f11817E;
                if (m1397s(pointF.x, pointF.y, f, y) > this.f11816D) {
                    return true;
                }
                RectF rectF = this.f11834f;
                m1398r = m1398r(Math.min(1.0f, Math.max(0.0f, (f - rectF.left) / rectF.width())));
            }
            this.f11818F = false;
            m1398r = getPosition();
        } else if (action != 2) {
            if (action != 3 || !this.f11818F) {
                return true;
            }
            this.f11818F = false;
            m1398r = getPosition();
        } else if (!this.f11818F) {
            return true;
        } else {
            if (!this.f11842n) {
                m1391y(Math.min(1.0f, Math.max(0.0f, this.f11850v + ((f - this.f11817E.x) / this.f11834f.width()))), false, true, true);
                this.f11817E.x = f;
                invalidate();
                return true;
            }
            RectF rectF2 = this.f11834f;
            m1398r = m1398r(Math.min(1.0f, Math.max(0.0f, (f - rectF2.left) / rectF2.width())));
        }
        m1391y(m1398r, true, true, true);
        return true;
    }

    /* renamed from: p */
    public void m1400p(int i) {
        C3124d.m75b(this, i);
        m1399q(getContext(), null, 0, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0567  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0578  */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void m1399q(android.content.Context r8, android.util.AttributeSet r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 1457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rey.material.widget.Slider.m1399q(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    public void setAlwaysFillThumb(boolean z) {
        this.f11821I = z;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Drawable background = getBackground();
        if (!(background instanceof View$OnTouchListenerC3116f) || (drawable instanceof View$OnTouchListenerC3116f)) {
            super.setBackgroundDrawable(drawable);
        } else {
            ((View$OnTouchListenerC3116f) background).m125r(drawable);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        View$OnClickListenerC2847a rippleManager = getRippleManager();
        if (onClickListener == rippleManager) {
            super.setOnClickListener(onClickListener);
            return;
        }
        rippleManager.m1335f(onClickListener);
        setOnClickListener(rippleManager);
    }

    public void setOnPositionChangeListener(AbstractC2836b abstractC2836b) {
        this.f11829Q = abstractC2836b;
    }

    public void setPosition(float f, boolean z) {
        m1391y(f, z, z, false);
    }

    public void setPrimaryColor(int i) {
        this.f11843o = i;
        invalidate();
    }

    public void setSecondaryColor(int i) {
        this.f11844p = i;
        invalidate();
    }

    public void setValue(float f, boolean z) {
        float min = Math.min(this.f11840l, Math.max(f, this.f11839k));
        int i = this.f11839k;
        setPosition((min - i) / (this.f11840l - i), z);
    }

    public void setValueRange(int i, int i2, boolean z) {
        if (i2 >= i) {
            if (i == this.f11839k && i2 == this.f11840l) {
                return;
            }
            float exactValue = getExactValue();
            float position = getPosition();
            this.f11839k = i;
            this.f11840l = i2;
            setValue(exactValue, z);
            if (this.f11829Q == null || position != getPosition() || exactValue == getExactValue()) {
                return;
            }
            this.f11829Q.m1388a(this, false, position, position, Math.round(exactValue), getValue());
        }
    }
}
