package p193e.p194a.p1195s.p1200m;

import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1129p5.AbstractC19237j0;
import p193e.p194a.p1195s.AbstractC20009b;
import p193e.p194a.p1195s.p1212s.AbstractC20168a;
import p193e.p194a.p1195s.p1212s.AbstractC20177c;
import s1.w.f;
/* renamed from: e.a.s.m.a */
/* loaded from: classes17-dex2jar.jar:e/a/s/m/a.class */
public final class C20032a {

    /* renamed from: a */
    public final AbstractC20009b f56598a;

    /* renamed from: b */
    public final C20032a f56599b = this;

    /* renamed from: c */
    public Provider<C20043e> f56600c;

    /* renamed from: d */
    public Provider<AbstractC20041c> f56601d;

    /* renamed from: e.a.s.m.a$b */
    /* loaded from: classes17-dex2jar.jar:e/a/s/m/a$b.class */
    public static final class C20034b<T> implements Provider<T> {

        /* renamed from: a */
        public final C20032a f56602a;

        public C20034b(C20032a c20032a, int i) {
            this.f56602a = c20032a;
        }

        public T get() {
            C20032a c20032a = this.f56602a;
            f mo11644e = c20032a.f56598a.mo11644e();
            Objects.requireNonNull(mo11644e, "Cannot return null from a non-@Nullable component method");
            AbstractC20177c mo11641g3 = c20032a.f56598a.mo11641g3();
            Objects.requireNonNull(mo11641g3, "Cannot return null from a non-@Nullable component method");
            AbstractC20168a mo11660A = c20032a.f56598a.mo11660A();
            Objects.requireNonNull(mo11660A, "Cannot return null from a non-@Nullable component method");
            AbstractC19237j0 mo11635p = c20032a.f56598a.mo11635p();
            Objects.requireNonNull(mo11635p, "Cannot return null from a non-@Nullable component method");
            AbstractC17197v0 mo11643f = c20032a.f56598a.mo11643f();
            Objects.requireNonNull(mo11643f, "Cannot return null from a non-@Nullable component method");
            return (T) new C20043e(mo11644e, mo11641g3, mo11660A, mo11635p, mo11643f);
        }
    }

    public C20032a(AbstractC20009b abstractC20009b, C20033a c20033a) {
        this.f56598a = abstractC20009b;
        C20034b c20034b = new C20034b(this, 0);
        this.f56600c = c20034b;
        this.f56601d = b.b(c20034b);
    }
}
