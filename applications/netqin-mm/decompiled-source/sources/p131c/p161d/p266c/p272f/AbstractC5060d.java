package p131c.p161d.p266c.p272f;

import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.f.d */
/* loaded from: classes2-dex2jar.jar:c/d/c/f/d.class */
public abstract class AbstractC5060d {

    /* renamed from: c.d.c.f.d$b */
    /* loaded from: classes2-dex2jar.jar:c/d/c/f/d$b.class */
    public static final class C5062b {

        /* renamed from: a */
        public final double f17650a;

        /* renamed from: b */
        public final double f17651b;

        public C5062b(double d, double d2) {
            this.f17650a = d;
            this.f17651b = d2;
        }

        /* renamed from: a */
        public AbstractC5060d m24578a(double d) {
            C4933n.m24791a(!Double.isNaN(d));
            return C5057b.m24590c(d) ? new C5064d(d, this.f17651b - (this.f17650a * d)) : new C5065e(this.f17650a);
        }
    }

    /* renamed from: c.d.c.f.d$c */
    /* loaded from: classes2-dex2jar.jar:c/d/c/f/d$c.class */
    public static final class C5063c extends AbstractC5060d {

        /* renamed from: a */
        public static final C5063c f17652a = new C5063c();

        public String toString() {
            return "NaN";
        }
    }

    /* renamed from: c.d.c.f.d$d */
    /* loaded from: classes2-dex2jar.jar:c/d/c/f/d$d.class */
    public static final class C5064d extends AbstractC5060d {

        /* renamed from: a */
        public final double f17653a;

        /* renamed from: b */
        public final double f17654b;

        public C5064d(double d, double d2) {
            this.f17653a = d;
            this.f17654b = d2;
        }

        public String toString() {
            return String.format("y = %g * x + %g", Double.valueOf(this.f17653a), Double.valueOf(this.f17654b));
        }
    }

    /* renamed from: c.d.c.f.d$e */
    /* loaded from: classes2-dex2jar.jar:c/d/c/f/d$e.class */
    public static final class C5065e extends AbstractC5060d {

        /* renamed from: a */
        public final double f17655a;

        public C5065e(double d) {
            this.f17655a = d;
        }

        public String toString() {
            return String.format("x = %g", Double.valueOf(this.f17655a));
        }
    }

    /* renamed from: a */
    public static C5062b m24580a(double d, double d2) {
        C4933n.m24791a(C5057b.m24590c(d) && C5057b.m24590c(d2));
        return new C5062b(d, d2);
    }

    /* renamed from: a */
    public static AbstractC5060d m24582a() {
        return C5063c.f17652a;
    }

    /* renamed from: a */
    public static AbstractC5060d m24581a(double d) {
        C4933n.m24791a(C5057b.m24590c(d));
        return new C5064d(0.0d, d);
    }

    /* renamed from: b */
    public static AbstractC5060d m24579b(double d) {
        C4933n.m24791a(C5057b.m24590c(d));
        return new C5065e(d);
    }
}
