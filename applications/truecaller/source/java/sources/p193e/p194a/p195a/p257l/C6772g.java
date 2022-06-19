package p193e.p194a.p195a.p257l;

import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p223c1.AbstractC5854d;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p235g1.AbstractC6254b;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p712e4.AbstractC13497p;
import s1.w.f;
/* renamed from: e.a.a.l.g */
/* loaded from: classes10-dex2jar.jar:e/a/a/l/g.class */
public final class C6772g {

    /* renamed from: a */
    public final AbstractC15539j2 f22305a;

    /* renamed from: b */
    public final C6771f f22306b;

    /* renamed from: c */
    public final C6772g f22307c = this;

    /* renamed from: d */
    public Provider<AbstractC8621z> f22308d = new C6774b(this, 1);

    /* renamed from: e */
    public Provider<AbstractC5854d> f22309e = new C6774b(this, 2);

    /* renamed from: f */
    public Provider<AbstractC13497p> f22310f = new C6774b(this, 3);

    /* renamed from: g */
    public Provider<AbstractC6248w> f22311g = new C6774b(this, 4);

    /* renamed from: h */
    public Provider<AbstractC6708t> f22312h = new C6774b(this, 5);

    /* renamed from: i */
    public Provider<AbstractC6254b> f22313i = new C6774b(this, 6);

    /* renamed from: j */
    public Provider<String> f22314j;

    /* renamed from: k */
    public Provider<String> f22315k;

    /* renamed from: l */
    public Provider<String> f22316l;

    /* renamed from: m */
    public Provider<C6765c> f22317m;

    /* renamed from: n */
    public Provider<AbstractC6764b> f22318n;

    /* renamed from: e.a.a.l.g$b */
    /* loaded from: classes10-dex2jar.jar:e/a/a/l/g$b.class */
    public static final class C6774b<T> implements Provider<T> {

        /* renamed from: a */
        public final C6772g f22319a;

        /* renamed from: b */
        public final int f22320b;

        public C6774b(C6772g c6772g, int i) {
            this.f22319a = c6772g;
            this.f22320b = i;
        }

        public T get() {
            switch (this.f22320b) {
                case 0:
                    C6772g c6772g = this.f22319a;
                    f mo12378g = c6772g.f22305a.mo12378g();
                    Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
                    Provider<AbstractC8621z> provider = c6772g.f22308d;
                    Provider<AbstractC5854d> provider2 = c6772g.f22309e;
                    Provider<AbstractC13497p> provider3 = c6772g.f22310f;
                    Provider<AbstractC6248w> provider4 = c6772g.f22311g;
                    f mo12315k6 = c6772g.f22305a.mo12315k6();
                    Objects.requireNonNull(mo12315k6, "Cannot return null from a non-@Nullable component method");
                    Provider<AbstractC6708t> provider5 = c6772g.f22312h;
                    AbstractC19462a mo12776C4 = c6772g.f22305a.mo12776C4();
                    Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
                    C6768e c6768e = new C6768e(provider, provider2, provider3, provider4, mo12315k6, provider5, mo12776C4, c6772g.f22313i);
                    AbstractC6392i0 mo12565S = c6772g.f22305a.mo12565S();
                    Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
                    return (T) new C6765c(mo12378g, c6768e, mo12565S, (String) c6772g.f22314j.get(), (String) c6772g.f22315k.get(), (String) c6772g.f22316l.get());
                case 1:
                    T t = (T) this.f22319a.f22305a.mo12296m();
                    Objects.requireNonNull(t, "Cannot return null from a non-@Nullable component method");
                    return t;
                case 2:
                    T t2 = (T) this.f22319a.f22305a.mo12115z5();
                    Objects.requireNonNull(t2, "Cannot return null from a non-@Nullable component method");
                    return t2;
                case 3:
                    T t3 = (T) this.f22319a.f22305a.mo11636l();
                    Objects.requireNonNull(t3, "Cannot return null from a non-@Nullable component method");
                    return t3;
                case 4:
                    T t4 = (T) this.f22319a.f22305a.mo12144x3();
                    Objects.requireNonNull(t4, "Cannot return null from a non-@Nullable component method");
                    return t4;
                case 5:
                    T t5 = (T) this.f22319a.f22305a.mo12524V0();
                    Objects.requireNonNull(t5, "Cannot return null from a non-@Nullable component method");
                    return t5;
                case 6:
                    T t6 = (T) this.f22319a.f22305a.mo12788B6();
                    Objects.requireNonNull(t6, "Cannot return null from a non-@Nullable component method");
                    return t6;
                case 7:
                    T t7 = (T) this.f22319a.f22306b.f22302a;
                    Objects.requireNonNull(t7, "Cannot return null from a non-@Nullable @Provides method");
                    return t7;
                case 8:
                    T t8 = (T) this.f22319a.f22306b.f22303b;
                    Objects.requireNonNull(t8, "Cannot return null from a non-@Nullable @Provides method");
                    return t8;
                case 9:
                    T t9 = (T) this.f22319a.f22306b.f22304c;
                    Objects.requireNonNull(t9, "Cannot return null from a non-@Nullable @Provides method");
                    return t9;
                default:
                    throw new AssertionError(this.f22320b);
            }
        }
    }

    public C6772g(C6771f c6771f, AbstractC15539j2 abstractC15539j2, C6773a c6773a) {
        this.f22305a = abstractC15539j2;
        this.f22306b = c6771f;
        Provider c6774b = new C6774b(this, 7);
        Object obj = b.c;
        this.f22314j = !(c6774b instanceof b) ? new b(c6774b) : c6774b;
        Provider c6774b2 = new C6774b(this, 8);
        this.f22315k = !(c6774b2 instanceof b) ? new b(c6774b2) : c6774b2;
        Provider c6774b3 = new C6774b(this, 9);
        this.f22316l = !(c6774b3 instanceof b) ? new b(c6774b3) : c6774b3;
        C6774b c6774b4 = new C6774b(this, 0);
        this.f22317m = c6774b4;
        this.f22318n = b.b(c6774b4);
    }
}
