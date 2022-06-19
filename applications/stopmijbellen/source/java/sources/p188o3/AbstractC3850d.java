package p188o3;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;
import p291y.C4951d;
/* renamed from: o3.d */
/* loaded from: classes-dex2jar.jar:o3/d.class */
public interface AbstractC3850d {

    /* renamed from: o3.d$b */
    /* loaded from: classes-dex2jar.jar:o3/d$b.class */
    public static class C3852b implements TypeEvaluator<C3855e> {

        /* renamed from: b */
        public static final TypeEvaluator<C3855e> f12338b = new C3852b();

        /* renamed from: a */
        public final C3855e f12339a = new C3855e(null);

        @Override // android.animation.TypeEvaluator
        public C3855e evaluate(float f, C3855e c3855e, C3855e c3855e2) {
            C3855e c3855e3 = c3855e;
            C3855e c3855e4 = c3855e2;
            C3855e c3855e5 = this.f12339a;
            float m194i = C4951d.m194i(c3855e3.f12342a, c3855e4.f12342a, f);
            float m194i2 = C4951d.m194i(c3855e3.f12343b, c3855e4.f12343b, f);
            float m194i3 = C4951d.m194i(c3855e3.f12344c, c3855e4.f12344c, f);
            c3855e5.f12342a = m194i;
            c3855e5.f12343b = m194i2;
            c3855e5.f12344c = m194i3;
            return this.f12339a;
        }
    }

    /* renamed from: o3.d$c */
    /* loaded from: classes-dex2jar.jar:o3/d$c.class */
    public static class C3853c extends Property<AbstractC3850d, C3855e> {

        /* renamed from: a */
        public static final Property<AbstractC3850d, C3855e> f12340a = new C3853c("circularReveal");

        public C3853c(String str) {
            super(C3855e.class, str);
        }

        @Override // android.util.Property
        public C3855e get(AbstractC3850d abstractC3850d) {
            return abstractC3850d.getRevealInfo();
        }

        @Override // android.util.Property
        public void set(AbstractC3850d abstractC3850d, C3855e c3855e) {
            abstractC3850d.setRevealInfo(c3855e);
        }
    }

    /* renamed from: o3.d$d */
    /* loaded from: classes-dex2jar.jar:o3/d$d.class */
    public static class C3854d extends Property<AbstractC3850d, Integer> {

        /* renamed from: a */
        public static final Property<AbstractC3850d, Integer> f12341a = new C3854d("circularRevealScrimColor");

        public C3854d(String str) {
            super(Integer.class, str);
        }

        @Override // android.util.Property
        public Integer get(AbstractC3850d abstractC3850d) {
            return Integer.valueOf(abstractC3850d.getCircularRevealScrimColor());
        }

        @Override // android.util.Property
        public void set(AbstractC3850d abstractC3850d, Integer num) {
            abstractC3850d.setCircularRevealScrimColor(num.intValue());
        }
    }

    /* renamed from: o3.d$e */
    /* loaded from: classes-dex2jar.jar:o3/d$e.class */
    public static class C3855e {

        /* renamed from: a */
        public float f12342a;

        /* renamed from: b */
        public float f12343b;

        /* renamed from: c */
        public float f12344c;

        public C3855e() {
        }

        public C3855e(float f, float f2, float f3) {
            this.f12342a = f;
            this.f12343b = f2;
            this.f12344c = f3;
        }

        public C3855e(C3851a c3851a) {
        }
    }

    /* renamed from: a */
    void mo1518a();

    /* renamed from: b */
    void mo1517b();

    int getCircularRevealScrimColor();

    C3855e getRevealInfo();

    void setCircularRevealOverlayDrawable(Drawable drawable);

    void setCircularRevealScrimColor(int i);

    void setRevealInfo(C3855e c3855e);
}
