package p193e.p194a.p1195s.p1207q.p1210g;

import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.p1129p5.AbstractC19237j0;
import p193e.p194a.p1195s.AbstractC20009b;
import p193e.p194a.p1195s.p1212s.AbstractC20168a;
import p193e.p194a.p1195s.p1212s.AbstractC20177c;
import p193e.p194a.p1195s.p1212s.AbstractC20187i;
import s1.w.f;
/* renamed from: e.a.s.q.g.a */
/* loaded from: classes17-dex2jar.jar:e/a/s/q/g/a.class */
public final class C20142a {

    /* renamed from: a */
    public final AbstractC20009b f56785a;

    /* renamed from: b */
    public final C20142a f56786b = this;

    /* renamed from: c */
    public Provider<C20158j> f56787c;

    /* renamed from: d */
    public Provider<AbstractC20155g> f56788d;

    /* renamed from: e.a.s.q.g.a$b */
    /* loaded from: classes17-dex2jar.jar:e/a/s/q/g/a$b.class */
    public static final class C20144b<T> implements Provider<T> {

        /* renamed from: a */
        public final C20142a f56789a;

        public C20144b(C20142a c20142a, int i) {
            this.f56789a = c20142a;
        }

        public T get() {
            C20142a c20142a = this.f56789a;
            f mo11644e = c20142a.f56785a.mo11644e();
            Objects.requireNonNull(mo11644e, "Cannot return null from a non-@Nullable component method");
            AbstractC20187i mo11653Y0 = c20142a.f56785a.mo11653Y0();
            Objects.requireNonNull(mo11653Y0, "Cannot return null from a non-@Nullable component method");
            AbstractC20168a mo11660A = c20142a.f56785a.mo11660A();
            Objects.requireNonNull(mo11660A, "Cannot return null from a non-@Nullable component method");
            AbstractC19237j0 mo11635p = c20142a.f56785a.mo11635p();
            Objects.requireNonNull(mo11635p, "Cannot return null from a non-@Nullable component method");
            AbstractC20177c mo11641g3 = c20142a.f56785a.mo11641g3();
            Objects.requireNonNull(mo11641g3, "Cannot return null from a non-@Nullable component method");
            return (T) new C20158j(mo11644e, mo11653Y0, mo11660A, mo11635p, mo11641g3);
        }
    }

    public C20142a(AbstractC20009b abstractC20009b, C20143a c20143a) {
        this.f56785a = abstractC20009b;
        C20144b c20144b = new C20144b(this, 0);
        this.f56787c = c20144b;
        this.f56788d = b.b(c20144b);
    }
}
