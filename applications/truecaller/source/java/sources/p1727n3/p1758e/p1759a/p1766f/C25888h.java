package p1727n3.p1758e.p1759a.p1766f;

import java.util.concurrent.Executor;
import n3.e.a.d.a;
import n3.e.a.e.z0;
import p1727n3.p1758e.p1759a.p1760d.a$a;
import p1727n3.p1758e.p1759a.p1761e.RunnableC25757j0;
import p1727n3.p1758e.p1759a.p1761e.z0$c;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0;
import p1727n3.p1790h.p1791a.C26247b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.a.f.h */
/* loaded from: classes-dex2jar.jar:n3/e/a/f/h.class */
public final class C25888h {

    /* renamed from: c */
    public final z0 f72418c;

    /* renamed from: d */
    public final Executor f72419d;

    /* renamed from: g */
    public C26247b<Void> f72422g;

    /* renamed from: a */
    public boolean f72416a = false;

    /* renamed from: b */
    public boolean f72417b = false;

    /* renamed from: e */
    public final Object f72420e = new Object();

    /* renamed from: f */
    public a$a f72421f = new a$a();

    /* renamed from: h */
    public final z0$c f72423h = new z0$c() { // from class: n3.e.a.f.c
        @Override // p1727n3.p1758e.p1759a.p1761e.z0$c
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean mo2925a(android.hardware.camera2.TotalCaptureResult r4) {
            /*
                r3 = this;
                r0 = r3
                n3.e.a.f.h r0 = p1727n3.p1758e.p1759a.p1766f.C25888h.this
                r5 = r0
                r0 = r5
                n3.h.a.b<java.lang.Void> r0 = r0.f72422g
                if (r0 == 0) goto L4f
                r0 = r4
                android.hardware.camera2.CaptureRequest r0 = r0.getRequest()
                java.lang.Object r0 = r0.getTag()
                r4 = r0
                r0 = r4
                boolean r0 = r0 instanceof p1727n3.p1758e.p1767b.p1768j1.C25996o1
                if (r0 == 0) goto L4f
                r0 = r4
                n3.e.b.j1.o1 r0 = (p1727n3.p1758e.p1767b.p1768j1.C25996o1) r0
                java.util.Map<java.lang.String, java.lang.Integer> r0 = r0.f72648a
                java.lang.String r1 = "Camera2CameraControl"
                java.lang.Object r0 = r0.get(r1)
                java.lang.Integer r0 = (java.lang.Integer) r0
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L4f
                r0 = r4
                r1 = r5
                n3.h.a.b<java.lang.Void> r1 = r1.f72422g
                int r1 = r1.hashCode()
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L4f
                r0 = r5
                n3.h.a.b<java.lang.Void> r0 = r0.f72422g
                r4 = r0
                r0 = r5
                r1 = 0
                r0.f72422g = r1
                goto L51
            L4f:
                r0 = 0
                r4 = r0
            L51:
                r0 = r4
                if (r0 == 0) goto L5b
                r0 = r4
                r1 = 0
                boolean r0 = r0.m2258a(r1)
            L5b:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1758e.p1759a.p1766f.C25883c.mo2925a(android.hardware.camera2.TotalCaptureResult):boolean");
        }
    };

    public C25888h(z0 z0Var, Executor executor) {
        this.f72418c = z0Var;
        this.f72419d = executor;
    }

    /* renamed from: a */
    public a m2924a() {
        a m3041a;
        synchronized (this.f72420e) {
            C26247b<Void> c26247b = this.f72422g;
            if (c26247b != null) {
                this.f72421f.f71998a.z(a.w, AbstractC25968j0.EnumC25971c.OPTIONAL, Integer.valueOf(c26247b.hashCode()));
            }
            m3041a = this.f72421f.m3041a();
        }
        return m3041a;
    }

    /* renamed from: b */
    public final void m2923b(C26247b<Void> c26247b) {
        this.f72417b = true;
        C26247b<Void> c26247b2 = this.f72422g;
        if (c26247b2 == null) {
            c26247b2 = null;
        }
        this.f72422g = c26247b;
        if (this.f72416a) {
            z0 z0Var = this.f72418c;
            z0Var.b.execute(new RunnableC25757j0(z0Var));
            this.f72417b = false;
        }
        if (c26247b2 != null) {
            C22128a.m8715F0("Camera2CameraControl was updated with new options.", c26247b2);
        }
    }
}
