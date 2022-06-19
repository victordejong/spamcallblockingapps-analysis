package p193e.p194a.p1195s.p1201n.p1202a;

import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.p1195s.AbstractC20009b;
import p193e.p194a.p1195s.p1212s.AbstractC20177c;
import p193e.p194a.p1195s.p1212s.AbstractC20179e;
import s1.w.f;
/* renamed from: e.a.s.n.a.k */
/* loaded from: classes17-dex2jar.jar:e/a/s/n/a/k.class */
public final class C20062k {

    /* renamed from: a */
    public final AbstractC20009b f56640a;

    /* renamed from: b */
    public final C20062k f56641b = this;

    /* renamed from: c */
    public Provider<C20061j> f56642c;

    /* renamed from: d */
    public Provider<AbstractC20058g> f56643d;

    /* renamed from: e.a.s.n.a.k$b */
    /* loaded from: classes17-dex2jar.jar:e/a/s/n/a/k$b.class */
    public static final class C20064b<T> implements Provider<T> {

        /* renamed from: a */
        public final C20062k f56644a;

        public C20064b(C20062k c20062k, int i) {
            this.f56644a = c20062k;
        }

        public T get() {
            C20062k c20062k = this.f56644a;
            f mo11644e = c20062k.f56640a.mo11644e();
            Objects.requireNonNull(mo11644e, "Cannot return null from a non-@Nullable component method");
            AbstractC20177c mo11641g3 = c20062k.f56640a.mo11641g3();
            Objects.requireNonNull(mo11641g3, "Cannot return null from a non-@Nullable component method");
            AbstractC20179e mo11632r6 = c20062k.f56640a.mo11632r6();
            Objects.requireNonNull(mo11632r6, "Cannot return null from a non-@Nullable component method");
            return (T) new C20061j(mo11644e, mo11641g3, mo11632r6);
        }
    }

    public C20062k(AbstractC20009b abstractC20009b, C20063a c20063a) {
        this.f56640a = abstractC20009b;
        C20064b c20064b = new C20064b(this, 0);
        this.f56642c = c20064b;
        this.f56643d = b.b(c20064b);
    }
}
