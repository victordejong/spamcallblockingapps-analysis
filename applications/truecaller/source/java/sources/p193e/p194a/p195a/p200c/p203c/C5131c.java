package p193e.p194a.p195a.p200c.p203c;

import android.content.ContentResolver;
import com.truecaller.messaging.conversation.draft.DraftArguments;
import java.util.Objects;
import javax.inject.Provider;
import o3.c.a;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.AbstractC19091q0;
import p193e.p194a.p1114o5.AbstractC19108u0;
import p193e.p194a.p1114o5.AbstractC19126x;
import p193e.p194a.p1114o5.C19112v1;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.C19236j;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p200c.p218o8.AbstractC5632a;
import p193e.p194a.p195a.p200c.p218o8.AbstractC5633b;
import p193e.p194a.p195a.p200c.p218o8.AbstractC5634c;
import p193e.p194a.p195a.p200c.p218o8.AbstractC5639g;
import p193e.p194a.p195a.p200c.p218o8.C5636e;
import p193e.p194a.p195a.p200c.p218o8.C5643i;
import p193e.p194a.p195a.p223c1.AbstractC5854d;
import p193e.p194a.p195a.p241i1.C6395c;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import p193e.p194a.p195a.p280s0.AbstractC7249d;
import p193e.p194a.p372b0.p430q.AbstractC8571b;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p837h0.AbstractC14840m;
import s1.w.f;
/* renamed from: e.a.a.c.c.c */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/c/c.class */
public final class C5131c {

    /* renamed from: a */
    public final AbstractC15539j2 f17535a;

    /* renamed from: b */
    public final C5143k f17536b;

    /* renamed from: c */
    public final C5131c f17537c = this;

    /* renamed from: d */
    public Provider<AbstractC5148p> f17538d = new a();

    /* renamed from: e */
    public Provider<C5643i> f17539e;

    /* renamed from: f */
    public Provider<AbstractC5639g> f17540f;

    /* renamed from: g */
    public Provider<C5150r> f17541g;

    /* renamed from: h */
    public Provider<C5141i> f17542h;

    /* renamed from: i */
    public Provider<AbstractC5145m> f17543i;

    /* renamed from: j */
    public Provider<C5636e> f17544j;

    /* renamed from: k */
    public Provider<AbstractC5634c> f17545k;

    /* renamed from: e.a.a.c.c.c$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/c$b.class */
    public static final class C5133b<T> implements Provider<T> {

        /* renamed from: a */
        public final C5131c f17546a;

        /* renamed from: b */
        public final int f17547b;

        public C5133b(C5131c c5131c, int i) {
            this.f17546a = c5131c;
            this.f17547b = i;
        }

        public T get() {
            int i = this.f17547b;
            if (i != 0) {
                if (i == 1) {
                    C5131c c5131c = this.f17546a;
                    f mo12378g = c5131c.f17535a.mo12378g();
                    Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
                    AbstractC19870l mo12119z1 = c5131c.f17535a.mo12119z1();
                    Objects.requireNonNull(mo12119z1, "Cannot return null from a non-@Nullable component method");
                    AbstractC19854f<AbstractC6485m> mo12224r4 = c5131c.f17535a.mo12224r4();
                    Objects.requireNonNull(mo12224r4, "Cannot return null from a non-@Nullable component method");
                    o3.a a = b.a(c5131c.f17538d);
                    AbstractC6489q mo12466Z5 = c5131c.f17535a.mo12466Z5();
                    Objects.requireNonNull(mo12466Z5, "Cannot return null from a non-@Nullable component method");
                    return (T) new C5643i(mo12378g, mo12119z1, mo12224r4, a, mo12466Z5);
                } else if (i == 2) {
                    C5131c c5131c2 = this.f17546a;
                    return (T) new C5141i(C10480a.m26003X(c5131c2.f17536b), (AbstractC5147o) c5131c2.f17538d.get(), (AbstractC5144l) c5131c2.f17538d.get());
                } else if (i != 3) {
                    throw new AssertionError(this.f17547b);
                } else {
                    C5131c c5131c3 = this.f17546a;
                    AbstractC5633b abstractC5633b = (AbstractC5633b) c5131c3.f17540f.get();
                    AbstractC5632a abstractC5632a = (AbstractC5632a) c5131c3.f17540f.get();
                    AbstractC19022f0 mo12377g0 = c5131c3.f17535a.mo12377g0();
                    Objects.requireNonNull(mo12377g0, "Cannot return null from a non-@Nullable component method");
                    AbstractC6489q mo12466Z52 = c5131c3.f17535a.mo12466Z5();
                    Objects.requireNonNull(mo12466Z52, "Cannot return null from a non-@Nullable component method");
                    return (T) new C5636e(abstractC5633b, abstractC5632a, mo12377g0, mo12466Z52);
                }
            }
            C5131c c5131c4 = this.f17546a;
            f mo12378g2 = c5131c4.f17535a.mo12378g();
            Objects.requireNonNull(mo12378g2, "Cannot return null from a non-@Nullable component method");
            DraftArguments m26003X = C10480a.m26003X(c5131c4.f17536b);
            AbstractC19854f<AbstractC19091q0> mo12739F0 = c5131c4.f17535a.mo12739F0();
            Objects.requireNonNull(mo12739F0, "Cannot return null from a non-@Nullable component method");
            AbstractC19108u0 mo12563S1 = c5131c4.f17535a.mo12563S1();
            Objects.requireNonNull(mo12563S1, "Cannot return null from a non-@Nullable component method");
            AbstractC6489q mo12466Z53 = c5131c4.f17535a.mo12466Z5();
            Objects.requireNonNull(mo12466Z53, "Cannot return null from a non-@Nullable component method");
            AbstractC5854d mo12115z5 = c5131c4.f17535a.mo12115z5();
            Objects.requireNonNull(mo12115z5, "Cannot return null from a non-@Nullable component method");
            AbstractC7249d mo12167v7 = c5131c4.f17535a.mo12167v7();
            Objects.requireNonNull(mo12167v7, "Cannot return null from a non-@Nullable component method");
            AbstractC6392i0 mo12565S = c5131c4.f17535a.mo12565S();
            Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
            ContentResolver mo11652Z = c5131c4.f17535a.mo11652Z();
            Objects.requireNonNull(mo11652Z, "Cannot return null from a non-@Nullable component method");
            C19112v1 c19112v1 = new C19112v1(mo11652Z);
            C19236j c19236j = new C19236j();
            AbstractC19854f<AbstractC19126x> mo12201t1 = c5131c4.f17535a.mo12201t1();
            Objects.requireNonNull(mo12201t1, "Cannot return null from a non-@Nullable component method");
            AbstractC19223c0 mo12349i = c5131c4.f17535a.mo12349i();
            Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
            AbstractC6489q mo12466Z54 = c5131c4.f17535a.mo12466Z5();
            Objects.requireNonNull(mo12466Z54, "Cannot return null from a non-@Nullable component method");
            AbstractC18951b0 mo12399e7 = c5131c4.f17535a.mo12399e7();
            Objects.requireNonNull(mo12399e7, "Cannot return null from a non-@Nullable component method");
            C20592g mo11648b = c5131c4.f17535a.mo11648b();
            Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
            AbstractC14840m mo11655T = c5131c4.f17535a.mo11655T();
            Objects.requireNonNull(mo11655T, "Cannot return null from a non-@Nullable component method");
            AbstractC6392i0 mo12565S2 = c5131c4.f17535a.mo12565S();
            Objects.requireNonNull(mo12565S2, "Cannot return null from a non-@Nullable component method");
            AbstractC19222c mo11637k = c5131c4.f17535a.mo11637k();
            Objects.requireNonNull(mo11637k, "Cannot return null from a non-@Nullable component method");
            C6395c c6395c = new C6395c(mo12349i, mo12466Z54, mo12399e7, mo11648b, mo11655T, mo12565S2, mo11637k);
            AbstractC19223c0 mo12349i2 = c5131c4.f17535a.mo12349i();
            Objects.requireNonNull(mo12349i2, "Cannot return null from a non-@Nullable component method");
            AbstractC8571b mo12317k4 = c5131c4.f17535a.mo12317k4();
            Objects.requireNonNull(mo12317k4, "Cannot return null from a non-@Nullable component method");
            AbstractC18951b0 mo12399e72 = c5131c4.f17535a.mo12399e7();
            Objects.requireNonNull(mo12399e72, "Cannot return null from a non-@Nullable component method");
            DraftArguments m26003X2 = C10480a.m26003X(c5131c4.f17536b);
            AbstractC19462a mo12776C4 = c5131c4.f17535a.mo12776C4();
            Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
            C5138f c5138f = new C5138f(m26003X2, mo12776C4);
            AbstractC5639g abstractC5639g = (AbstractC5639g) c5131c4.f17540f.get();
            C20592g mo11648b2 = c5131c4.f17535a.mo11648b();
            Objects.requireNonNull(mo11648b2, "Cannot return null from a non-@Nullable component method");
            AbstractC6708t mo12524V0 = c5131c4.f17535a.mo12524V0();
            Objects.requireNonNull(mo12524V0, "Cannot return null from a non-@Nullable component method");
            return (T) new C5150r(mo12378g2, m26003X, mo12739F0, mo12563S1, mo12466Z53, mo12115z5, mo12167v7, mo12565S, c19112v1, c19236j, mo12201t1, c6395c, mo12349i2, mo12317k4, mo12399e72, c5138f, abstractC5639g, mo11648b2, mo12524V0);
        }
    }

    public C5131c(C5143k c5143k, AbstractC15539j2 abstractC15539j2, C5132a c5132a) {
        this.f17535a = abstractC15539j2;
        this.f17536b = c5143k;
        C5133b c5133b = new C5133b(this, 1);
        this.f17539e = c5133b;
        this.f17540f = b.b(c5133b);
        C5133b c5133b2 = new C5133b(this, 0);
        this.f17541g = c5133b2;
        a.a(this.f17538d, b.b(c5133b2));
        C5133b c5133b3 = new C5133b(this, 2);
        this.f17542h = c5133b3;
        this.f17543i = b.b(c5133b3);
        C5133b c5133b4 = new C5133b(this, 3);
        this.f17544j = c5133b4;
        this.f17545k = b.b(c5133b4);
    }
}
