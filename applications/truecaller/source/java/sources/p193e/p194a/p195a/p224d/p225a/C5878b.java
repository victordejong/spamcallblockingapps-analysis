package p193e.p194a.p195a.p224d.p225a;

import android.content.Context;
import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.AbstractC19057m;
import p193e.p194a.p1129p5.AbstractC19218a;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p244k.p245a.AbstractC6653z0;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.d.a.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/a/b.class */
public final class C5878b {

    /* renamed from: a */
    public final AbstractC15539j2 f19647a;

    /* renamed from: b */
    public final C5881c f19648b;

    /* renamed from: c */
    public final C5878b f19649c = this;

    /* renamed from: d */
    public Provider<C5889i> f19650d;

    /* renamed from: e */
    public Provider<AbstractC5883e> f19651e;

    /* renamed from: f */
    public Provider<C5893m> f19652f;

    /* renamed from: g */
    public Provider<AbstractC5884f> f19653g;

    /* renamed from: e.a.a.d.a.b$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/a/b$b.class */
    public static final class C5880b<T> implements Provider<T> {

        /* renamed from: a */
        public final C5878b f19654a;

        /* renamed from: b */
        public final int f19655b;

        public C5880b(C5878b c5878b, int i) {
            this.f19654a = c5878b;
            this.f19655b = i;
        }

        public T get() {
            int i = this.f19655b;
            if (i != 0) {
                if (i != 1) {
                    throw new AssertionError(this.f19655b);
                }
                C5878b c5878b = this.f19654a;
                AbstractC19022f0 mo12377g0 = c5878b.f19647a.mo12377g0();
                Objects.requireNonNull(mo12377g0, "Cannot return null from a non-@Nullable component method");
                AbstractC6392i0 mo12565S = c5878b.f19647a.mo12565S();
                Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
                AbstractC8541a mo12420d = c5878b.f19647a.mo12420d();
                Objects.requireNonNull(mo12420d, "Cannot return null from a non-@Nullable component method");
                Context mo12335j = c5878b.f19647a.mo12335j();
                Objects.requireNonNull(mo12335j, "Cannot return null from a non-@Nullable component method");
                return (T) new C5889i(mo12377g0, mo12565S, mo12420d, new C19235i0(mo12335j));
            }
            C5878b c5878b2 = this.f19654a;
            f mo12315k6 = c5878b2.f19647a.mo12315k6();
            Objects.requireNonNull(mo12315k6, "Cannot return null from a non-@Nullable component method");
            f mo12378g = c5878b2.f19647a.mo12378g();
            Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
            C5881c c5881c = c5878b2.f19648b;
            AbstractC19870l mo12119z1 = c5878b2.f19647a.mo12119z1();
            Objects.requireNonNull(mo12119z1, "Cannot return null from a non-@Nullable component method");
            Objects.requireNonNull(c5881c);
            l.e(mo12119z1, "actorsThreads");
            AbstractC19868j mo11845d = mo12119z1.mo11845d();
            l.d(mo11845d, "actorsThreads.ui()");
            AbstractC19854f<AbstractC6485m> mo12224r4 = c5878b2.f19647a.mo12224r4();
            Objects.requireNonNull(mo12224r4, "Cannot return null from a non-@Nullable component method");
            AbstractC19219a0 mo11647c = c5878b2.f19647a.mo11647c();
            Objects.requireNonNull(mo11647c, "Cannot return null from a non-@Nullable component method");
            AbstractC6653z0 mo12376g1 = c5878b2.f19647a.mo12376g1();
            Objects.requireNonNull(mo12376g1, "Cannot return null from a non-@Nullable component method");
            AbstractC19057m mo12440b7 = c5878b2.f19647a.mo12440b7();
            Objects.requireNonNull(mo12440b7, "Cannot return null from a non-@Nullable component method");
            AbstractC19218a mo12680J5 = c5878b2.f19647a.mo12680J5();
            Objects.requireNonNull(mo12680J5, "Cannot return null from a non-@Nullable component method");
            AbstractC19321u mo12725G1 = c5878b2.f19647a.mo12725G1();
            Objects.requireNonNull(mo12725G1, "Cannot return null from a non-@Nullable component method");
            AbstractC5883e abstractC5883e = (AbstractC5883e) c5878b2.f19651e.get();
            AbstractC19462a mo12776C4 = c5878b2.f19647a.mo12776C4();
            Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
            return (T) new C5893m(mo12315k6, mo12378g, mo11845d, mo12224r4, mo11647c, mo12376g1, mo12440b7, mo12680J5, mo12725G1, abstractC5883e, mo12776C4);
        }
    }

    public C5878b(C5881c c5881c, AbstractC15539j2 abstractC15539j2, C5879a c5879a) {
        this.f19647a = abstractC15539j2;
        this.f19648b = c5881c;
        C5880b c5880b = new C5880b(this, 1);
        this.f19650d = c5880b;
        this.f19651e = b.b(c5880b);
        C5880b c5880b2 = new C5880b(this, 0);
        this.f19652f = c5880b2;
        this.f19653g = b.b(c5880b2);
    }
}
