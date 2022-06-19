package com.google.android.gms.measurement.internal;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.measurement.C13401bv;
import com.google.android.gms.internal.measurement.C13402bw;
import com.google.android.gms.internal.measurement.C13403bx;
import com.google.android.gms.internal.measurement.C13404by;
import com.google.android.gms.internal.measurement.C13405bz;
import com.google.android.gms.internal.measurement.C13407ca;
import com.google.android.gms.internal.measurement.C13408cb;
import com.google.android.gms.internal.measurement.C13409cc;
import com.google.android.gms.internal.measurement.C13410cd;
import com.google.android.gms.internal.measurement.C13411ce;
import com.google.android.gms.internal.measurement.C13412cf;
import com.google.android.gms.internal.measurement.C13416cj;
import com.google.android.gms.internal.measurement.C13421co;
import com.google.android.gms.internal.measurement.C13422cp;
import com.google.android.gms.internal.measurement.C13620jy;
import com.google.android.gms.internal.measurement.C13650la;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.fg */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fg.class */
final class CallableC13994fg implements Callable<byte[]> {

    /* renamed from: a */
    final /* synthetic */ zzas f51619a;

    /* renamed from: b */
    final /* synthetic */ String f51620b;

    /* renamed from: c */
    final /* synthetic */ BinderC13999fl f51621c;

    public CallableC13994fg(BinderC13999fl binderC13999fl, zzas zzasVar, String str) {
        this.f51621c = binderC13999fl;
        this.f51619a = zzasVar;
        this.f51620b = str;
    }

    /* JADX WARN: Type inference failed for: r0v281, types: [long] */
    @Override // java.util.concurrent.Callable
    public final /* synthetic */ byte[] call() throws Exception {
        C14110jo c14110jo;
        C14110jo c14110jo2;
        C14110jo c14110jo3;
        C14114js c14114js;
        char c;
        C14137o c14137o;
        c14110jo = this.f51621c.f51634a;
        c14110jo.m11648n();
        c14110jo2 = this.f51621c.f51634a;
        C14042ha c14042ha = c14110jo2.f51967d;
        C14110jo.m11680a(c14042ha);
        zzas zzasVar = this.f51619a;
        String str = this.f51620b;
        c14042ha.mo11884S_();
        C13979es.m11972y();
        C12045o.m19162a(zzasVar);
        C12045o.m19160a(str);
        byte[] bArr = null;
        if (!c14042ha.f51637t.f51529g.m12061d(str, C13935dc.f51298U)) {
            c14042ha.f51637t.mo11661c().f51402j.m12091a("Generating ScionPayload disabled. packageName", str);
            bArr = new byte[0];
        } else if ("_iap".equals(zzasVar.zza) || "_iapx".equals(zzasVar.zza)) {
            C13408cb m13119a = C13409cc.m13119a();
            c14042ha.f51940f.m11654f().m11792b();
            try {
                C13991fd m11791b = c14042ha.f51940f.m11654f().m11791b(str);
                if (m11791b == null) {
                    c14042ha.f51637t.mo11661c().f51402j.m12091a("Log and bundle not available. package_name", str);
                    bArr = new byte[0];
                    c14110jo3 = c14042ha.f51940f;
                } else if (!m11791b.m11917q()) {
                    c14042ha.f51637t.mo11661c().f51402j.m12091a("Log and bundle disabled. package_name", str);
                    bArr = new byte[0];
                    c14110jo3 = c14042ha.f51940f;
                } else {
                    C13410cd m13029c = C13411ce.m13029c();
                    m13029c.m13116a();
                    m13029c.m13066k();
                    if (!TextUtils.isEmpty(m11791b.m11950b())) {
                        m13029c.m13085e(m11791b.m11950b());
                    }
                    if (!TextUtils.isEmpty(m11791b.m11921m())) {
                        m13029c.m13089d((String) C12045o.m19162a(m11791b.m11921m()));
                    }
                    if (!TextUtils.isEmpty(m11791b.m11923k())) {
                        m13029c.m13081f((String) C12045o.m19162a(m11791b.m11923k()));
                    }
                    if (m11791b.m11922l() != -2147483648L) {
                        m13029c.m13079g((int) m11791b.m11922l());
                    }
                    m13029c.m13082f(m11791b.m11920n());
                    m13029c.m13068j(m11791b.m11918p());
                    String m11943d = m11791b.m11943d();
                    String m11940e = m11791b.m11940e();
                    C13650la.m12368b();
                    if (c14042ha.f51637t.f51529g.m12061d(m11791b.m11950b(), C13935dc.f51319ag)) {
                        String m11937f = m11791b.m11937f();
                        if (!TextUtils.isEmpty(m11943d)) {
                            m13029c.m13067j(m11943d);
                        } else if (!TextUtils.isEmpty(m11937f)) {
                            m13029c.m13060m(m11937f);
                        } else if (!TextUtils.isEmpty(m11940e)) {
                            m13029c.m13062l(m11940e);
                        }
                    } else if (!TextUtils.isEmpty(m11943d)) {
                        m13029c.m13067j(m11943d);
                    } else if (!TextUtils.isEmpty(m11940e)) {
                        m13029c.m13062l(m11940e);
                    }
                    C13987f m11673a = c14042ha.f51940f.m11673a(str);
                    m13029c.m13078g(m11791b.m11919o());
                    if (c14042ha.f51637t.m11979r() && c14042ha.f51637t.f51529g.m12059e(m13029c.m13063l())) {
                        C13620jy.m12411b();
                        if (!c14042ha.f51637t.f51529g.m12061d(null, C13935dc.f51335aw)) {
                            m13029c.m13063l();
                            if (!TextUtils.isEmpty(null)) {
                                m13029c.m13051u();
                            }
                        } else if (m11673a.m11962b() && !TextUtils.isEmpty(null)) {
                            m13029c.m13051u();
                        }
                    }
                    C13620jy.m12411b();
                    if (c14042ha.f51637t.f51529g.m12061d(null, C13935dc.f51335aw)) {
                        m13029c.m13058n(m11673a.m11970a());
                    }
                    C13620jy.m12411b();
                    if (!c14042ha.f51637t.f51529g.m12061d(null, C13935dc.f51335aw) || m11673a.m11962b()) {
                        Pair<String, Boolean> m11729a = c14042ha.f51940f.f51968e.m11729a(m11791b.m11950b(), m11673a);
                        if (m11791b.m11910x() && !TextUtils.isEmpty((CharSequence) m11729a.first)) {
                            try {
                                Object obj = m11729a.first;
                                Long.toString(zzasVar.zzd);
                                m13029c.m13077g(C14042ha.m11834b());
                                if (m11729a.second != null) {
                                    m13029c.m13105a(((Boolean) m11729a.second).booleanValue());
                                }
                            } catch (SecurityException e) {
                                c14042ha.f51637t.mo11661c().f51402j.m12091a("Resettable device id encryption failed", e.getMessage());
                                bArr = new byte[0];
                                c14110jo3 = c14042ha.f51940f;
                            }
                        }
                    }
                    c14042ha.f51637t.m11983n().m11881g();
                    m13029c.m13100b(Build.MODEL);
                    c14042ha.f51637t.m11983n().m11881g();
                    m13029c.m13106a(Build.VERSION.RELEASE);
                    m13029c.m13087e((int) c14042ha.f51637t.m11983n().m11520Z_());
                    m13029c.m13094c(c14042ha.f51637t.m11983n().aa_());
                    try {
                        C13620jy.m12411b();
                        if ((!c14042ha.f51637t.f51529g.m12061d(null, C13935dc.f51335aw) || m11673a.m11957c()) && m11791b.m11946c() != null) {
                            C12045o.m19162a(m11791b.m11946c());
                            Long.toString(zzasVar.zzd);
                            m13029c.m13073h(C14042ha.m11834b());
                        }
                        if (!TextUtils.isEmpty(m11791b.m11931h())) {
                            m13029c.m13064k((String) C12045o.m19162a(m11791b.m11931h()));
                        }
                        String m11950b = m11791b.m11950b();
                        List<C14114js> m11801a = c14042ha.f51940f.m11654f().m11801a(m11950b);
                        Iterator<C14114js> it2 = m11801a.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                c14114js = null;
                                break;
                            }
                            c14114js = it2.next();
                            if ("_lte".equals(c14114js.f51992c)) {
                                break;
                            }
                        }
                        if (c14114js == null || c14114js.f51994e == null) {
                            C14114js c14114js2 = new C14114js(m11950b, "auto", "_lte", c14042ha.f51637t.f51532j.mo19039a(), 0L);
                            m11801a.add(c14114js2);
                            c14042ha.f51940f.m11654f().m11804a(c14114js2);
                        }
                        C14112jq m11653g = c14042ha.f51940f.m11653g();
                        m11653g.f51637t.mo11661c().f51403k.m12092a("Checking account type status for ad personalization signals");
                        if (m11653g.f51637t.m11983n().ab_()) {
                            String m11950b2 = m11791b.m11950b();
                            C12045o.m19162a(m11950b2);
                            if (m11791b.m11910x()) {
                                C13970ej c13970ej = m11653g.f51940f.f51964a;
                                C14110jo.m11680a(c13970ej);
                                if (c13970ej.m12024c(m11950b2)) {
                                    m11653g.f51637t.mo11661c().f51402j.m12092a("Turning off ad personalization due to account type");
                                    Iterator<C14114js> it3 = m11801a.iterator();
                                    while (true) {
                                        if (!it3.hasNext()) {
                                            break;
                                        } else if ("_npa".equals(it3.next().f51992c)) {
                                            it3.remove();
                                            break;
                                        }
                                    }
                                    m11801a.add(new C14114js(m11950b2, "auto", "_npa", m11653g.f51637t.f51532j.mo19039a(), 1L));
                                }
                            }
                        }
                        C13422cp[] c13422cpArr = new C13422cp[m11801a.size()];
                        for (int i = 0; i < m11801a.size(); i++) {
                            C13421co m12932d = C13422cp.m12932d();
                            m12932d.m12948a(m11801a.get(i).f51992c);
                            m12932d.m12949a(m11801a.get(i).f51993d);
                            c14042ha.f51940f.m11653g().m11633a(m12932d, m11801a.get(i).f51994e);
                            c13422cpArr[i] = m12932d.m12779A();
                        }
                        m13029c.m13101b(Arrays.asList(c13422cpArr));
                        C13948dp m12082a = C13948dp.m12082a(zzasVar);
                        c14042ha.f51637t.m11988g().m11602a(m12082a.f51408d, c14042ha.f51940f.m11654f().m11782e(str));
                        c14042ha.f51637t.m11988g().m11592a(m12082a, c14042ha.f51637t.f51529g.m12070a(str));
                        Bundle bundle = m12082a.f51408d;
                        bundle.putLong("_c", 1L);
                        c14042ha.f51637t.mo11661c().f51402j.m12092a("Marking in-app purchase as real-time");
                        bundle.putLong("_r", 1L);
                        bundle.putString("_o", zzasVar.zzc);
                        if (c14042ha.f51637t.m11988g().m11560f(m13029c.m13063l())) {
                            c14042ha.f51637t.m11988g().m11601a(bundle, "_dbg", (Object) 1L);
                            c14042ha.f51637t.m11988g().m11601a(bundle, "_r", (Object) 1L);
                        }
                        C14137o m11799a = c14042ha.f51940f.m11654f().m11799a(str, zzasVar.zza);
                        if (m11799a == null) {
                            c14137o = new C14137o(str, zzasVar.zza, 0L, 0L, 0L, zzasVar.zzd, 0L, null, null, null, null);
                            c = 0;
                        } else {
                            c = m11799a.f52066f;
                            c14137o = m11799a.m11517a(zzasVar.zzd);
                        }
                        c14042ha.f51940f.m11654f().m11803a(c14137o);
                        C14136n c14136n = new C14136n(c14042ha.f51637t, zzasVar.zzc, str, zzasVar.zza, zzasVar.zzd, c, bundle);
                        C13401bv m13158c = C13402bw.m13158c();
                        m13158c.m13181a(c14136n.f52058d);
                        m13158c.m13177a(c14136n.f52056b);
                        m13158c.m13174b(c14136n.f52059e);
                        C14138p c14138p = new C14138p(c14136n.f52060f);
                        while (c14138p.hasNext()) {
                            String next = c14138p.next();
                            C13405bz m13124e = C13407ca.m13124e();
                            m13124e.m13144a(next);
                            Object zza = c14136n.f52060f.zza(next);
                            if (zza != null) {
                                c14042ha.f51940f.m11653g().m11636a(m13124e, zza);
                                m13158c.m13180a(m13124e);
                            }
                        }
                        m13029c.m13111a(m13158c);
                        C13412cf m12986a = C13416cj.m12986a();
                        C13403bx m13153a = C13404by.m13153a();
                        m13153a.m13155a(c14137o.f52063c);
                        m13153a.m13154a(zzasVar.zza);
                        m12986a.m12987a(m13153a);
                        m13029c.m13110a(m12986a);
                        C14132kj c14132kj = c14042ha.f51940f.f51966c;
                        C14110jo.m11680a(c14132kj);
                        m13029c.m13095c(c14132kj.m11528a(m11791b.m11950b(), Collections.emptyList(), m13029c.m13088e(), Long.valueOf(m13158c.m13170f()), Long.valueOf(m13158c.m13170f())));
                        if (m13158c.m13171e()) {
                            m13029c.m13102b(m13158c.m13170f());
                            m13029c.m13096c(m13158c.m13170f());
                        }
                        long m11925j = m11791b.m11925j();
                        int i2 = (m11925j > 0L ? 1 : (m11925j == 0L ? 0 : -1));
                        if (i2 != 0) {
                            m13029c.m13086e(m11925j);
                        }
                        long m11928i = m11791b.m11928i();
                        if (m11928i != 0) {
                            m13029c.m13091d(m11928i);
                        } else if (i2 != 0) {
                            m13029c.m13091d(m11925j);
                        }
                        m11791b.m11913u();
                        m13029c.m13083f((int) m11791b.m11916r());
                        m13029c.m13061m();
                        m13029c.m13112a(c14042ha.f51637t.f51532j.mo19039a());
                        m13029c.m13099b(true);
                        m13119a.m13120a(m13029c);
                        m11791b.m11954a(m13029c.m13080g());
                        m11791b.m11949b(m13029c.m13076h());
                        c14042ha.f51940f.m11654f().m11806a(m11791b);
                        c14042ha.f51940f.m11654f().m11814U_();
                        try {
                            bArr = c14042ha.f51940f.m11653g().m11614b(m13119a.m12779A().m12886j());
                        } catch (IOException e2) {
                            c14042ha.f51637t.mo11661c().f51395c.m12090a("Data loss. Failed to bundle and serialize. appId", C13947do.m12087a(str), e2);
                            bArr = null;
                        }
                    } catch (SecurityException e3) {
                        c14042ha.f51637t.mo11661c().f51402j.m12091a("app instance id encryption failed", e3.getMessage());
                        bArr = new byte[0];
                        c14110jo3 = c14042ha.f51940f;
                    }
                }
                c14110jo3.m11654f().m11813V_();
            } finally {
                c14042ha.f51940f.m11654f().m11813V_();
            }
        } else {
            c14042ha.f51637t.mo11661c().f51402j.m12090a("Generating a payload for this event is not available. package_name, event_name", str, zzasVar.zza);
        }
        return bArr;
    }
}
