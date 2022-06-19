package p193e.p194a.p1195s.p1207q.p1208e;

import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.p1129p5.AbstractC19237j0;
import p193e.p194a.p1195s.AbstractC20009b;
import p193e.p194a.p1195s.p1205o.AbstractC20102d;
import p193e.p194a.p1195s.p1212s.AbstractC20168a;
import p193e.p194a.p1195s.p1212s.AbstractC20177c;
import s1.w.f;
/* renamed from: e.a.s.q.e.c */
/* loaded from: classes17-dex2jar.jar:e/a/s/q/e/c.class */
public final class C20116c {

    /* renamed from: a */
    public final AbstractC20009b f56733a;

    /* renamed from: b */
    public final C20116c f56734b = this;

    /* renamed from: c */
    public Provider<C20126h> f56735c;

    /* renamed from: d */
    public Provider<AbstractC20123e> f56736d;

    /* renamed from: e.a.s.q.e.c$b */
    /* loaded from: classes17-dex2jar.jar:e/a/s/q/e/c$b.class */
    public static final class C20118b<T> implements Provider<T> {

        /* renamed from: a */
        public final C20116c f56737a;

        public C20118b(C20116c c20116c, int i) {
            this.f56737a = c20116c;
        }

        public T get() {
            C20116c c20116c = this.f56737a;
            f mo11644e = c20116c.f56733a.mo11644e();
            Objects.requireNonNull(mo11644e, "Cannot return null from a non-@Nullable component method");
            AbstractC20102d mo11654T0 = c20116c.f56733a.mo11654T0();
            Objects.requireNonNull(mo11654T0, "Cannot return null from a non-@Nullable component method");
            C20114b c20114b = new C20114b(mo11654T0);
            AbstractC19237j0 mo11635p = c20116c.f56733a.mo11635p();
            Objects.requireNonNull(mo11635p, "Cannot return null from a non-@Nullable component method");
            AbstractC20168a mo11660A = c20116c.f56733a.mo11660A();
            Objects.requireNonNull(mo11660A, "Cannot return null from a non-@Nullable component method");
            AbstractC20177c mo11641g3 = c20116c.f56733a.mo11641g3();
            Objects.requireNonNull(mo11641g3, "Cannot return null from a non-@Nullable component method");
            return (T) new C20126h(mo11644e, c20114b, mo11635p, mo11660A, mo11641g3);
        }
    }

    public C20116c(AbstractC20009b abstractC20009b, C20117a c20117a) {
        this.f56733a = abstractC20009b;
        C20118b c20118b = new C20118b(this, 0);
        this.f56735c = c20118b;
        this.f56736d = b.b(c20118b);
    }
}
