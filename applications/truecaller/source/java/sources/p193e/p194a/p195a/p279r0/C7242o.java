package p193e.p194a.p195a.p279r0;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import com.truecaller.messaging.data.types.InboxTab;
import e.m.d.y.n;
import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p195a.AbstractC5945d0;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.AbstractC7289w;
import p193e.p194a.p195a.p227e.AbstractC6005m;
import p193e.p194a.p195a.p231g.AbstractC6116g0;
import p193e.p194a.p195a.p231g.C6114f0;
import p193e.p194a.p195a.p231g.C6124i0;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6493u;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import p193e.p194a.p851h5.AbstractC14965w;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.u.i;
import s1.u.s;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.r0.o */
/* loaded from: classes5-dex2jar.jar:e/a/a/r0/o.class */
public final class C7242o extends AbstractC7240m implements AbstractC6116g0.AbstractC6117a {

    /* renamed from: A */
    public final boolean f23141A;

    /* renamed from: B */
    public final AbstractC5945d0 f23142B;

    /* renamed from: d */
    public InboxTab f23143d = InboxTab.PERSONAL;

    /* renamed from: e */
    public int f23144e;

    /* renamed from: f */
    public int f23145f;

    /* renamed from: g */
    public int f23146g;

    /* renamed from: h */
    public int f23147h;

    /* renamed from: i */
    public List<String> f23148i;

    /* renamed from: j */
    public List<? extends Uri> f23149j;

    /* renamed from: k */
    public boolean f23150k;

    /* renamed from: l */
    public boolean f23151l;

    /* renamed from: m */
    public String f23152m;

    /* renamed from: n */
    public final AbstractC14965w f23153n;

    /* renamed from: o */
    public final AbstractC19230g f23154o;

    /* renamed from: p */
    public final AbstractC19462a f23155p;

    /* renamed from: q */
    public final AbstractC6116g0 f23156q;

    /* renamed from: r */
    public final AbstractC17405c f23157r;

    /* renamed from: s */
    public final AbstractC10060c f23158s;

    /* renamed from: t */
    public final AbstractC9691j f23159t;

    /* renamed from: u */
    public final f f23160u;

    /* renamed from: v */
    public final AbstractC6392i0 f23161v;

    /* renamed from: w */
    public final AbstractC6493u f23162w;

    /* renamed from: x */
    public final AbstractC6005m f23163x;

    /* renamed from: y */
    public final AbstractC7289w f23164y;

    /* renamed from: z */
    public final AbstractC10028o f23165z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7242o(AbstractC14965w abstractC14965w, AbstractC19230g abstractC19230g, AbstractC19462a abstractC19462a, AbstractC6116g0 abstractC6116g0, AbstractC17405c abstractC17405c, AbstractC10060c abstractC10060c, AbstractC9691j abstractC9691j, f fVar, AbstractC6392i0 abstractC6392i0, AbstractC6493u abstractC6493u, AbstractC6005m abstractC6005m, AbstractC7289w abstractC7289w, AbstractC10028o abstractC10028o, boolean z, AbstractC5945d0 abstractC5945d0) {
        super(fVar);
        l.e(abstractC14965w, "tcPermissionUtil");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC6116g0, "unreadThreadsCounter");
        l.e(abstractC17405c, "availabilityManager");
        l.e(abstractC10060c, "insightsAnalyticsManager");
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(fVar, "uiContext");
        l.e(abstractC6392i0, "messageSettings");
        l.e(abstractC6493u, "reportHelper");
        l.e(abstractC6005m, "inboxCleaner");
        l.e(abstractC7289w, "inboxTabsProvider");
        l.e(abstractC10028o, "insightConfig");
        l.e(abstractC5945d0, "notificationHelper");
        this.f23153n = abstractC14965w;
        this.f23154o = abstractC19230g;
        this.f23155p = abstractC19462a;
        this.f23156q = abstractC6116g0;
        this.f23157r = abstractC17405c;
        this.f23158s = abstractC10060c;
        this.f23159t = abstractC9691j;
        this.f23160u = fVar;
        this.f23161v = abstractC6392i0;
        this.f23162w = abstractC6493u;
        this.f23163x = abstractC6005m;
        this.f23164y = abstractC7289w;
        this.f23165z = abstractC10028o;
        this.f23141A = z;
        this.f23142B = abstractC5945d0;
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: E2 */
    public void mo29961E2() {
        this.f23157r.mo9924Y();
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: Ij */
    public List<InboxTab> mo29960Ij() {
        return this.f23164y.mo29825a();
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: Jj */
    public boolean mo29959Jj() {
        InboxTab inboxTab = this.f23143d;
        InboxTab inboxTab2 = InboxTab.PERSONAL;
        if (inboxTab != inboxTab2) {
            AbstractC7243p abstractC7243p = (AbstractC7243p) this.f57683a;
            if (abstractC7243p == null) {
                return true;
            }
            abstractC7243p.mo29908z0(inboxTab2);
            return true;
        }
        return false;
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: Kj */
    public boolean mo29958Kj() {
        return this.f23143d == InboxTab.BUSINESS && this.f23159t.mo27270Y() && this.f23159t.mo27262d();
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: Lj */
    public boolean mo29957Lj() {
        return this.f23163x.mo32047j();
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: Mj */
    public boolean mo29956Mj() {
        return this.f23159t.mo27262d() || this.f23159t.mo27237w();
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: Nj */
    public boolean mo29955Nj() {
        AbstractC7243p abstractC7243p = (AbstractC7243p) this.f57683a;
        if (abstractC7243p != null) {
            abstractC7243p.mo29925Gv();
            return true;
        }
        return true;
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: O */
    public void mo29954O() {
        this.f23150k = false;
        AbstractC7243p abstractC7243p = (AbstractC7243p) this.f57683a;
        if (abstractC7243p != null) {
            abstractC7243p.mo29917g5();
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: Oj */
    public boolean mo29953Oj() {
        AbstractC7243p abstractC7243p = (AbstractC7243p) this.f57683a;
        if (abstractC7243p != null) {
            abstractC7243p.mo29926GA();
            return true;
        }
        return true;
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: Pj */
    public boolean mo29952Pj() {
        AbstractC7243p abstractC7243p = (AbstractC7243p) this.f57683a;
        if (abstractC7243p != null) {
            abstractC7243p.mo29919co();
            return true;
        }
        return true;
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: Qj */
    public void mo29951Qj() {
        AbstractC7243p abstractC7243p = (AbstractC7243p) this.f57683a;
        if (abstractC7243p != null) {
            abstractC7243p.mo29911mm();
        }
        AbstractC19462a abstractC19462a = this.f23155p;
        LinkedHashMap m8655X = C22128a.m8655X("HomeScreenFabPress", "type");
        C22128a.m8684N0("HomeScreenFabPress", C22128a.m8652Y("fab", AnalyticsConstants.NAME, "NewMessage", "value", m8655X, "fab", "NewMessage"), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: Rj */
    public boolean mo29950Rj() {
        AbstractC7243p abstractC7243p = (AbstractC7243p) this.f57683a;
        if (abstractC7243p != null) {
            abstractC7243p.mo29929D7(this.f23143d);
            return true;
        }
        return true;
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: Sj */
    public void mo29949Sj(int i) {
        InboxTab inboxTab = this.f23143d;
        InboxTab inboxTab2 = mo29960Ij().get(i);
        this.f23143d = inboxTab2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("page_view", "<set-?>");
        String analyticsContext = inboxTab2.getAnalyticsContext();
        l.e(analyticsContext, "<set-?>");
        l.e(ViewAction.VIEW, "<set-?>");
        String analyticsContext2 = inboxTab.getAnalyticsContext();
        l.e(analyticsContext2, "<set-?>");
        AbstractC10060c abstractC10060c = this.f23158s;
        if ("page_view".length() > 0) {
            abstractC10060c.mo26757a(new C10529b(new SimpleAnalyticsModel("page_view", analyticsContext, "", analyticsContext2, ViewAction.VIEW, "", 0L, null, false, 448, null), i.W0(linkedHashMap)));
            if (inboxTab != this.f23143d && this.f23151l) {
                m29939ck();
            }
            if (this.f23143d != InboxTab.BUSINESS || !mo29941ak() || this.f23161v.mo31014p3()) {
                return;
            }
            AbstractC7243p abstractC7243p = (AbstractC7243p) this.f57683a;
            if (abstractC7243p != null) {
                abstractC7243p.mo29912ln();
            }
            this.f23161v.mo31043k4(true);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: Tj */
    public boolean mo29948Tj() {
        AbstractC7243p abstractC7243p = (AbstractC7243p) this.f57683a;
        if (abstractC7243p != null) {
            if (!this.f23154o.mo13794c() || this.f23153n.mo19347j()) {
                abstractC7243p.mo29914iz(10, false, "inbox-overflowMenuChangeDma");
                return true;
            }
            AbstractC7243p abstractC7243p2 = (AbstractC7243p) this.f57683a;
            if (abstractC7243p2 == null) {
                return true;
            }
            abstractC7243p2.mo29909t0();
            return true;
        }
        return true;
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: Uj */
    public boolean mo29947Uj() {
        AbstractC7243p abstractC7243p = (AbstractC7243p) this.f57683a;
        if (abstractC7243p != null) {
            abstractC7243p.mo29924Ju();
        }
        this.f23161v.mo31104a3(true);
        return true;
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: Vj */
    public void mo29946Vj(String str) {
        n.B0(C22128a.m8580q1("inbox", "viewId", "inbox", str, null), this.f23155p);
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: Wj */
    public void mo29945Wj(String str) {
        l.e(str, "action");
        AbstractC19462a abstractC19462a = this.f23155p;
        LinkedHashMap m8655X = C22128a.m8655X("InboxOverflowMenu", "type");
        C22128a.m8684N0("InboxOverflowMenu", C22128a.m8652Y("action", AnalyticsConstants.NAME, str, "value", m8655X, "action", str), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: Xj */
    public void mo29944Xj(Bundle bundle) {
        l.e(bundle, "args");
        this.f23142B.mo31935a(bundle);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.a.r0.p, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        AbstractC7243p abstractC7243p;
        ?? r0 = (AbstractC7243p) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        r0.mo29922Vs(this.f23159t.mo27286I(), this.f23159t.mo27289F(), mo29960Ij().contains(InboxTab.OTHERS), mo29960Ij().contains(InboxTab.PROMOTIONAL), this.f23141A, this.f23159t.mo27262d());
        d.w2(this, this.f23160u, (j0) null, new C7241n(this, null), 2, (Object) null);
        if (!this.f23161v.mo31184K3()) {
            this.f23162w.mo30857e(this.f23161v.mo31048k());
            this.f23161v.mo31199H3(true);
        }
        if (!this.f23159t.mo27236x() || this.f23165z.mo26865Q() || (abstractC7243p = (AbstractC7243p) this.f57683a) == null) {
            return;
        }
        abstractC7243p.mo29927Fn();
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: Yj */
    public void mo29943Yj() {
        AbstractC7243p abstractC7243p = (AbstractC7243p) this.f57683a;
        if (abstractC7243p != null) {
            abstractC7243p.mo29909t0();
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: Zj */
    public boolean mo29942Zj() {
        return this.f23163x.mo32047j() && !this.f23161v.mo30965z0();
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: ak */
    public boolean mo29941ak() {
        return mo29956Mj() && !this.f23161v.mo31109Z3();
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: bk */
    public void mo29940bk() {
        s sVar = s.a;
        AbstractC7243p abstractC7243p = (AbstractC7243p) this.f57683a;
        if (abstractC7243p != null) {
            int ordinal = this.f23143d.ordinal();
            boolean z = false;
            if (ordinal == 0) {
                boolean z2 = false;
                if (this.f23144e > 0) {
                    z2 = true;
                }
                abstractC7243p.mo29913jy(z2);
                abstractC7243p.mo29918dk(this.f23144e);
                s sVar2 = this.f23148i;
                if (sVar2 == null) {
                    sVar2 = sVar;
                }
                s sVar3 = this.f23149j;
                if (sVar3 != null) {
                    sVar = sVar3;
                }
                abstractC7243p.mo29923Pr(sVar2, sVar);
                return;
            }
            if (ordinal != 1) {
                if (ordinal == 2) {
                    abstractC7243p.mo29913jy(false);
                    return;
                } else if (ordinal == 3) {
                    if (this.f23146g > 0) {
                        z = true;
                    }
                    abstractC7243p.mo29913jy(z);
                    abstractC7243p.mo29918dk(this.f23146g);
                    return;
                } else if (ordinal != 4) {
                    return;
                }
            }
            boolean z3 = false;
            if (this.f23145f > 0) {
                z3 = true;
            }
            abstractC7243p.mo29913jy(z3);
            abstractC7243p.mo29918dk(this.f23145f);
        }
    }

    /* renamed from: ck */
    public final void m29939ck() {
        String str;
        int ordinal = this.f23143d.ordinal();
        if (ordinal == 0) {
            str = "personal_tab";
        } else if (ordinal == 1) {
            str = "others_tab";
        } else if (ordinal == 2) {
            str = "important_tab";
        } else if (ordinal == 3) {
            str = "spam_tab";
        } else if (ordinal != 4) {
            throw new s1.i();
        } else {
            str = "promotional_tab";
        }
        n.B0(C22128a.m8580q1(str, "viewId", str, this.f23152m, null), this.f23155p);
    }

    /* renamed from: dk */
    public final void m29938dk(int i, int i2, boolean z) {
        AbstractC7243p abstractC7243p = (AbstractC7243p) this.f57683a;
        if (abstractC7243p != null) {
            if (i != 0 || z) {
                abstractC7243p.mo29930Aa(i2, i, z);
            } else {
                abstractC7243p.mo29915im(i2);
            }
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: j */
    public void mo29937j() {
        this.f23157r.mo9925I1();
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    public void onActivityResult(int i, int i2, Intent intent) {
        AbstractC7243p abstractC7243p;
        if (i2 == -1 && i == 10 && (abstractC7243p = (AbstractC7243p) this.f57683a) != null) {
            abstractC7243p.mo29920a(C2752R.string.messaging_default_sms_app_toast);
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    public void onPause() {
        this.f23156q.mo31768e(this);
        this.f23151l = false;
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    public void onResume() {
        this.f23151l = true;
        this.f23156q.mo31770b(this);
        AbstractC7243p abstractC7243p = (AbstractC7243p) this.f57683a;
        if (abstractC7243p != null) {
            abstractC7243p.mo29921Zu(true ^ this.f23154o.mo13794c());
        }
        m29939ck();
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    public void onStop() {
        this.f23152m = null;
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6116g0.AbstractC6117a
    /* renamed from: s2 */
    public void mo29936s2(C6114f0 c6114f0, C6124i0 c6124i0) {
        l.e(c6114f0, "unreadThreadsCount");
        l.e(c6124i0, "unseenTab");
        int i = c6114f0.f20305a;
        this.f23144e = i;
        this.f23145f = c6114f0.f20306b;
        this.f23146g = c6114f0.f20307c;
        this.f23147h = c6114f0.f20308d;
        this.f23148i = c6114f0.f20309e;
        this.f23149j = c6114f0.f20310f;
        m29938dk(i, mo29960Ij().indexOf(InboxTab.PERSONAL), c6124i0.f20339a);
        List<InboxTab> mo29960Ij = mo29960Ij();
        InboxTab inboxTab = InboxTab.PROMOTIONAL;
        if (mo29960Ij.contains(inboxTab)) {
            m29938dk(this.f23145f, mo29960Ij().indexOf(inboxTab), c6124i0.f20340b);
        }
        List<InboxTab> mo29960Ij2 = mo29960Ij();
        InboxTab inboxTab2 = InboxTab.OTHERS;
        if (mo29960Ij2.contains(inboxTab2)) {
            m29938dk(this.f23145f, mo29960Ij().indexOf(inboxTab2), c6124i0.f20340b);
        }
        m29938dk(0, mo29960Ij().indexOf(InboxTab.SPAM), c6124i0.f20341c);
        m29938dk(this.f23147h, mo29960Ij().indexOf(InboxTab.BUSINESS), c6124i0.f20342d);
        mo29940bk();
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: t9 */
    public int mo29935t9() {
        return this.f23150k ? 4 : 0;
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: v0 */
    public boolean mo29934v0() {
        AbstractC7243p abstractC7243p = (AbstractC7243p) this.f57683a;
        if (abstractC7243p != null) {
            abstractC7243p.mo29916h6();
            return true;
        }
        return true;
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: x0 */
    public void mo29933x0() {
        this.f23150k = true;
        AbstractC7243p abstractC7243p = (AbstractC7243p) this.f57683a;
        if (abstractC7243p != null) {
            abstractC7243p.mo29917g5();
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: y0 */
    public void mo29932y0() {
        AbstractC7243p abstractC7243p = (AbstractC7243p) this.f57683a;
        if (abstractC7243p != null) {
            abstractC7243p.mo29908z0(InboxTab.PERSONAL);
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7240m
    /* renamed from: z6 */
    public void mo29931z6(Intent intent) {
        AbstractC7243p abstractC7243p;
        AbstractC7243p abstractC7243p2;
        l.e(intent, "intent");
        Serializable serializableExtra = intent.getSerializableExtra("inbox_tab");
        Serializable serializable = serializableExtra;
        if (!(serializableExtra instanceof InboxTab)) {
            serializable = null;
        }
        InboxTab inboxTab = (InboxTab) serializable;
        if (inboxTab != null && (abstractC7243p2 = (AbstractC7243p) this.f57683a) != null) {
            abstractC7243p2.mo29908z0(inboxTab);
        }
        if (intent.getBooleanExtra("unread_conv_state", false) && (abstractC7243p = (AbstractC7243p) this.f57683a) != null) {
            abstractC7243p.mo29928F0();
        }
        this.f23152m = intent.getStringExtra("AppUserInteraction.Context");
    }
}
