package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.measurement.C7300ab;
import com.google.android.gms.internal.measurement.C7332d1;
import com.google.android.gms.internal.measurement.C7360f1;
import com.google.android.gms.internal.measurement.C7374g1;
import com.google.android.gms.internal.measurement.C7402i1;
import com.google.android.gms.internal.measurement.zzib;
import java.util.ArrayList;
import java.util.Map;
import p020b.p036e.C1489a;
/* renamed from: com.google.android.gms.measurement.internal.k4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/k4.class */
public final class C7769k4 extends AbstractC7702e9 implements AbstractC7680d {

    /* renamed from: d */
    private final Map<String, Map<String, String>> f35377d = new C1489a();

    /* renamed from: e */
    private final Map<String, Map<String, Boolean>> f35378e = new C1489a();

    /* renamed from: f */
    private final Map<String, Map<String, Boolean>> f35379f = new C1489a();

    /* renamed from: g */
    private final Map<String, C7374g1> f35380g = new C1489a();

    /* renamed from: i */
    private final Map<String, String> f35382i = new C1489a();

    /* renamed from: h */
    private final Map<String, Map<String, Integer>> f35381h = new C1489a();

    public C7769k4(C7819o9 c7819o9) {
        super(c7819o9);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00f5, code lost:
        if (r13 == null) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01d0  */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m6316v(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7769k4.m6316v(java.lang.String):void");
    }

    /* renamed from: w */
    private final void m6315w(String str, C7360f1 c7360f1) {
        C1489a c1489a = new C1489a();
        C1489a c1489a2 = new C1489a();
        C1489a c1489a3 = new C1489a();
        if (c7360f1 != null) {
            for (int i = 0; i < c7360f1.m7547t(); i++) {
                C7332d1 m6761t = c7360f1.m7546v(i).m6761t();
                if (TextUtils.isEmpty(m6761t.m7617t())) {
                    this.f35460a.mo6047C().m6192p().m6216a("EventConfig contained null event name");
                } else {
                    String m7617t = m6761t.m7617t();
                    String m6092b = C7837q5.m6092b(m6761t.m7617t());
                    if (!TextUtils.isEmpty(m6092b)) {
                        m6761t.m7616v(m6092b);
                        c7360f1.m7545w(i, m6761t);
                    }
                    c1489a.put(m7617t, Boolean.valueOf(m6761t.m7615w()));
                    c1489a2.put(m6761t.m7617t(), Boolean.valueOf(m6761t.m7614x()));
                    if (m6761t.m7613y()) {
                        if (m6761t.m7618A() < 2 || m6761t.m7618A() > 65535) {
                            this.f35460a.mo6047C().m6192p().m6214c("Invalid sampling rate. Event name, sample rate", m6761t.m7617t(), Integer.valueOf(m6761t.m7618A()));
                        } else {
                            c1489a3.put(m6761t.m7617t(), Integer.valueOf(m6761t.m7618A()));
                        }
                    }
                }
            }
        }
        this.f35378e.put(str, c1489a);
        this.f35379f.put(str, c1489a2);
        this.f35381h.put(str, c1489a3);
    }

    /* renamed from: y */
    private final C7374g1 m6314y(String str, byte[] bArr) {
        if (bArr != null) {
            try {
                C7374g1 m6886n = ((C7360f1) C7841q9.m6073I(C7374g1.m7451J(), bArr)).m6886n();
                C7791m3 m6187u = this.f35460a.mo6047C().m6187u();
                String str2 = null;
                Long valueOf = m6886n.m7460A() ? Long.valueOf(m6886n.m7459B()) : null;
                if (m6886n.m7458C()) {
                    str2 = m6886n.m7457D();
                }
                m6187u.m6214c("Parsed config. version, gmp_app_id", valueOf, str2);
                return m6886n;
            } catch (zzib e) {
                this.f35460a.mo6047C().m6192p().m6214c("Unable to merge remote config. appId", C7813o3.m6186v(str), e);
                return C7374g1.m7450K();
            } catch (RuntimeException e2) {
                this.f35460a.mo6047C().m6192p().m6214c("Unable to merge remote config. appId", C7813o3.m6186v(str), e2);
                return C7374g1.m7450K();
            }
        }
        return C7374g1.m7450K();
    }

    /* renamed from: z */
    private static final Map<String, String> m6313z(C7374g1 c7374g1) {
        C1489a c1489a = new C1489a();
        if (c7374g1 != null) {
            for (C7402i1 c7402i1 : c7374g1.m7456E()) {
                c1489a.put(c7402i1.m7348A(), c7402i1.m7347B());
            }
        }
        return c1489a;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7680d
    /* renamed from: d */
    public final String mo6328d(String str, String str2) {
        mo6113f();
        m6316v(str);
        Map<String, String> map = this.f35377d.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7702e9
    /* renamed from: i */
    protected final boolean mo6003i() {
        return false;
    }

    /* renamed from: k */
    public final C7374g1 m6327k(String str) {
        m6455h();
        mo6113f();
        C6155o.m17022f(str);
        m6316v(str);
        return this.f35380g.get(str);
    }

    /* renamed from: l */
    public final String m6326l(String str) {
        mo6113f();
        return this.f35382i.get(str);
    }

    /* renamed from: m */
    public final void m6325m(String str) {
        mo6113f();
        this.f35382i.put(str, null);
    }

    /* renamed from: n */
    public final void m6324n(String str) {
        mo6113f();
        this.f35380g.remove(str);
    }

    /* renamed from: o */
    public final boolean m6323o(String str) {
        mo6113f();
        C7374g1 m6327k = m6327k(str);
        if (m6327k == null) {
            return false;
        }
        return m6327k.m7452I();
    }

    /* renamed from: p */
    public final boolean m6322p(String str, byte[] bArr, String str2) {
        m6455h();
        mo6113f();
        C6155o.m17022f(str);
        C7360f1 m6761t = m6314y(str, bArr).m6761t();
        if (m6761t == null) {
            return false;
        }
        m6315w(str, m6761t);
        this.f35380g.put(str, m6761t.m6886n());
        this.f35382i.put(str, str2);
        this.f35377d.put(str, m6313z(m6761t.m6886n()));
        this.f35186b.m6158W().m6367v(str, new ArrayList(m6761t.m7544x()));
        try {
            m6761t.m7543y();
            bArr = m6761t.m6886n().m7045i();
        } catch (RuntimeException e) {
            this.f35460a.mo6047C().m6192p().m6214c("Unable to serialize reduced-size config. Storing full config instead. appId", C7813o3.m6186v(str), e);
        }
        C7300ab.m7680a();
        if (this.f35460a.m6006y().m6471u(null, C7672c3.f35041G0)) {
            this.f35186b.m6158W().m6382g0(str, bArr, str2);
        } else {
            this.f35186b.m6158W().m6382g0(str, bArr, null);
        }
        this.f35380g.put(str, m6761t.m6886n());
        return true;
    }

    /* renamed from: q */
    public final boolean m6321q(String str, String str2) {
        Boolean bool;
        mo6113f();
        m6316v(str);
        if (!m6318t(str) || !C7885u9.m5996F(str2)) {
            if (m6317u(str) && C7885u9.m5965j0(str2)) {
                return true;
            }
            Map<String, Boolean> map = this.f35378e.get(str);
            if (map != null && (bool = map.get(str2)) != null) {
                return bool.booleanValue();
            }
            return false;
        }
        return true;
    }

    /* renamed from: r */
    public final boolean m6320r(String str, String str2) {
        Boolean bool;
        mo6113f();
        m6316v(str);
        if (!"ecommerce_purchase".equals(str2) && !"purchase".equals(str2) && !"refund".equals(str2)) {
            Map<String, Boolean> map = this.f35379f.get(str);
            if (map != null && (bool = map.get(str2)) != null) {
                return bool.booleanValue();
            }
            return false;
        }
        return true;
    }

    /* renamed from: s */
    public final int m6319s(String str, String str2) {
        Integer num;
        mo6113f();
        m6316v(str);
        Map<String, Integer> map = this.f35381h.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    /* renamed from: t */
    public final boolean m6318t(String str) {
        return "1".equals(mo6328d(str, "measurement.upload.blacklist_internal"));
    }

    /* renamed from: u */
    public final boolean m6317u(String str) {
        return "1".equals(mo6328d(str, "measurement.upload.blacklist_public"));
    }
}
