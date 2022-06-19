package p193e.p194a.p1195s.p1207q.p1209f;

import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1129p5.AbstractC19237j0;
import p193e.p194a.p1195s.AbstractC20009b;
import p193e.p194a.p1195s.p1211r.AbstractC20164c;
import p193e.p194a.p1195s.p1212s.AbstractC20168a;
import p193e.p194a.p1195s.p1212s.AbstractC20177c;
import p193e.p194a.p1392y2.p1394q.AbstractC21780a;
import p193e.p194a.p372b0.p430q.AbstractC8577e;
import s1.w.f;
/* renamed from: e.a.s.q.f.a */
/* loaded from: classes17-dex2jar.jar:e/a/s/q/f/a.class */
public final class C20128a {

    /* renamed from: a */
    public final AbstractC20009b f56757a;

    /* renamed from: b */
    public final C20128a f56758b = this;

    /* renamed from: c */
    public Provider<C20139e> f56759c;

    /* renamed from: d */
    public Provider<AbstractC20137c> f56760d;

    /* renamed from: e.a.s.q.f.a$b */
    /* loaded from: classes17-dex2jar.jar:e/a/s/q/f/a$b.class */
    public static final class C20130b<T> implements Provider<T> {

        /* renamed from: a */
        public final C20128a f56761a;

        public C20130b(C20128a c20128a, int i) {
            this.f56761a = c20128a;
        }

        public T get() {
            C20128a c20128a = this.f56761a;
            f mo11644e = c20128a.f56757a.mo11644e();
            Objects.requireNonNull(mo11644e, "Cannot return null from a non-@Nullable component method");
            AbstractC19237j0 mo11635p = c20128a.f56757a.mo11635p();
            Objects.requireNonNull(mo11635p, "Cannot return null from a non-@Nullable component method");
            AbstractC20168a mo11660A = c20128a.f56757a.mo11660A();
            Objects.requireNonNull(mo11660A, "Cannot return null from a non-@Nullable component method");
            AbstractC20177c mo11641g3 = c20128a.f56757a.mo11641g3();
            Objects.requireNonNull(mo11641g3, "Cannot return null from a non-@Nullable component method");
            AbstractC20164c mo11658K1 = c20128a.f56757a.mo11658K1();
            Objects.requireNonNull(mo11658K1, "Cannot return null from a non-@Nullable component method");
            AbstractC8577e mo11650a0 = c20128a.f56757a.mo11650a0();
            Objects.requireNonNull(mo11650a0, "Cannot return null from a non-@Nullable component method");
            AbstractC21780a mo11634q = c20128a.f56757a.mo11634q();
            Objects.requireNonNull(mo11634q, "Cannot return null from a non-@Nullable component method");
            AbstractC17197v0 mo11643f = c20128a.f56757a.mo11643f();
            Objects.requireNonNull(mo11643f, "Cannot return null from a non-@Nullable component method");
            return (T) new C20139e(mo11644e, mo11635p, mo11660A, mo11641g3, mo11658K1, mo11650a0, mo11634q, mo11643f);
        }
    }

    public C20128a(AbstractC20009b abstractC20009b, C20129a c20129a) {
        this.f56757a = abstractC20009b;
        C20130b c20130b = new C20130b(this, 0);
        this.f56759c = c20130b;
        this.f56760d = b.b(c20130b);
    }
}
