package p193e.p194a.p1195s.p1201n.p1203b.p1204g;

import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.p1129p5.AbstractC19237j0;
import p193e.p194a.p1195s.AbstractC20009b;
import p193e.p194a.p1195s.p1212s.AbstractC20168a;
import p193e.p194a.p1195s.p1212s.AbstractC20177c;
import p193e.p194a.p1195s.p1212s.AbstractC20187i;
import s1.w.f;
/* renamed from: e.a.s.n.b.g.a */
/* loaded from: classes17-dex2jar.jar:e/a/s/n/b/g/a.class */
public final class C20079a {

    /* renamed from: a */
    public final AbstractC20009b f56669a;

    /* renamed from: b */
    public final C20079a f56670b = this;

    /* renamed from: c */
    public Provider<C20096l> f56671c;

    /* renamed from: d */
    public Provider<AbstractC20093i> f56672d;

    /* renamed from: e.a.s.n.b.g.a$b */
    /* loaded from: classes17-dex2jar.jar:e/a/s/n/b/g/a$b.class */
    public static final class C20081b<T> implements Provider<T> {

        /* renamed from: a */
        public final C20079a f56673a;

        public C20081b(C20079a c20079a, int i) {
            this.f56673a = c20079a;
        }

        public T get() {
            C20079a c20079a = this.f56673a;
            f mo11644e = c20079a.f56669a.mo11644e();
            Objects.requireNonNull(mo11644e, "Cannot return null from a non-@Nullable component method");
            AbstractC20187i mo11653Y0 = c20079a.f56669a.mo11653Y0();
            Objects.requireNonNull(mo11653Y0, "Cannot return null from a non-@Nullable component method");
            AbstractC20168a mo11660A = c20079a.f56669a.mo11660A();
            Objects.requireNonNull(mo11660A, "Cannot return null from a non-@Nullable component method");
            AbstractC19237j0 mo11635p = c20079a.f56669a.mo11635p();
            Objects.requireNonNull(mo11635p, "Cannot return null from a non-@Nullable component method");
            AbstractC20177c mo11641g3 = c20079a.f56669a.mo11641g3();
            Objects.requireNonNull(mo11641g3, "Cannot return null from a non-@Nullable component method");
            return (T) new C20096l(mo11644e, mo11653Y0, mo11660A, mo11635p, mo11641g3);
        }
    }

    public C20079a(AbstractC20009b abstractC20009b, C20080a c20080a) {
        this.f56669a = abstractC20009b;
        C20081b c20081b = new C20081b(this, 0);
        this.f56671c = c20081b;
        this.f56672d = b.b(c20081b);
    }
}
