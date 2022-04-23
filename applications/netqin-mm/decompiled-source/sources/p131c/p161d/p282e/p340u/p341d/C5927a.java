package p131c.p161d.p282e.p340u.p341d;

import android.content.Context;
import com.facebook.ads.ExtraHints;
import com.google.firebase.perf.config.ConfigurationConstants$LogSourceName;
import com.google.firebase.perf.internal.RemoteConfigManager;
import p131c.p161d.p282e.p340u.C5924a;
import p131c.p161d.p282e.p340u.p345h.C5969a;
import p131c.p161d.p282e.p340u.p349l.C5994b;
import p131c.p161d.p282e.p340u.p349l.C5995c;
import p131c.p161d.p282e.p340u.p349l.C5998f;
/* renamed from: c.d.e.u.d.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/d/a.class */
public class C5927a {

    /* renamed from: d */
    public static final C5969a f19283d = C5969a.m22496a();

    /* renamed from: e */
    public static volatile C5927a f19284e;

    /* renamed from: a */
    public C5994b f19285a;

    /* renamed from: b */
    public RemoteConfigManager f19286b;

    /* renamed from: c */
    public C5947u f19287c;

    public C5927a(RemoteConfigManager remoteConfigManager, C5994b bVar, C5947u uVar) {
        this.f19286b = remoteConfigManager == null ? RemoteConfigManager.getInstance() : remoteConfigManager;
        this.f19285a = bVar == null ? new C5994b() : bVar;
        this.f19287c = uVar == null ? C5947u.m22599b() : uVar;
    }

    /* renamed from: v */
    public static C5927a m22644v() {
        C5927a aVar;
        synchronized (C5927a.class) {
            try {
                if (f19284e == null) {
                    f19284e = new C5927a(null, null, null);
                }
                aVar = f19284e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }

    /* renamed from: a */
    public int m22682a(String str) {
        return Math.abs(str.hashCode() % 100);
    }

    /* renamed from: a */
    public final C5995c<Boolean> m22684a(AbstractC5946t<Boolean> tVar) {
        return this.f19287c.m22604a(tVar.mo7272a());
    }

    /* renamed from: a */
    public String m22688a() {
        String a;
        ConfigurationConstants$LogSourceName e = ConfigurationConstants$LogSourceName.m7267e();
        if (C5924a.f19276a.booleanValue()) {
            return e.m7268d();
        }
        String c = e.mo7269c();
        long j = -1;
        if (c != null) {
            j = ((Long) this.f19286b.getRemoteConfigValueOrDefault(c, -1L)).longValue();
        }
        String a2 = e.mo7272a();
        if (!ConfigurationConstants$LogSourceName.m7270b(j) || (a = ConfigurationConstants$LogSourceName.m7271a(j)) == null) {
            C5995c<String> d = m22669d(e);
            return d.m22365b() ? d.m22367a() : e.m7268d();
        }
        this.f19287c.m22601a(a2, a);
        return a;
    }

    /* renamed from: a */
    public void m22685a(Context context) {
        f19283d.m22494a(C5998f.m22359a(context));
        this.f19287c.m22605a(context);
    }

    /* renamed from: a */
    public void m22683a(C5994b bVar) {
        this.f19285a = bVar;
    }

    /* renamed from: a */
    public final boolean m22687a(float f) {
        return 0.0f <= f && f <= 1.0f;
    }

    /* renamed from: a */
    public final boolean m22686a(long j) {
        return j >= 0;
    }

    /* renamed from: b */
    public float m22681b() {
        C5945s f = C5945s.m22608f();
        C5995c<Float> b = m22677b(f);
        if (!this.f19286b.isFirebaseRemoteConfigAvailable()) {
            return (!b.m22365b() || !m22680b(b.m22367a().floatValue())) ? C5945s.m22610d() : b.m22367a().floatValue();
        }
        C5995c<Float> i = m22659i(f);
        if (i.m22365b()) {
            if (!m22680b(i.m22367a().floatValue())) {
                return (!b.m22365b() || !m22680b(b.m22367a().floatValue())) ? C5945s.m22610d() : b.m22367a().floatValue();
            }
            this.f19287c.m22603a(f.mo7272a(), i.m22367a().floatValue());
            return i.m22367a().floatValue();
        } else if (this.f19286b.isFirebaseRemoteConfigMapEmpty()) {
            return C5945s.m22610d();
        } else {
            this.f19287c.m22603a(f.mo7272a(), C5945s.m22609e());
            return C5945s.m22609e();
        }
    }

    /* renamed from: b */
    public final C5995c<Float> m22677b(AbstractC5946t<Float> tVar) {
        return this.f19287c.m22598b(tVar.mo7272a());
    }

    /* renamed from: b */
    public void m22678b(Context context) {
        m22685a(context.getApplicationContext());
    }

    /* renamed from: b */
    public final boolean m22680b(float f) {
        return 0.0f <= f && f <= 100.0f;
    }

    /* renamed from: b */
    public final boolean m22679b(long j) {
        return j >= 0;
    }

    /* renamed from: b */
    public boolean m22676b(String str) {
        boolean z = false;
        if (str != null) {
            if (str.isEmpty()) {
                z = false;
            } else {
                z = false;
                if (m22682a(str) < m22681b()) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: c */
    public final C5995c<Long> m22673c(AbstractC5946t<Long> tVar) {
        return this.f19287c.m22597c(tVar.mo7272a());
    }

    /* renamed from: c */
    public Boolean m22675c() {
        C5928b e = C5928b.m22642e();
        C5995c<Boolean> e2 = m22667e(e);
        return e2.m22365b() ? e2.m22367a() : e.m22643d();
    }

    /* renamed from: c */
    public final boolean m22674c(long j) {
        return j > 0;
    }

    /* renamed from: c */
    public final boolean m22672c(String str) {
        if (str.trim().isEmpty()) {
            return false;
        }
        for (String str2 : str.split(ExtraHints.KEYWORD_SEPARATOR)) {
            if (str2.trim().equals(C5924a.f19277b)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public final C5995c<String> m22669d(AbstractC5946t<String> tVar) {
        return this.f19287c.m22596d(tVar.mo7272a());
    }

    /* renamed from: d */
    public Boolean m22671d() {
        if (m22675c().booleanValue()) {
            return false;
        }
        C5929c d = C5929c.m22641d();
        C5995c<Boolean> a = m22684a(d);
        if (a.m22365b()) {
            return a.m22367a();
        }
        C5995c<Boolean> e = m22667e(d);
        if (e.m22365b()) {
            return e.m22367a();
        }
        f19283d.m22495a("CollectionEnabled metadata key unknown or value not found in manifest.", new Object[0]);
        return null;
    }

    /* renamed from: d */
    public final boolean m22670d(long j) {
        return j > 0;
    }

    /* renamed from: e */
    public final C5995c<Boolean> m22667e(AbstractC5946t<Boolean> tVar) {
        return this.f19285a.m22371b(tVar.mo22607b());
    }

    /* renamed from: e */
    public boolean m22668e() {
        return m22666f() && !m22664g();
    }

    /* renamed from: f */
    public final C5995c<Float> m22665f(AbstractC5946t<Float> tVar) {
        return this.f19285a.m22370c(tVar.mo22607b());
    }

    /* renamed from: f */
    public final boolean m22666f() {
        C5935i e = C5935i.m22629e();
        C5995c<Boolean> h = m22661h(e);
        if (!h.m22365b()) {
            C5995c<Boolean> a = m22684a(e);
            return a.m22365b() ? a.m22367a().booleanValue() : e.m22630d().booleanValue();
        } else if (this.f19286b.isLastFetchFailed()) {
            return false;
        } else {
            this.f19287c.m22600a(e.mo7272a(), h.m22367a().booleanValue());
            return h.m22367a().booleanValue();
        }
    }

    /* renamed from: g */
    public final C5995c<Long> m22663g(AbstractC5946t<Long> tVar) {
        return this.f19285a.m22368e(tVar.mo22607b());
    }

    /* renamed from: g */
    public final boolean m22664g() {
        C5934h e = C5934h.m22631e();
        C5995c<String> k = m22655k(e);
        if (k.m22365b()) {
            this.f19287c.m22601a(e.mo7272a(), k.m22367a());
            return m22672c(k.m22367a());
        }
        C5995c<String> d = m22669d(e);
        return d.m22365b() ? m22672c(d.m22367a()) : m22672c(e.m22632d());
    }

    /* renamed from: h */
    public long m22662h() {
        C5930d e = C5930d.m22639e();
        C5995c<Long> j = m22657j(e);
        if (!j.m22365b() || !m22686a(j.m22367a().longValue())) {
            C5995c<Long> c = m22673c(e);
            return (!c.m22365b() || !m22686a(c.m22367a().longValue())) ? e.m22640d().longValue() : c.m22367a().longValue();
        }
        this.f19287c.m22602a(e.mo7272a(), j.m22367a().longValue());
        return j.m22367a().longValue();
    }

    /* renamed from: h */
    public final C5995c<Boolean> m22661h(AbstractC5946t<Boolean> tVar) {
        return this.f19286b.getBoolean(tVar.mo7269c());
    }

    /* renamed from: i */
    public long m22660i() {
        C5931e e = C5931e.m22637e();
        C5995c<Long> j = m22657j(e);
        if (!j.m22365b() || !m22686a(j.m22367a().longValue())) {
            C5995c<Long> c = m22673c(e);
            return (!c.m22365b() || !m22686a(c.m22367a().longValue())) ? e.m22638d().longValue() : c.m22367a().longValue();
        }
        this.f19287c.m22602a(e.mo7272a(), j.m22367a().longValue());
        return j.m22367a().longValue();
    }

    /* renamed from: i */
    public final C5995c<Float> m22659i(AbstractC5946t<Float> tVar) {
        return this.f19286b.getFloat(tVar.mo7269c());
    }

    /* renamed from: j */
    public float m22658j() {
        C5932f e = C5932f.m22635e();
        C5995c<Float> i = m22659i(e);
        if (!i.m22365b() || !m22687a(i.m22367a().floatValue())) {
            C5995c<Float> b = m22677b(e);
            return (!b.m22365b() || !m22687a(b.m22367a().floatValue())) ? e.m22636d().floatValue() : b.m22367a().floatValue();
        }
        this.f19287c.m22603a(e.mo7272a(), i.m22367a().floatValue());
        return i.m22367a().floatValue();
    }

    /* renamed from: j */
    public final C5995c<Long> m22657j(AbstractC5946t<Long> tVar) {
        return this.f19286b.getLong(tVar.mo7269c());
    }

    /* renamed from: k */
    public long m22656k() {
        C5933g e = C5933g.m22633e();
        C5995c<Long> j = m22657j(e);
        if (!j.m22365b() || !m22670d(j.m22367a().longValue())) {
            C5995c<Long> c = m22673c(e);
            return (!c.m22365b() || !m22670d(c.m22367a().longValue())) ? e.m22634d().longValue() : c.m22367a().longValue();
        }
        this.f19287c.m22602a(e.mo7272a(), j.m22367a().longValue());
        return j.m22367a().longValue();
    }

    /* renamed from: k */
    public final C5995c<String> m22655k(AbstractC5946t<String> tVar) {
        return this.f19286b.getString(tVar.mo7269c());
    }

    /* renamed from: l */
    public long m22654l() {
        C5936j e = C5936j.m22627e();
        C5995c<Long> g = m22663g(e);
        if (g.m22365b() && m22679b(g.m22367a().longValue())) {
            return g.m22367a().longValue();
        }
        C5995c<Long> j = m22657j(e);
        if (!j.m22365b() || !m22679b(j.m22367a().longValue())) {
            C5995c<Long> c = m22673c(e);
            return (!c.m22365b() || !m22679b(c.m22367a().longValue())) ? e.m22628d().longValue() : c.m22367a().longValue();
        }
        this.f19287c.m22602a(e.mo7272a(), j.m22367a().longValue());
        return j.m22367a().longValue();
    }

    /* renamed from: m */
    public long m22653m() {
        C5937k e = C5937k.m22625e();
        C5995c<Long> g = m22663g(e);
        if (g.m22365b() && m22679b(g.m22367a().longValue())) {
            return g.m22367a().longValue();
        }
        C5995c<Long> j = m22657j(e);
        if (!j.m22365b() || !m22679b(j.m22367a().longValue())) {
            C5995c<Long> c = m22673c(e);
            return (!c.m22365b() || !m22679b(c.m22367a().longValue())) ? e.m22626d().longValue() : c.m22367a().longValue();
        }
        this.f19287c.m22602a(e.mo7272a(), j.m22367a().longValue());
        return j.m22367a().longValue();
    }

    /* renamed from: n */
    public long m22652n() {
        C5938l e = C5938l.m22623e();
        C5995c<Long> g = m22663g(e);
        if (g.m22365b() && m22674c(g.m22367a().longValue())) {
            return g.m22367a().longValue();
        }
        C5995c<Long> j = m22657j(e);
        if (!j.m22365b() || !m22674c(j.m22367a().longValue())) {
            C5995c<Long> c = m22673c(e);
            return (!c.m22365b() || !m22674c(c.m22367a().longValue())) ? e.m22624d().longValue() : c.m22367a().longValue();
        }
        this.f19287c.m22602a(e.mo7272a(), j.m22367a().longValue());
        return j.m22367a().longValue();
    }

    /* renamed from: o */
    public long m22651o() {
        C5939m e = C5939m.m22621e();
        C5995c<Long> g = m22663g(e);
        if (g.m22365b() && m22679b(g.m22367a().longValue())) {
            return g.m22367a().longValue();
        }
        C5995c<Long> j = m22657j(e);
        if (!j.m22365b() || !m22679b(j.m22367a().longValue())) {
            C5995c<Long> c = m22673c(e);
            return (!c.m22365b() || !m22679b(c.m22367a().longValue())) ? e.m22622d().longValue() : c.m22367a().longValue();
        }
        this.f19287c.m22602a(e.mo7272a(), j.m22367a().longValue());
        return j.m22367a().longValue();
    }

    /* renamed from: p */
    public long m22650p() {
        C5940n e = C5940n.m22619e();
        C5995c<Long> g = m22663g(e);
        if (g.m22365b() && m22679b(g.m22367a().longValue())) {
            return g.m22367a().longValue();
        }
        C5995c<Long> j = m22657j(e);
        if (!j.m22365b() || !m22679b(j.m22367a().longValue())) {
            C5995c<Long> c = m22673c(e);
            return (!c.m22365b() || !m22679b(c.m22367a().longValue())) ? e.m22620d().longValue() : c.m22367a().longValue();
        }
        this.f19287c.m22602a(e.mo7272a(), j.m22367a().longValue());
        return j.m22367a().longValue();
    }

    /* renamed from: q */
    public float m22649q() {
        C5941o e = C5941o.m22617e();
        C5995c<Float> f = m22665f(e);
        if (f.m22365b()) {
            float floatValue = f.m22367a().floatValue() / 100.0f;
            if (m22687a(floatValue)) {
                return floatValue;
            }
        }
        C5995c<Float> i = m22659i(e);
        if (!i.m22365b() || !m22687a(i.m22367a().floatValue())) {
            C5995c<Float> b = m22677b(e);
            return (!b.m22365b() || !m22687a(b.m22367a().floatValue())) ? e.m22618d().floatValue() : b.m22367a().floatValue();
        }
        this.f19287c.m22603a(e.mo7272a(), i.m22367a().floatValue());
        return i.m22367a().floatValue();
    }

    /* renamed from: r */
    public long m22648r() {
        C5942p e = C5942p.m22615e();
        C5995c<Long> j = m22657j(e);
        if (!j.m22365b() || !m22686a(j.m22367a().longValue())) {
            C5995c<Long> c = m22673c(e);
            return (!c.m22365b() || !m22686a(c.m22367a().longValue())) ? e.m22616d().longValue() : c.m22367a().longValue();
        }
        this.f19287c.m22602a(e.mo7272a(), j.m22367a().longValue());
        return j.m22367a().longValue();
    }

    /* renamed from: s */
    public long m22647s() {
        C5943q e = C5943q.m22613e();
        C5995c<Long> j = m22657j(e);
        if (!j.m22365b() || !m22686a(j.m22367a().longValue())) {
            C5995c<Long> c = m22673c(e);
            return (!c.m22365b() || !m22686a(c.m22367a().longValue())) ? e.m22614d().longValue() : c.m22367a().longValue();
        }
        this.f19287c.m22602a(e.mo7272a(), j.m22367a().longValue());
        return j.m22367a().longValue();
    }

    /* renamed from: t */
    public float m22646t() {
        C5944r e = C5944r.m22611e();
        C5995c<Float> i = m22659i(e);
        if (!i.m22365b() || !m22687a(i.m22367a().floatValue())) {
            C5995c<Float> b = m22677b(e);
            return (!b.m22365b() || !m22687a(b.m22367a().floatValue())) ? e.m22612d().floatValue() : b.m22367a().floatValue();
        }
        this.f19287c.m22603a(e.mo7272a(), i.m22367a().floatValue());
        return i.m22367a().floatValue();
    }

    /* renamed from: u */
    public boolean m22645u() {
        Boolean d = m22671d();
        boolean z = true;
        if (!(d == null || d.booleanValue()) || !m22668e()) {
            z = false;
        }
        return z;
    }
}
