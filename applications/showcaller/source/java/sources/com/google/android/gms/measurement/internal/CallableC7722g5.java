package com.google.android.gms.measurement.internal;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.measurement.C7291a2;
import com.google.android.gms.internal.measurement.C7305b2;
import com.google.android.gms.internal.measurement.C7347e2;
import com.google.android.gms.internal.measurement.C7382g9;
import com.google.android.gms.internal.measurement.C7411ia;
import com.google.android.gms.internal.measurement.C7417j2;
import com.google.android.gms.internal.measurement.C7431k2;
import com.google.android.gms.internal.measurement.C7527r1;
import com.google.android.gms.internal.measurement.C7540s1;
import com.google.android.gms.internal.measurement.C7553t1;
import com.google.android.gms.internal.measurement.C7566u1;
import com.google.android.gms.internal.measurement.C7579v1;
import com.google.android.gms.internal.measurement.C7592w1;
import com.google.android.gms.internal.measurement.C7605x1;
import com.google.android.gms.internal.measurement.C7618y1;
import com.google.android.gms.internal.measurement.C7631z1;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.g5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/g5.class */
final class CallableC7722g5 implements Callable<byte[]> {

    /* renamed from: a */
    final /* synthetic */ zzas f35287a;

    /* renamed from: b */
    final /* synthetic */ String f35288b;

    /* renamed from: c */
    final /* synthetic */ BinderC7782l5 f35289c;

    public CallableC7722g5(BinderC7782l5 binderC7782l5, zzas zzasVar, String str) {
        this.f35289c = binderC7782l5;
        this.f35287a = zzasVar;
        this.f35288b = str;
    }

    /* JADX WARN: Type inference failed for: r0v280, types: [long] */
    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ byte[] call() {
        C7819o9 c7819o9;
        C7819o9 c7819o92;
        C7819o9 c7819o93;
        C7863s9 c7863s9;
        char c;
        C7809o c7809o;
        c7819o9 = this.f35289c.f35423d;
        c7819o9.m6137k();
        c7819o92 = this.f35289c.f35423d;
        C7652a7 m6155Z = c7819o92.m6155Z();
        zzas zzasVar = this.f35287a;
        String str = this.f35288b;
        m6155Z.mo6113f();
        C7858s4.m6012s();
        C6155o.m17018j(zzasVar);
        C6155o.m17022f(str);
        byte[] bArr = null;
        if (!m6155Z.f35460a.m6006y().m6471u(str, C7672c3.f35058W)) {
            m6155Z.f35460a.mo6047C().m6188t().m6215b("Generating ScionPayload disabled. packageName", str);
            bArr = new byte[0];
        } else if ("_iap".equals(zzasVar.f35872d) || "_iapx".equals(zzasVar.f35872d)) {
            C7605x1 m6748C = C7618y1.m6748C();
            m6155Z.f35186b.m6158W().m6402M();
            try {
                C7686d5 m6386c0 = m6155Z.f35186b.m6158W().m6386c0(str);
                if (m6386c0 == null) {
                    m6155Z.f35460a.mo6047C().m6188t().m6215b("Log and bundle not available. package_name", str);
                    bArr = new byte[0];
                    c7819o93 = m6155Z.f35186b;
                } else if (!m6386c0.m6520f()) {
                    m6155Z.f35460a.mo6047C().m6188t().m6215b("Log and bundle disabled. package_name", str);
                    bArr = new byte[0];
                    c7819o93 = m6155Z.f35186b;
                } else {
                    C7631z1 m7773K0 = C7291a2.m7773K0();
                    m7773K0.m6679W(1);
                    m7773K0.m6656t("android");
                    if (!TextUtils.isEmpty(m6386c0.m6543N())) {
                        m7773K0.m6708C(m6386c0.m6543N());
                    }
                    if (!TextUtils.isEmpty(m6386c0.m6513i0())) {
                        m7773K0.m6712A((String) C6155o.m17018j(m6386c0.m6513i0()));
                    }
                    if (!TextUtils.isEmpty(m6386c0.m6521e0())) {
                        m7773K0.m6706D((String) C6155o.m17018j(m6386c0.m6521e0()));
                    }
                    if (m6386c0.m6517g0() != -2147483648L) {
                        m7773K0.m6677Y((int) m6386c0.m6517g0());
                    }
                    m7773K0.m6704E(m6386c0.m6509k0());
                    m7773K0.m6667i0(m6386c0.m6524d());
                    String m6540Q = m6386c0.m6540Q();
                    String m6538S = m6386c0.m6538S();
                    C7411ia.m7293a();
                    if (m6155Z.f35460a.m6006y().m6471u(m6386c0.m6543N(), C7672c3.f35079i0)) {
                        String m6536U = m6386c0.m6536U();
                        if (!TextUtils.isEmpty(m6540Q)) {
                            m7773K0.m6683S(m6540Q);
                        } else if (!TextUtils.isEmpty(m6536U)) {
                            m7773K0.m6664l0(m6536U);
                        } else if (!TextUtils.isEmpty(m6538S)) {
                            m7773K0.m6670f0(m6538S);
                        }
                    } else if (!TextUtils.isEmpty(m6540Q)) {
                        m7773K0.m6683S(m6540Q);
                    } else if (!TextUtils.isEmpty(m6538S)) {
                        m7773K0.m6670f0(m6538S);
                    }
                    C7704f m6144g0 = m6155Z.f35186b.m6144g0(str);
                    m7773K0.m6688M(m6386c0.m6528b());
                    if (m6155Z.f35460a.m6022i() && m6155Z.f35460a.m6006y().m6489F(m7773K0.m6710B())) {
                        C7382g9.m7385a();
                        if (!m6155Z.f35460a.m6006y().m6471u(null, C7672c3.f35111y0)) {
                            m7773K0.m6710B();
                            if (!TextUtils.isEmpty(null)) {
                                m7773K0.m6673c0(null);
                            }
                        } else if (m6144g0.m6445f() && !TextUtils.isEmpty(null)) {
                            m7773K0.m6673c0(null);
                        }
                    }
                    C7382g9.m7385a();
                    C7692e m6006y = m6155Z.f35460a.m6006y();
                    C7648a3<Boolean> c7648a3 = C7672c3.f35111y0;
                    if (m6006y.m6471u(null, c7648a3)) {
                        m7773K0.m6663m0(m6144g0.m6447d());
                    }
                    C7382g9.m7385a();
                    if (!m6155Z.f35460a.m6006y().m6471u(null, c7648a3) || m6144g0.m6445f()) {
                        Pair<String, Boolean> m6224k = m6155Z.f35186b.m6153b0().m6224k(m6386c0.m6543N(), m6144g0);
                        if (m6386c0.m6550G() && !TextUtils.isEmpty((CharSequence) m6224k.first)) {
                            try {
                                m7773K0.m6700G(C7652a7.m6586k((String) m6224k.first, Long.toString(zzasVar.f35875g)));
                                Object obj = m6224k.second;
                                if (obj != null) {
                                    m7773K0.m6696I(((Boolean) obj).booleanValue());
                                }
                            } catch (SecurityException e) {
                                m6155Z.f35460a.mo6047C().m6188t().m6215b("Resettable device id encryption failed", e.getMessage());
                                bArr = new byte[0];
                                c7819o93 = m6155Z.f35186b;
                            }
                        }
                    }
                    m6155Z.f35460a.m6031S().m6209j();
                    m7773K0.m6651w(Build.MODEL);
                    m6155Z.f35460a.m6031S().m6209j();
                    m7773K0.m6653v(Build.VERSION.RELEASE);
                    m7773K0.m6647y((int) m6155Z.f35460a.m6031S().m6221m());
                    m7773K0.m6649x(m6155Z.f35460a.m6031S().m6220n());
                    try {
                        C7382g9.m7385a();
                        if ((!m6155Z.f35460a.m6006y().m6471u(null, c7648a3) || m6144g0.m6443h()) && m6386c0.m6542O() != null) {
                            m7773K0.m6692K(C7652a7.m6586k((String) C6155o.m17018j(m6386c0.m6542O()), Long.toString(zzasVar.f35875g)));
                        }
                        if (!TextUtils.isEmpty(m6386c0.m6532Y())) {
                            m7773K0.m6678X((String) C6155o.m17018j(m6386c0.m6532Y()));
                        }
                        String m6543N = m6386c0.m6543N();
                        List<C7863s9> m6393V = m6155Z.f35186b.m6158W().m6393V(m6543N);
                        Iterator<C7863s9> it = m6393V.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                c7863s9 = null;
                                break;
                            }
                            c7863s9 = it.next();
                            if ("_lte".equals(c7863s9.f35683c)) {
                                break;
                            }
                        }
                        if (c7863s9 == null || c7863s9.f35685e == null) {
                            C7863s9 c7863s92 = new C7863s9(m6543N, "auto", "_lte", m6155Z.f35460a.mo6007x().mo16807a(), 0L);
                            m6393V.add(c7863s92);
                            m6155Z.f35186b.m6158W().m6395T(c7863s92);
                        }
                        C7841q9 m6154a0 = m6155Z.f35186b.m6154a0();
                        m6154a0.f35460a.mo6047C().m6187u().m6216a("Checking account type status for ad personalization signals");
                        if (m6154a0.f35460a.m6031S().m6217q()) {
                            String m6543N2 = m6386c0.m6543N();
                            C6155o.m17018j(m6543N2);
                            if (m6386c0.m6550G() && m6154a0.f35186b.m6160U().m6323o(m6543N2)) {
                                m6154a0.f35460a.mo6047C().m6188t().m6216a("Turning off ad personalization due to account type");
                                Iterator<C7863s9> it2 = m6393V.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        break;
                                    } else if ("_npa".equals(it2.next().f35683c)) {
                                        it2.remove();
                                        break;
                                    }
                                }
                                m6393V.add(new C7863s9(m6543N2, "auto", "_npa", m6154a0.f35460a.mo6007x().mo16807a(), 1L));
                            }
                        }
                        C7431k2[] c7431k2Arr = new C7431k2[m6393V.size()];
                        for (int i = 0; i < m6393V.size(); i++) {
                            C7417j2 m7224J = C7431k2.m7224J();
                            m7224J.m7249v(m6393V.get(i).f35683c);
                            m7224J.m7250t(m6393V.get(i).f35684d);
                            m6155Z.f35186b.m6154a0().m6059s(m7224J, m6393V.get(i).f35685e);
                            c7431k2Arr[i] = m7224J.m6886n();
                        }
                        m7773K0.m6709B0(Arrays.asList(c7431k2Arr));
                        C7824p3 m6119a = C7824p3.m6119a(zzasVar);
                        m6155Z.f35460a.m6043G().m5948t(m6119a.f35572d, m6155Z.f35186b.m6158W().m6368u(str));
                        m6155Z.f35460a.m6043G().m5950s(m6119a, m6155Z.f35460a.m6006y().m6480l(str));
                        Bundle bundle = m6119a.f35572d;
                        bundle.putLong("_c", 1L);
                        m6155Z.f35460a.mo6047C().m6188t().m6216a("Marking in-app purchase as real-time");
                        bundle.putLong("_r", 1L);
                        bundle.putString("_o", zzasVar.f35874f);
                        if (m6155Z.f35460a.m6043G().m5994H(m7773K0.m6710B())) {
                            m6155Z.f35460a.m6043G().m5941y(bundle, "_dbg", 1L);
                            m6155Z.f35460a.m6043G().m5941y(bundle, "_r", 1L);
                        }
                        C7809o m6398Q = m6155Z.f35186b.m6158W().m6398Q(str, zzasVar.f35872d);
                        if (m6398Q == null) {
                            c7809o = new C7809o(str, zzasVar.f35872d, 0L, 0L, 0L, zzasVar.f35875g, 0L, null, null, null, null);
                            c = 0;
                        } else {
                            c = m6398Q.f35504f;
                            c7809o = m6398Q.m6204a(zzasVar.f35875g);
                        }
                        m6155Z.f35186b.m6158W().m6397R(c7809o);
                        C7798n c7798n = new C7798n(m6155Z.f35460a, zzasVar.f35874f, str, zzasVar.f35872d, zzasVar.f35875g, c, bundle);
                        C7527r1 m6944K = C7540s1.m6944K();
                        m6944K.m6974J(c7798n.f35475d);
                        m6944K.m6977G(c7798n.f35473b);
                        m6944K.m6972L(c7798n.f35476e);
                        C7820p c7820p = new C7820p(c7798n.f35477f);
                        while (c7820p.hasNext()) {
                            String next = c7820p.next();
                            C7579v1 m6811M = C7592w1.m6811M();
                            m6811M.m6841t(next);
                            Object m5869k0 = c7798n.f35477f.m5869k0(next);
                            if (m5869k0 != null) {
                                m6155Z.f35186b.m6154a0().m6058t(m6811M, m5869k0);
                                m6944K.m6982B(m6811M);
                            }
                        }
                        m7773K0.m6658r0(m6944K);
                        C7305b2 m7561A = C7347e2.m7561A();
                        C7553t1 m6894A = C7566u1.m6894A();
                        m6894A.m6909v(c7809o.f35501c);
                        m6894A.m6910t(zzasVar.f35872d);
                        m7561A.m7667t(m6894A);
                        m7773K0.m6669g0(m7561A);
                        m7773K0.m6681U(m6155Z.f35186b.m6156Y().m6331k(m6386c0.m6543N(), Collections.emptyList(), m7773K0.m6652v0(), Long.valueOf(m6944K.m6975I()), Long.valueOf(m6944K.m6975I())));
                        if (m6944K.m6976H()) {
                            m7773K0.m6701F0(m6944K.m6975I());
                            m7773K0.m6697H0(m6944K.m6975I());
                        }
                        long m6525c0 = m6386c0.m6525c0();
                        int i2 = (m6525c0 > 0L ? 1 : (m6525c0 == 0L ? 0 : -1));
                        if (i2 != 0) {
                            m7773K0.m6691K0(m6525c0);
                        }
                        long m6529a0 = m6386c0.m6529a0();
                        if (m6529a0 != 0) {
                            m7773K0.m6695I0(m6529a0);
                        } else if (i2 != 0) {
                            m7773K0.m6695I0(m6525c0);
                        }
                        m6386c0.m6506n();
                        m7773K0.m6687N((int) m6386c0.m6514i());
                        m6155Z.f35460a.m6006y().m6478n();
                        m7773K0.m6702F(39065L);
                        m7773K0.m6705D0(m6155Z.f35460a.mo6007x().mo16807a());
                        m7773K0.m6682T(true);
                        m6748C.m6776v(m7773K0);
                        m6386c0.m6527b0(m7773K0.m6703E0());
                        m6386c0.m6523d0(m7773K0.m6699G0());
                        m6155Z.f35186b.m6158W().m6385d0(m6386c0);
                        m6155Z.f35186b.m6158W().m6401N();
                        try {
                            bArr = m6155Z.f35186b.m6154a0().m6074H(m6748C.m6886n().m7045i());
                        } catch (IOException e2) {
                            m6155Z.f35460a.mo6047C().m6195m().m6214c("Data loss. Failed to bundle and serialize. appId", C7813o3.m6186v(str), e2);
                            bArr = null;
                        }
                    } catch (SecurityException e3) {
                        m6155Z.f35460a.mo6047C().m6188t().m6215b("app instance id encryption failed", e3.getMessage());
                        bArr = new byte[0];
                        c7819o93 = m6155Z.f35186b;
                    }
                }
                c7819o93.m6158W().m6400O();
            } finally {
                m6155Z.f35186b.m6158W().m6400O();
            }
        } else {
            m6155Z.f35460a.mo6047C().m6188t().m6214c("Generating a payload for this event is not available. package_name, event_name", str, zzasVar.f35872d);
        }
        return bArr;
    }
}
