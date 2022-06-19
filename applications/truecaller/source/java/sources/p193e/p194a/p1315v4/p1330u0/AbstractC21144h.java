package p193e.p194a.p1315v4.p1330u0;

import android.os.Bundle;
import com.truecaller.android.sdk.TrueProfile;
import com.truecaller.android.sdk.clients.CustomDataBundle;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1315v4.AbstractC21040l;
import p193e.p194a.p1315v4.C21154v;
import p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a;
import p193e.p194a.p1315v4.p1330u0.p1331k.C21153b;
import p193e.p194a.p1315v4.p1333w0.AbstractC21158a;
import p193e.p194a.p1315v4.p1333w0.AbstractC21159b;
import p193e.p194a.p1315v4.p1333w0.AbstractC21160c;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.f0.r;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.v4.u0.h */
/* loaded from: classes12-dex2jar.jar:e/a/v4/u0/h.class */
public abstract class AbstractC21144h implements AbstractC21143g {

    /* renamed from: a */
    public AbstractC21159b f59311a;

    /* renamed from: b */
    public boolean f59312b;

    /* renamed from: c */
    public AbstractC21148a f59313c;

    /* renamed from: d */
    public final Bundle f59314d;

    /* renamed from: e */
    public final AbstractC8541a f59315e;

    /* renamed from: f */
    public final AbstractC8438a f59316f;

    /* renamed from: g */
    public final AbstractC21040l f59317g;

    /* renamed from: h */
    public final C21154v f59318h;

    public AbstractC21144h(Bundle bundle, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, AbstractC21040l abstractC21040l, C21154v c21154v) {
        l.e(bundle, "extras");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(abstractC21040l, "eventsTrackerHolder");
        l.e(c21154v, "sdkAccountManager");
        this.f59314d = bundle;
        this.f59315e = abstractC8541a;
        this.f59316f = abstractC8438a;
        this.f59317g = abstractC21040l;
        this.f59318h = c21154v;
        this.f59313c = new C21153b(abstractC21040l, this, null, null, null, 28);
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21152d
    /* renamed from: A */
    public boolean mo10224A() {
        CustomDataBundle customDataBundle = mo10234m().f57196c;
        boolean z = false;
        if (customDataBundle != null) {
            l.d(customDataBundle, "it");
            String str = customDataBundle.f9998d;
            if (str == null || r.p(str)) {
                z = true;
            }
            return !z;
        }
        return false;
    }

    /* renamed from: B */
    public Bundle mo10245B() {
        return this.f59314d;
    }

    /* renamed from: C */
    public abstract boolean mo10238C();

    /* renamed from: D */
    public boolean mo10244D() {
        Objects.requireNonNull(this.f59318h);
        AbstractApplicationC8442a m28551L = AbstractApplicationC8442a.m28551L();
        l.d(m28551L, "ApplicationBase.getAppBase()");
        return m28551L.mo28540W();
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: c */
    public void mo10236c() {
        this.f59311a = null;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21151c
    /* renamed from: d */
    public String mo10231d() {
        return null;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: g */
    public TrueProfile mo10243g() {
        return C17422k.m16116B(this.f59315e, this.f59316f);
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21151c
    /* renamed from: i */
    public String mo10229i() {
        return null;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21152d
    /* renamed from: j */
    public String mo10223j() {
        CustomDataBundle customDataBundle = mo10234m().f57196c;
        if (customDataBundle != null) {
            Map<String, Integer> map = C21138c.f59293e;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, Integer> entry : map.entrySet()) {
                int intValue = entry.getValue().intValue();
                l.d(customDataBundle, "customDataBundle");
                if (intValue == customDataBundle.f10001g) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            Set keySet = linkedHashMap.keySet();
            if (i.d(keySet)) {
                return (String) i.u(keySet, 0);
            }
        }
        return (String) i.u(C21138c.f59293e.keySet(), 0);
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21152d
    /* renamed from: k */
    public boolean mo10222k() {
        CustomDataBundle customDataBundle = mo10234m().f57196c;
        boolean z = false;
        if (customDataBundle != null) {
            l.d(customDataBundle, "it");
            String str = customDataBundle.f9997c;
            if (str == null || r.p(str)) {
                z = true;
            }
            return !z;
        }
        return false;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21151c
    /* renamed from: l */
    public Locale mo10228l() {
        return null;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21152d
    /* renamed from: n */
    public String mo10221n() {
        AbstractC21159b abstractC21159b = this.f59311a;
        return (abstractC21159b == null || !(abstractC21159b instanceof AbstractC21160c)) ? (abstractC21159b == null || !(abstractC21159b instanceof AbstractC21158a)) ? "Popup" : "Bottomsheet" : "FullScreen";
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21151c
    /* renamed from: o */
    public int mo10227o() {
        return 0;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    public void onSaveInstanceState(Bundle bundle) {
        l.e(bundle, "outState");
        bundle.putBundle("keySaveInstance", mo10245B());
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: q */
    public final void mo10242q(boolean z) {
        this.f59313c.mo10215b(z);
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21152d
    /* renamed from: r */
    public String mo10220r() {
        CustomDataBundle customDataBundle = mo10234m().f57196c;
        if (customDataBundle != null) {
            Map<String, Integer> map = C21138c.f59291c;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, Integer> entry : map.entrySet()) {
                int intValue = entry.getValue().intValue();
                l.d(customDataBundle, "customDataBundle");
                if (intValue == customDataBundle.f9999e) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            Set keySet = linkedHashMap.keySet();
            if (i.d(keySet)) {
                return (String) i.u(keySet, 0);
            }
        }
        return (String) i.u(C21138c.f59291c.keySet(), 0);
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21152d
    /* renamed from: s */
    public String mo10219s() {
        return mo10234m().m11229b(2048) ? "rect" : "round";
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: t */
    public final void mo10241t(AbstractC21159b abstractC21159b) {
        l.e(abstractC21159b, "presenterView");
        this.f59311a = abstractC21159b;
        this.f59313c.mo10216a();
        if (!mo10238C()) {
            mo10233x(0, 12);
            abstractC21159b.mo10198V1();
        } else if (mo10244D()) {
            abstractC21159b.mo10194r4();
        } else {
            mo10233x(0, 10);
            abstractC21159b.mo10198V1();
        }
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: u */
    public void mo10240u() {
        mo10233x(0, 14);
        AbstractC21159b abstractC21159b = this.f59311a;
        if (abstractC21159b != null) {
            abstractC21159b.mo10198V1();
        }
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: v */
    public boolean mo10239v() {
        return mo10245B().getBoolean("PARTNERINFO_OTHER_NUMBER", false);
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21152d
    /* renamed from: w */
    public String mo10218w() {
        return mo10234m().m11229b(1) ? "skip" : mo10234m().m11230a() ? "None" : mo10234m().m11229b(256) ? "uam" : mo10234m().m11229b(512) ? "edm" : mo10234m().m11229b(4096) ? "idl" : "uan";
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21152d
    /* renamed from: y */
    public String mo10217y() {
        CustomDataBundle customDataBundle = mo10234m().f57196c;
        if (customDataBundle != null) {
            Map<String, Integer> map = C21138c.f59292d;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, Integer> entry : map.entrySet()) {
                int intValue = entry.getValue().intValue();
                l.d(customDataBundle, "customDataBundle");
                if (intValue == customDataBundle.f10000f) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            Set keySet = linkedHashMap.keySet();
            if (i.d(keySet)) {
                return (String) i.u(keySet, 0);
            }
        }
        return (String) i.u(C21138c.f59292d.keySet(), 0);
    }
}
