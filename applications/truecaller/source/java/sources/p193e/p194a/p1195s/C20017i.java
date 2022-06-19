package p193e.p194a.p1195s;

import android.content.ContentResolver;
import android.content.Context;
import androidx.fragment.app.Fragment;
import java.util.Objects;
import javax.inject.Provider;
import o3.a;
import o3.c.b;
import p1727n3.p1834m0.AbstractC26857y;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1113o4.AbstractC18926g;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19237j0;
import p193e.p194a.p1195s.AbstractC20012e;
import p193e.p194a.p1195s.p1201n.p1202a.C20045a;
import p193e.p194a.p1195s.p1205o.AbstractC20102d;
import p193e.p194a.p1195s.p1205o.C20099b;
import p193e.p194a.p1195s.p1205o.C20103e;
import p193e.p194a.p1195s.p1206p.AbstractC20106b;
import p193e.p194a.p1195s.p1206p.C20107c;
import p193e.p194a.p1195s.p1211r.AbstractC20162a;
import p193e.p194a.p1195s.p1211r.AbstractC20164c;
import p193e.p194a.p1195s.p1211r.C20163b;
import p193e.p194a.p1195s.p1211r.C20165d;
import p193e.p194a.p1195s.p1212s.AbstractC20168a;
import p193e.p194a.p1195s.p1212s.AbstractC20177c;
import p193e.p194a.p1195s.p1212s.AbstractC20179e;
import p193e.p194a.p1195s.p1212s.AbstractC20187i;
import p193e.p194a.p1195s.p1212s.C20169b;
import p193e.p194a.p1195s.p1212s.C20178d;
import p193e.p194a.p1195s.p1212s.C20180f;
import p193e.p194a.p1195s.p1212s.C20188j;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.p1394q.AbstractC21780a;
import p193e.p194a.p372b0.p394b.p400j.p401e.C8401b;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p430q.AbstractC8577e;
import p193e.p194a.p619d.AbstractC11705f;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p837h0.AbstractC14840m;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.s.i */
/* loaded from: classes17-dex2jar.jar:e/a/s/i.class */
public final class C20017i implements AbstractC20009b {

    /* renamed from: q */
    public static final /* synthetic */ int f56546q = 0;

    /* renamed from: d */
    public final AbstractC20012e.AbstractC20013a f56547d;

    /* renamed from: f */
    public Provider<C20165d> f56549f;

    /* renamed from: g */
    public Provider<AbstractC20164c> f56550g;

    /* renamed from: h */
    public Provider<C20163b> f56551h;

    /* renamed from: i */
    public Provider<AbstractC20162a> f56552i;

    /* renamed from: k */
    public Provider<C20169b> f56554k;

    /* renamed from: l */
    public Provider<AbstractC20168a> f56555l;

    /* renamed from: m */
    public Provider<C20188j> f56556m;

    /* renamed from: n */
    public Provider<AbstractC20187i> f56557n;

    /* renamed from: o */
    public Provider<C20180f> f56558o;

    /* renamed from: p */
    public Provider<AbstractC20179e> f56559p;

    /* renamed from: e */
    public final C20017i f56548e = this;

    /* renamed from: j */
    public Provider<C20103e> f56553j = new C20019b(this, 3);

    /* renamed from: e.a.s.i$b */
    /* loaded from: classes17-dex2jar.jar:e/a/s/i$b.class */
    public static final class C20019b<T> implements Provider<T> {

        /* renamed from: a */
        public final C20017i f56560a;

        /* renamed from: b */
        public final int f56561b;

        public C20019b(C20017i c20017i, int i) {
            this.f56560a = c20017i;
            this.f56561b = i;
        }

        public T get() {
            int i = this.f56561b;
            if (i == 0) {
                C20017i c20017i = this.f56560a;
                AbstractC20164c abstractC20164c = (AbstractC20164c) c20017i.f56550g.get();
                AbstractC11705f mo11631z = c20017i.f56547d.mo11631z();
                Objects.requireNonNull(mo11631z, "Cannot return null from a non-@Nullable component method");
                return (T) new C20163b(abstractC20164c, mo11631z);
            } else if (i == 1) {
                f mo11644e = this.f56560a.f56547d.mo11644e();
                Objects.requireNonNull(mo11644e, "Cannot return null from a non-@Nullable component method");
                return (T) new C20165d(mo11644e);
            } else if (i == 2) {
                C20017i c20017i2 = this.f56560a;
                a a = b.a(c20017i2.f56553j);
                AbstractC18926g mo11656O2 = c20017i2.f56547d.mo11656O2();
                Objects.requireNonNull(mo11656O2, "Cannot return null from a non-@Nullable component method");
                C20178d m11638j = c20017i2.m11638j();
                AbstractC19222c mo11637k = c20017i2.f56547d.mo11637k();
                Objects.requireNonNull(mo11637k, "Cannot return null from a non-@Nullable component method");
                AbstractC13497p mo11636l = c20017i2.f56547d.mo11636l();
                Objects.requireNonNull(mo11636l, "Cannot return null from a non-@Nullable component method");
                return (T) new C20169b(a, mo11656O2, m11638j, mo11637k, mo11636l);
            } else if (i == 3) {
                return (T) this.f56560a.m11639i();
            } else {
                if (i == 4) {
                    C20017i c20017i3 = this.f56560a;
                    Context mo11645d2 = c20017i3.f56547d.mo11645d2();
                    Objects.requireNonNull(mo11645d2, "Cannot return null from a non-@Nullable component method");
                    C20103e m11639i = c20017i3.m11639i();
                    String mo11649a4 = c20017i3.f56547d.mo11649a4();
                    Objects.requireNonNull(mo11649a4, "Cannot return null from a non-@Nullable component method");
                    String mo11633r5 = c20017i3.f56547d.mo11633r5();
                    Objects.requireNonNull(mo11633r5, "Cannot return null from a non-@Nullable component method");
                    l.e(mo11649a4, "appName");
                    l.e(mo11633r5, "appVersion");
                    return (T) new C20188j(mo11645d2, m11639i, new C8401b(mo11649a4, mo11633r5));
                } else if (i != 5) {
                    throw new AssertionError(this.f56561b);
                } else {
                    C20017i c20017i4 = this.f56560a;
                    f mo11651a = c20017i4.f56547d.mo11651a();
                    Objects.requireNonNull(mo11651a, "Cannot return null from a non-@Nullable component method");
                    ContentResolver mo11652Z = c20017i4.f56547d.mo11652Z();
                    Objects.requireNonNull(mo11652Z, "Cannot return null from a non-@Nullable component method");
                    C20178d m11638j2 = c20017i4.m11638j();
                    C20103e m11639i2 = c20017i4.m11639i();
                    AbstractC19222c mo11637k2 = c20017i4.f56547d.mo11637k();
                    Objects.requireNonNull(mo11637k2, "Cannot return null from a non-@Nullable component method");
                    return (T) new C20180f(10, mo11651a, mo11652Z, m11638j2, m11639i2, mo11637k2);
                }
            }
        }
    }

    public C20017i(AbstractC20012e.AbstractC20013a abstractC20013a, C20018a c20018a) {
        this.f56547d = abstractC20013a;
        C20019b c20019b = new C20019b(this, 1);
        this.f56549f = c20019b;
        this.f56550g = b.b(c20019b);
        C20019b c20019b2 = new C20019b(this, 0);
        this.f56551h = c20019b2;
        this.f56552i = b.b(c20019b2);
        C20019b c20019b3 = new C20019b(this, 2);
        this.f56554k = c20019b3;
        this.f56555l = b.b(c20019b3);
        C20019b c20019b4 = new C20019b(this, 4);
        this.f56556m = c20019b4;
        this.f56557n = b.b(c20019b4);
        C20019b c20019b5 = new C20019b(this, 5);
        this.f56558o = c20019b5;
        this.f56559p = b.b(c20019b5);
    }

    @Override // p193e.p194a.p1195s.AbstractC20009b
    /* renamed from: A */
    public AbstractC20168a mo11660A() {
        return (AbstractC20168a) this.f56555l.get();
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e.AbstractC20013a
    /* renamed from: D */
    public AbstractC26857y mo11659D() {
        AbstractC26857y mo11659D = this.f56547d.mo11659D();
        Objects.requireNonNull(mo11659D, "Cannot return null from a non-@Nullable component method");
        return mo11659D;
    }

    @Override // p193e.p194a.p1195s.AbstractC20009b
    /* renamed from: K1 */
    public AbstractC20164c mo11658K1() {
        return (AbstractC20164c) this.f56550g.get();
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e.AbstractC20013a, p193e.p194a.p372b0.AbstractC8412c
    /* renamed from: L */
    public AbstractC8432l mo11657L() {
        AbstractC8432l mo11657L = this.f56547d.mo11657L();
        Objects.requireNonNull(mo11657L, "Cannot return null from a non-@Nullable component method");
        return mo11657L;
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e.AbstractC20013a
    /* renamed from: O2 */
    public AbstractC18926g mo11656O2() {
        AbstractC18926g mo11656O2 = this.f56547d.mo11656O2();
        Objects.requireNonNull(mo11656O2, "Cannot return null from a non-@Nullable component method");
        return mo11656O2;
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e.AbstractC20013a
    /* renamed from: T */
    public AbstractC14840m mo11655T() {
        AbstractC14840m mo11655T = this.f56547d.mo11655T();
        Objects.requireNonNull(mo11655T, "Cannot return null from a non-@Nullable component method");
        return mo11655T;
    }

    @Override // p193e.p194a.p1195s.AbstractC20009b
    /* renamed from: T0 */
    public AbstractC20102d mo11654T0() {
        return m11639i();
    }

    @Override // p193e.p194a.p1195s.AbstractC20009b
    /* renamed from: Y0 */
    public AbstractC20187i mo11653Y0() {
        return (AbstractC20187i) this.f56557n.get();
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e.AbstractC20013a
    /* renamed from: Z */
    public ContentResolver mo11652Z() {
        ContentResolver mo11652Z = this.f56547d.mo11652Z();
        Objects.requireNonNull(mo11652Z, "Cannot return null from a non-@Nullable component method");
        return mo11652Z;
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e.AbstractC20013a, p193e.p194a.p437c.p580r.p589j.AbstractC10584c.AbstractC10585a, p193e.p194a.p437c.p580r.p589j.C10607k.AbstractC10608a, p193e.p194a.p437c.p610y.AbstractC10864a.AbstractC10865a
    /* renamed from: a */
    public f mo11651a() {
        f mo11651a = this.f56547d.mo11651a();
        Objects.requireNonNull(mo11651a, "Cannot return null from a non-@Nullable component method");
        return mo11651a;
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e.AbstractC20013a
    /* renamed from: a0 */
    public AbstractC8577e mo11650a0() {
        AbstractC8577e mo11650a0 = this.f56547d.mo11650a0();
        Objects.requireNonNull(mo11650a0, "Cannot return null from a non-@Nullable component method");
        return mo11650a0;
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e.AbstractC20013a
    /* renamed from: a4 */
    public String mo11649a4() {
        String mo11649a4 = this.f56547d.mo11649a4();
        Objects.requireNonNull(mo11649a4, "Cannot return null from a non-@Nullable component method");
        return mo11649a4;
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e.AbstractC20013a, p193e.p194a.p372b0.AbstractC8412c
    /* renamed from: b */
    public C20592g mo11648b() {
        C20592g mo11648b = this.f56547d.mo11648b();
        Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
        return mo11648b;
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e.AbstractC20013a, p193e.p194a.p1129p5.AbstractC19251o0
    /* renamed from: c */
    public AbstractC19219a0 mo11647c() {
        AbstractC19219a0 mo11647c = this.f56547d.mo11647c();
        Objects.requireNonNull(mo11647c, "Cannot return null from a non-@Nullable component method");
        return mo11647c;
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e
    /* renamed from: d */
    public AbstractC20106b mo11646d() {
        ContentResolver mo11652Z = this.f56547d.mo11652Z();
        Objects.requireNonNull(mo11652Z, "Cannot return null from a non-@Nullable component method");
        C20592g mo11648b = this.f56547d.mo11648b();
        Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
        C20178d m11638j = m11638j();
        AbstractC19219a0 mo11647c = this.f56547d.mo11647c();
        Objects.requireNonNull(mo11647c, "Cannot return null from a non-@Nullable component method");
        C20103e m11639i = m11639i();
        AbstractC8432l mo11657L = this.f56547d.mo11657L();
        Objects.requireNonNull(mo11657L, "Cannot return null from a non-@Nullable component method");
        return new C20107c(mo11652Z, mo11648b, m11638j, mo11647c, m11639i, mo11657L);
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e.AbstractC20013a
    /* renamed from: d2 */
    public Context mo11645d2() {
        Context mo11645d2 = this.f56547d.mo11645d2();
        Objects.requireNonNull(mo11645d2, "Cannot return null from a non-@Nullable component method");
        return mo11645d2;
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e.AbstractC20013a, p193e.p194a.p437c.p580r.p589j.AbstractC10584c.AbstractC10585a, p193e.p194a.p437c.p610y.AbstractC10864a.AbstractC10865a
    /* renamed from: e */
    public f mo11644e() {
        f mo11644e = this.f56547d.mo11644e();
        Objects.requireNonNull(mo11644e, "Cannot return null from a non-@Nullable component method");
        return mo11644e;
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e.AbstractC20013a
    /* renamed from: f */
    public AbstractC17197v0 mo11643f() {
        AbstractC17197v0 mo11643f = this.f56547d.mo11643f();
        Objects.requireNonNull(mo11643f, "Cannot return null from a non-@Nullable component method");
        return mo11643f;
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e
    /* renamed from: g */
    public Fragment mo11642g() {
        return new C20045a();
    }

    @Override // p193e.p194a.p1195s.AbstractC20009b
    /* renamed from: g3 */
    public AbstractC20177c mo11641g3() {
        return m11638j();
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e
    /* renamed from: h */
    public AbstractC20162a mo11640h() {
        return (AbstractC20162a) this.f56552i.get();
    }

    /* renamed from: i */
    public final C20103e m11639i() {
        Context mo11645d2 = this.f56547d.mo11645d2();
        Objects.requireNonNull(mo11645d2, "Cannot return null from a non-@Nullable component method");
        return new C20103e(mo11645d2, new C20099b((AbstractC20168a) this.f56555l.get()));
    }

    /* renamed from: j */
    public final C20178d m11638j() {
        Context mo11645d2 = this.f56547d.mo11645d2();
        Objects.requireNonNull(mo11645d2, "Cannot return null from a non-@Nullable component method");
        return new C20178d(mo11645d2);
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e.AbstractC20013a, p193e.p194a.p1129p5.AbstractC19251o0
    /* renamed from: k */
    public AbstractC19222c mo11637k() {
        AbstractC19222c mo11637k = this.f56547d.mo11637k();
        Objects.requireNonNull(mo11637k, "Cannot return null from a non-@Nullable component method");
        return mo11637k;
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e.AbstractC20013a, p193e.p194a.p372b0.AbstractC8412c
    /* renamed from: l */
    public AbstractC13497p mo11636l() {
        AbstractC13497p mo11636l = this.f56547d.mo11636l();
        Objects.requireNonNull(mo11636l, "Cannot return null from a non-@Nullable component method");
        return mo11636l;
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e.AbstractC20013a, p193e.p194a.p1129p5.AbstractC19251o0
    /* renamed from: p */
    public AbstractC19237j0 mo11635p() {
        AbstractC19237j0 mo11635p = this.f56547d.mo11635p();
        Objects.requireNonNull(mo11635p, "Cannot return null from a non-@Nullable component method");
        return mo11635p;
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e.AbstractC20013a
    /* renamed from: q */
    public AbstractC21780a mo11634q() {
        AbstractC21780a mo11634q = this.f56547d.mo11634q();
        Objects.requireNonNull(mo11634q, "Cannot return null from a non-@Nullable component method");
        return mo11634q;
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e.AbstractC20013a
    /* renamed from: r5 */
    public String mo11633r5() {
        String mo11633r5 = this.f56547d.mo11633r5();
        Objects.requireNonNull(mo11633r5, "Cannot return null from a non-@Nullable component method");
        return mo11633r5;
    }

    @Override // p193e.p194a.p1195s.AbstractC20009b
    /* renamed from: r6 */
    public AbstractC20179e mo11632r6() {
        return (AbstractC20179e) this.f56559p.get();
    }

    @Override // p193e.p194a.p1195s.AbstractC20012e.AbstractC20013a
    /* renamed from: z */
    public AbstractC11705f mo11631z() {
        AbstractC11705f mo11631z = this.f56547d.mo11631z();
        Objects.requireNonNull(mo11631z, "Cannot return null from a non-@Nullable component method");
        return mo11631z;
    }
}
