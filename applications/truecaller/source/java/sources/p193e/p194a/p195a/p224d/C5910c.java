package p193e.p194a.p195a.p224d;

import android.content.ContentResolver;
import android.content.Context;
import com.truecaller.messaging.newconversation.NewConversationPresenter;
import java.util.Objects;
import javax.inject.Provider;
import o3.a;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.AbstractC19057m;
import p193e.p194a.p1114o5.AbstractC19091q0;
import p193e.p194a.p1114o5.C19112v1;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.C6313h0;
import p193e.p194a.p195a.p223c1.AbstractC5854d;
import p193e.p194a.p195a.p231g.AbstractC6115g;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p241i1.AbstractC6394b;
import p193e.p194a.p195a.p241i1.C6395c;
import p193e.p194a.p195a.p244k.p245a.AbstractC6653z0;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p751f4.p762g.AbstractC14028r;
import p193e.p194a.p837h0.AbstractC14840m;
import p193e.p194a.p997k3.p1000l.AbstractC16498f;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.d.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/c.class */
public final class C5910c {

    /* renamed from: a */
    public final AbstractC15539j2 f19746a;

    /* renamed from: b */
    public final C5925m f19747b;

    /* renamed from: e */
    public Provider<C5919g> f19750e;

    /* renamed from: f */
    public Provider<AbstractC5918f> f19751f;

    /* renamed from: g */
    public Provider<C5917e> f19752g;

    /* renamed from: h */
    public Provider<AbstractC5926n> f19753h;

    /* renamed from: i */
    public Provider<C5922j> f19754i;

    /* renamed from: j */
    public Provider<AbstractC5928p> f19755j;

    /* renamed from: k */
    public Provider<C6395c> f19756k;

    /* renamed from: l */
    public Provider<AbstractC6394b> f19757l;

    /* renamed from: n */
    public Provider<NewConversationPresenter> f19759n;

    /* renamed from: o */
    public Provider<AbstractC5936t> f19760o;

    /* renamed from: c */
    public final C5910c f19748c = this;

    /* renamed from: d */
    public Provider<AbstractC6248w> f19749d = new C5912b(this, 1);

    /* renamed from: m */
    public Provider<AbstractC19854f<AbstractC6233m>> f19758m = new C5912b(this, 6);

    /* renamed from: e.a.a.d.c$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/c$b.class */
    public static final class C5912b<T> implements Provider<T> {

        /* renamed from: a */
        public final C5910c f19761a;

        /* renamed from: b */
        public final int f19762b;

        public C5912b(C5910c c5910c, int i) {
            this.f19761a = c5910c;
            this.f19762b = i;
        }

        public T get() {
            switch (this.f19762b) {
                case 0:
                    C5910c c5910c = this.f19761a;
                    f mo12378g = c5910c.f19746a.mo12378g();
                    Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
                    f mo12606P = c5910c.f19746a.mo12606P();
                    Objects.requireNonNull(mo12606P, "Cannot return null from a non-@Nullable component method");
                    Objects.requireNonNull(c5910c.f19747b);
                    boolean z = c5910c.f19747b.f19818c;
                    AbstractC8621z mo12296m = c5910c.f19746a.mo12296m();
                    Objects.requireNonNull(mo12296m, "Cannot return null from a non-@Nullable component method");
                    AbstractC19022f0 mo12377g0 = c5910c.f19746a.mo12377g0();
                    Objects.requireNonNull(mo12377g0, "Cannot return null from a non-@Nullable component method");
                    AbstractC19510i0 mo12264o4 = c5910c.f19746a.mo12264o4();
                    Objects.requireNonNull(mo12264o4, "Cannot return null from a non-@Nullable component method");
                    a a = b.a(c5910c.f19749d);
                    AbstractC5854d mo12115z5 = c5910c.f19746a.mo12115z5();
                    Objects.requireNonNull(mo12115z5, "Cannot return null from a non-@Nullable component method");
                    AbstractC13497p mo11636l = c5910c.f19746a.mo11636l();
                    Objects.requireNonNull(mo11636l, "Cannot return null from a non-@Nullable component method");
                    AbstractC5918f abstractC5918f = (AbstractC5918f) c5910c.f19751f.get();
                    C5925m c5925m = c5910c.f19747b;
                    C19235i0 c19235i0 = new C19235i0(c5925m.f19816a);
                    l.e(c19235i0, "themedResourceProvider");
                    C6313h0 c6313h0 = new C6313h0(c19235i0, c5925m.f19816a);
                    AbstractC19854f<AbstractC19091q0> mo12739F0 = c5910c.f19746a.mo12739F0();
                    Objects.requireNonNull(mo12739F0, "Cannot return null from a non-@Nullable component method");
                    AbstractC5926n abstractC5926n = (AbstractC5926n) c5910c.f19753h.get();
                    AbstractC5928p abstractC5928p = (AbstractC5928p) c5910c.f19755j.get();
                    AbstractC5931s m25953h2 = C10480a.m25953h2(c5910c.f19747b);
                    C20592g mo11648b = c5910c.f19746a.mo11648b();
                    Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
                    AbstractC19854f<AbstractC6485m> mo12224r4 = c5910c.f19746a.mo12224r4();
                    Objects.requireNonNull(mo12224r4, "Cannot return null from a non-@Nullable component method");
                    AbstractC6392i0 mo12565S = c5910c.f19746a.mo12565S();
                    Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
                    AbstractC19854f<AbstractC19463a0> mo12217s = c5910c.f19746a.mo12217s();
                    Objects.requireNonNull(mo12217s, "Cannot return null from a non-@Nullable component method");
                    AbstractC8438a mo12484Y = c5910c.f19746a.mo12484Y();
                    Objects.requireNonNull(mo12484Y, "Cannot return null from a non-@Nullable component method");
                    C5925m c5925m2 = c5910c.f19747b;
                    ContentResolver mo11652Z = c5910c.f19746a.mo11652Z();
                    Objects.requireNonNull(mo11652Z, "Cannot return null from a non-@Nullable component method");
                    Objects.requireNonNull(c5925m2);
                    l.e(mo11652Z, "contentResolver");
                    C19112v1 c19112v1 = new C19112v1(mo11652Z);
                    Context mo12335j = c5910c.f19746a.mo12335j();
                    Objects.requireNonNull(mo12335j, "Cannot return null from a non-@Nullable component method");
                    AbstractC19870l mo12119z1 = c5910c.f19746a.mo12119z1();
                    Objects.requireNonNull(mo12119z1, "Cannot return null from a non-@Nullable component method");
                    AbstractC6653z0 mo12376g1 = c5910c.f19746a.mo12376g1();
                    Objects.requireNonNull(mo12376g1, "Cannot return null from a non-@Nullable component method");
                    AbstractC19057m mo12440b7 = c5910c.f19746a.mo12440b7();
                    Objects.requireNonNull(mo12440b7, "Cannot return null from a non-@Nullable component method");
                    return (T) new NewConversationPresenter(mo12378g, mo12606P, 300L, z, mo12296m, mo12377g0, mo12264o4, a, mo12115z5, mo11636l, abstractC5918f, c6313h0, mo12739F0, abstractC5926n, abstractC5928p, m25953h2, mo11648b, mo12224r4, mo12565S, mo12217s, mo12484Y, c19112v1, mo12335j, mo12119z1, mo12376g1, mo12440b7, (AbstractC6394b) c5910c.f19757l.get(), b.a(c5910c.f19758m));
                case 1:
                    T t = (T) this.f19761a.f19746a.mo12144x3();
                    Objects.requireNonNull(t, "Cannot return null from a non-@Nullable component method");
                    return t;
                case 2:
                    C5910c c5910c2 = this.f19761a;
                    AbstractC8432l mo12809A = c5910c2.f19746a.mo12809A();
                    Objects.requireNonNull(mo12809A, "Cannot return null from a non-@Nullable component method");
                    AbstractC14028r mo12605P0 = c5910c2.f19746a.mo12605P0();
                    Objects.requireNonNull(mo12605P0, "Cannot return null from a non-@Nullable component method");
                    ContentResolver mo11652Z2 = c5910c2.f19746a.mo11652Z();
                    Objects.requireNonNull(mo11652Z2, "Cannot return null from a non-@Nullable component method");
                    AbstractC6115g mo12491X6 = c5910c2.f19746a.mo12491X6();
                    Objects.requireNonNull(mo12491X6, "Cannot return null from a non-@Nullable component method");
                    AbstractC5931s m25953h22 = C10480a.m25953h2(c5910c2.f19747b);
                    C20592g mo11648b2 = c5910c2.f19746a.mo11648b();
                    Objects.requireNonNull(mo11648b2, "Cannot return null from a non-@Nullable component method");
                    return (T) new C5919g(mo12809A, mo12605P0, mo11652Z2, mo12491X6, m25953h22, mo11648b2);
                case 3:
                    C5910c c5910c3 = this.f19761a;
                    AbstractC19022f0 mo12377g02 = c5910c3.f19746a.mo12377g0();
                    Objects.requireNonNull(mo12377g02, "Cannot return null from a non-@Nullable component method");
                    AbstractC16498f mo12242q0 = c5910c3.f19746a.mo12242q0();
                    Objects.requireNonNull(mo12242q0, "Cannot return null from a non-@Nullable component method");
                    AbstractC5931s m25953h23 = C10480a.m25953h2(c5910c3.f19747b);
                    AbstractC19223c0 mo12349i = c5910c3.f19746a.mo12349i();
                    Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
                    AbstractC6392i0 mo12565S2 = c5910c3.f19746a.mo12565S();
                    Objects.requireNonNull(mo12565S2, "Cannot return null from a non-@Nullable component method");
                    C8601l0 mo12754E = c5910c3.f19746a.mo12754E();
                    Objects.requireNonNull(mo12754E, "Cannot return null from a non-@Nullable component method");
                    return (T) new C5917e(mo12377g02, mo12242q0, m25953h23, mo12349i, mo12565S2, mo12754E);
                case 4:
                    C5910c c5910c4 = this.f19761a;
                    AbstractC5931s m25953h24 = C10480a.m25953h2(c5910c4.f19747b);
                    AbstractC19022f0 mo12377g03 = c5910c4.f19746a.mo12377g0();
                    Objects.requireNonNull(mo12377g03, "Cannot return null from a non-@Nullable component method");
                    C20592g mo11648b3 = c5910c4.f19746a.mo11648b();
                    Objects.requireNonNull(mo11648b3, "Cannot return null from a non-@Nullable component method");
                    AbstractC6392i0 mo12565S3 = c5910c4.f19746a.mo12565S();
                    Objects.requireNonNull(mo12565S3, "Cannot return null from a non-@Nullable component method");
                    AbstractC19510i0 mo12264o42 = c5910c4.f19746a.mo12264o4();
                    Objects.requireNonNull(mo12264o42, "Cannot return null from a non-@Nullable component method");
                    return (T) new C5922j(m25953h24, mo12377g03, mo11648b3, mo12565S3, mo12264o42);
                case 5:
                    C5910c c5910c5 = this.f19761a;
                    AbstractC19223c0 mo12349i2 = c5910c5.f19746a.mo12349i();
                    Objects.requireNonNull(mo12349i2, "Cannot return null from a non-@Nullable component method");
                    AbstractC6489q mo12466Z5 = c5910c5.f19746a.mo12466Z5();
                    Objects.requireNonNull(mo12466Z5, "Cannot return null from a non-@Nullable component method");
                    AbstractC18951b0 mo12399e7 = c5910c5.f19746a.mo12399e7();
                    Objects.requireNonNull(mo12399e7, "Cannot return null from a non-@Nullable component method");
                    C20592g mo11648b4 = c5910c5.f19746a.mo11648b();
                    Objects.requireNonNull(mo11648b4, "Cannot return null from a non-@Nullable component method");
                    AbstractC14840m mo11655T = c5910c5.f19746a.mo11655T();
                    Objects.requireNonNull(mo11655T, "Cannot return null from a non-@Nullable component method");
                    AbstractC6392i0 mo12565S4 = c5910c5.f19746a.mo12565S();
                    Objects.requireNonNull(mo12565S4, "Cannot return null from a non-@Nullable component method");
                    AbstractC19222c mo11637k = c5910c5.f19746a.mo11637k();
                    Objects.requireNonNull(mo11637k, "Cannot return null from a non-@Nullable component method");
                    return (T) new C6395c(mo12349i2, mo12466Z5, mo12399e7, mo11648b4, mo11655T, mo12565S4, mo11637k);
                case 6:
                    T t2 = (T) this.f19761a.f19746a.mo12453a7();
                    Objects.requireNonNull(t2, "Cannot return null from a non-@Nullable component method");
                    return t2;
                default:
                    throw new AssertionError(this.f19762b);
            }
        }
    }

    public C5910c(C5925m c5925m, AbstractC15539j2 abstractC15539j2, C5911a c5911a) {
        this.f19746a = abstractC15539j2;
        this.f19747b = c5925m;
        C5912b c5912b = new C5912b(this, 2);
        this.f19750e = c5912b;
        this.f19751f = b.b(c5912b);
        C5912b c5912b2 = new C5912b(this, 3);
        this.f19752g = c5912b2;
        this.f19753h = b.b(c5912b2);
        C5912b c5912b3 = new C5912b(this, 4);
        this.f19754i = c5912b3;
        this.f19755j = b.b(c5912b3);
        C5912b c5912b4 = new C5912b(this, 5);
        this.f19756k = c5912b4;
        this.f19757l = b.b(c5912b4);
        C5912b c5912b5 = new C5912b(this, 0);
        this.f19759n = c5912b5;
        this.f19760o = b.b(c5912b5);
    }
}
