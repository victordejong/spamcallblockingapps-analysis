package p193e.p194a.p1221t.p1222a.p1223a;

import com.huawei.hms.actions.SearchIntents;
import com.tenor.android.core.constant.MediaFormat;
import com.truecaller.android.truemoji.C2886R;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import s1.z.c.l;
/* renamed from: e.a.t.a.a.i */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/a/i.class */
public final class C20249i extends AbstractC20576b<AbstractC20248h> implements AbstractC20247g<AbstractC20248h> {

    /* renamed from: b */
    public String f57008b = "";

    /* renamed from: c */
    public final AbstractC20268t f57009c;

    /* renamed from: d */
    public final AbstractC19321u f57010d;

    /* renamed from: e.a.t.a.a.i$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/a/i$a.class */
    public static final class C20250a implements AbstractC20267s<List<? extends C20246f>> {
        public C20250a() {
            C20249i.this = r4;
        }

        @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20267s
        /* renamed from: a */
        public void mo11298a(Throwable th) {
            AbstractC20248h abstractC20248h = (AbstractC20248h) C20249i.this.f57683a;
            if (abstractC20248h != null) {
                abstractC20248h.mo11275f(false);
            }
            AbstractC20248h abstractC20248h2 = (AbstractC20248h) C20249i.this.f57683a;
            if (abstractC20248h2 != null) {
                abstractC20248h2.mo11279a(C2886R.string.ErrorConnectionGeneral);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20267s
        public void onSuccess(List<? extends C20246f> list) {
            List<? extends C20246f> list2 = list;
            l.e(list2, "response");
            AbstractC20248h abstractC20248h = (AbstractC20248h) C20249i.this.f57683a;
            if (abstractC20248h != null) {
                abstractC20248h.mo11275f(false);
            }
            AbstractC20248h abstractC20248h2 = (AbstractC20248h) C20249i.this.f57683a;
            if (abstractC20248h2 != 0) {
                abstractC20248h2.mo11274g(list2, false);
            }
        }
    }

    @Inject
    public C20249i(AbstractC20268t abstractC20268t, AbstractC19321u abstractC19321u) {
        l.e(abstractC20268t, "tenorHelper");
        l.e(abstractC19321u, "networkUtil");
        this.f57009c = abstractC20268t;
        this.f57010d = abstractC19321u;
    }

    /* renamed from: Hj */
    public final boolean m11309Hj() {
        AbstractC20248h abstractC20248h;
        boolean mo13429d = this.f57010d.mo13429d();
        if (!mo13429d && (abstractC20248h = (AbstractC20248h) this.f57683a) != null) {
            abstractC20248h.mo11276e();
        }
        AbstractC20248h abstractC20248h2 = (AbstractC20248h) this.f57683a;
        if (abstractC20248h2 != null) {
            abstractC20248h2.mo11272i(!mo13429d);
        }
        return mo13429d;
    }

    /* renamed from: Ij */
    public void m11308Ij() {
        if (!m11309Hj() || !this.f57009c.mo11297a()) {
            return;
        }
        AbstractC20248h abstractC20248h = (AbstractC20248h) this.f57683a;
        if (abstractC20248h != null) {
            abstractC20248h.mo11275f(true);
        }
        this.f57009c.mo11295c(20, new C20250a());
    }

    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20247g
    /* renamed from: Ke */
    public boolean mo11307Ke(int i) {
        boolean z;
        if (!this.f57009c.mo11297a()) {
            AbstractC20248h abstractC20248h = (AbstractC20248h) this.f57683a;
            if (abstractC20248h != null) {
                abstractC20248h.mo11278c();
            }
            z = false;
        } else {
            if (i == 0) {
                m11308Ij();
            }
            z = true;
        }
        return z;
    }

    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20247g
    /* renamed from: M */
    public void mo11306M(C20246f c20246f) {
        l.e(c20246f, MediaFormat.GIF);
        this.f57009c.mo11293e(c20246f.f57003a, this.f57008b);
        AbstractC20248h abstractC20248h = (AbstractC20248h) this.f57683a;
        if (abstractC20248h != null) {
            abstractC20248h.mo11277d();
        }
        AbstractC20248h abstractC20248h2 = (AbstractC20248h) this.f57683a;
        if (abstractC20248h2 != null) {
            abstractC20248h2.mo11280M(c20246f);
        }
    }

    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20247g
    /* renamed from: U5 */
    public void mo11305U5(int i) {
        AbstractC20248h abstractC20248h = (AbstractC20248h) this.f57683a;
        if (abstractC20248h != null) {
            abstractC20248h.mo11273h();
        }
        if (i == 0) {
            m11308Ij();
        }
    }

    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20247g
    /* renamed from: ji */
    public void mo11304ji(String str, boolean z) {
        AbstractC20248h abstractC20248h;
        AbstractC20248h abstractC20248h2;
        l.e(str, SearchIntents.EXTRA_QUERY);
        if (!z && (abstractC20248h2 = (AbstractC20248h) this.f57683a) != null) {
            abstractC20248h2.mo11276e();
        }
        this.f57008b = str;
        if (str.length() == 0) {
            m11308Ij();
            return;
        }
        l.e(str, SearchIntents.EXTRA_QUERY);
        if (!m11309Hj() || !this.f57009c.mo11297a()) {
            return;
        }
        if (!z && (abstractC20248h = (AbstractC20248h) this.f57683a) != null) {
            abstractC20248h.mo11275f(true);
        }
        this.f57009c.mo11296b(str, 20, z, new C20251j(this, z));
    }

    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20247g
    /* renamed from: u1 */
    public void mo11303u1() {
        this.f57008b = "";
        AbstractC20248h abstractC20248h = (AbstractC20248h) this.f57683a;
        if (abstractC20248h != null) {
            abstractC20248h.mo11276e();
        }
    }

    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20247g
    /* renamed from: yb */
    public void mo11302yb() {
        mo11304ji(this.f57008b, false);
    }
}
