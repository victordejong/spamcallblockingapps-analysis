package p193e.p194a.p1195s.p1201n.p1203b;

import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p1727n3.p1834m0.AbstractC26857y;
import p193e.p194a.p1129p5.AbstractC19237j0;
import p193e.p194a.p1195s.AbstractC20009b;
import p193e.p194a.p1195s.p1212s.AbstractC20168a;
import p193e.p194a.p1195s.p1212s.AbstractC20177c;
import p193e.p194a.p837h0.AbstractC14840m;
import s1.w.f;
/* renamed from: e.a.s.n.b.f */
/* loaded from: classes17-dex2jar.jar:e/a/s/n/b/f.class */
public final class C20076f {

    /* renamed from: a */
    public final AbstractC20009b f56664a;

    /* renamed from: b */
    public final C20076f f56665b = this;

    /* renamed from: c */
    public Provider<C20075e> f56666c;

    /* renamed from: d */
    public Provider<AbstractC20072b> f56667d;

    /* renamed from: e.a.s.n.b.f$b */
    /* loaded from: classes17-dex2jar.jar:e/a/s/n/b/f$b.class */
    public static final class C20078b<T> implements Provider<T> {

        /* renamed from: a */
        public final C20076f f56668a;

        public C20078b(C20076f c20076f, int i) {
            this.f56668a = c20076f;
        }

        public T get() {
            C20076f c20076f = this.f56668a;
            f mo11644e = c20076f.f56664a.mo11644e();
            Objects.requireNonNull(mo11644e, "Cannot return null from a non-@Nullable component method");
            AbstractC20177c mo11641g3 = c20076f.f56664a.mo11641g3();
            Objects.requireNonNull(mo11641g3, "Cannot return null from a non-@Nullable component method");
            AbstractC20168a mo11660A = c20076f.f56664a.mo11660A();
            Objects.requireNonNull(mo11660A, "Cannot return null from a non-@Nullable component method");
            AbstractC19237j0 mo11635p = c20076f.f56664a.mo11635p();
            Objects.requireNonNull(mo11635p, "Cannot return null from a non-@Nullable component method");
            AbstractC14840m mo11655T = c20076f.f56664a.mo11655T();
            Objects.requireNonNull(mo11655T, "Cannot return null from a non-@Nullable component method");
            AbstractC26857y mo11659D = c20076f.f56664a.mo11659D();
            Objects.requireNonNull(mo11659D, "Cannot return null from a non-@Nullable component method");
            return (T) new C20075e(mo11644e, mo11641g3, mo11660A, mo11635p, mo11655T, mo11659D);
        }
    }

    public C20076f(AbstractC20009b abstractC20009b, C20077a c20077a) {
        this.f56664a = abstractC20009b;
        C20078b c20078b = new C20078b(this, 0);
        this.f56666c = c20078b;
        this.f56667d = b.b(c20078b);
    }
}
