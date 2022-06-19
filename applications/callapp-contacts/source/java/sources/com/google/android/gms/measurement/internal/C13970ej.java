package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import androidx.p023b.C0428a;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.measurement.C13386bg;
import com.google.android.gms.internal.measurement.C13388bi;
import com.google.android.gms.internal.measurement.C13389bj;
import com.google.android.gms.internal.measurement.C13391bl;
import com.google.android.gms.internal.measurement.C13668ls;
import com.google.android.gms.internal.measurement.zzib;
import java.util.ArrayList;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.ej */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ej.class */
public final class C13970ej extends AbstractC14100je implements AbstractC13932d {

    /* renamed from: c */
    private final Map<String, Map<String, String>> f51486c = new C0428a();

    /* renamed from: d */
    private final Map<String, Map<String, Boolean>> f51487d = new C0428a();

    /* renamed from: e */
    private final Map<String, Map<String, Boolean>> f51488e = new C0428a();

    /* renamed from: a */
    final Map<String, C13389bj> f51484a = new C0428a();

    /* renamed from: b */
    final Map<String, String> f51485b = new C0428a();

    /* renamed from: g */
    private final Map<String, Map<String, Integer>> f51489g = new C0428a();

    public C13970ej(C14110jo c14110jo) {
        super(c14110jo);
    }

    /* renamed from: a */
    private final C13389bj m12028a(String str, byte[] bArr) {
        if (bArr != null) {
            try {
                C13389bj m12779A = ((C13388bi) C14112jq.m11632a(C13389bj.m13208b(), bArr)).m12779A();
                C13945dm c13945dm = this.f51637t.mo11661c().f51403k;
                String str2 = null;
                Long valueOf = m12779A.m13211a() ? Long.valueOf(m12779A.zze) : null;
                if ((m12779A.zza & 2) != 0) {
                    str2 = m12779A.zzf;
                }
                c13945dm.m12090a("Parsed config. version, gmp_app_id", valueOf, str2);
                return m12779A;
            } catch (zzib e) {
                this.f51637t.mo11661c().f51398f.m12090a("Unable to merge remote config. appId", C13947do.m12087a(str), e);
                return C13389bj.m13207c();
            } catch (RuntimeException e2) {
                this.f51637t.mo11661c().f51398f.m12090a("Unable to merge remote config. appId", C13947do.m12087a(str), e2);
                return C13389bj.m13207c();
            }
        }
        return C13389bj.m13207c();
    }

    /* renamed from: a */
    private static final Map<String, String> m12032a(C13389bj c13389bj) {
        C0428a c0428a = new C0428a();
        if (c13389bj != null) {
            for (C13391bl c13391bl : c13389bj.zzh) {
                c0428a.put(c13391bl.zze, c13391bl.zzf);
            }
        }
        return c0428a;
    }

    /* renamed from: a */
    private final void m12030a(String str, C13388bi c13388bi) {
        C0428a c0428a = new C0428a();
        C0428a c0428a2 = new C0428a();
        C0428a c0428a3 = new C0428a();
        if (c13388bi != null) {
            for (int i = 0; i < c13388bi.m13216a(); i++) {
                C13386bg m12758m = c13388bi.m13215a(i).m12758m();
                if (TextUtils.isEmpty(m12758m.m13224a())) {
                    this.f51637t.mo11661c().f51398f.m12092a("EventConfig contained null event name");
                } else {
                    String m13224a = m12758m.m13224a();
                    String m11875b = C14004fq.m11875b(m12758m.m13224a());
                    if (!TextUtils.isEmpty(m11875b)) {
                        m12758m.m13223a(m11875b);
                        c13388bi.m13214a(i, m12758m);
                    }
                    c0428a.put(m13224a, Boolean.valueOf(m12758m.m13222b()));
                    c0428a2.put(m12758m.m13224a(), Boolean.valueOf(m12758m.m13221c()));
                    if (m12758m.m13220d()) {
                        if (m12758m.m13219e() < 2 || m12758m.m13219e() > 65535) {
                            this.f51637t.mo11661c().f51398f.m12090a("Invalid sampling rate. Event name, sample rate", m12758m.m13224a(), Integer.valueOf(m12758m.m13219e()));
                        } else {
                            c0428a3.put(m12758m.m13224a(), Integer.valueOf(m12758m.m13219e()));
                        }
                    }
                }
            }
        }
        this.f51487d.put(str, c0428a);
        this.f51488e.put(str, c0428a2);
        this.f51489g.put(str, c0428a3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0066, code lost:
        if (r13 != null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b1, code lost:
        if (r13 != null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0108, code lost:
        if (r13 == null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x010b, code lost:
        r13.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0112, code lost:
        r12 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01e4  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m12019f(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C13970ej.m12019f(java.lang.String):void");
    }

    /* renamed from: a */
    public final C13389bj m12031a(String str) {
        m11696v();
        mo11884S_();
        C12045o.m19160a(str);
        m12019f(str);
        return this.f51484a.get(str);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13932d
    /* renamed from: a */
    public final String mo12029a(String str, String str2) {
        mo11884S_();
        m12019f(str);
        Map<String, String> map = this.f51486c.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14100je
    /* renamed from: a */
    protected final boolean mo11531a() {
        return false;
    }

    /* renamed from: a */
    public final boolean m12027a(String str, byte[] bArr, String str2) {
        m11696v();
        mo11884S_();
        C12045o.m19160a(str);
        C13388bi m12758m = m12028a(str, bArr).m12758m();
        if (m12758m == null) {
            return false;
        }
        m12030a(str, m12758m);
        this.f51484a.put(str, m12758m.m12779A());
        this.f51485b.put(str, str2);
        this.f51486c.put(str, m12032a(m12758m.m12779A()));
        this.f51940f.m11654f().m11797a(str, new ArrayList(m12758m.m13213b()));
        try {
            m12758m.m13212c();
            bArr = m12758m.m12779A().m12886j();
        } catch (RuntimeException e) {
            this.f51637t.mo11661c().f51398f.m12090a("Unable to serialize reduced-size config. Storing full config instead. appId", C13947do.m12087a(str), e);
        }
        C13668ls.m12338b();
        if (this.f51637t.f51529g.m12061d(null, C13935dc.f51309aE)) {
            this.f51940f.m11654f().m11796a(str, bArr, str2);
        } else {
            this.f51940f.m11654f().m11796a(str, bArr, (String) null);
        }
        this.f51484a.put(str, m12758m.m12779A());
        return true;
    }

    /* renamed from: b */
    public final String m12026b(String str) {
        mo11884S_();
        return this.f51485b.get(str);
    }

    /* renamed from: b */
    public final boolean m12025b(String str, String str2) {
        Boolean bool;
        mo11884S_();
        m12019f(str);
        if (!m12022d(str) || !C14116ju.m11561e(str2)) {
            if (m12020e(str) && C14116ju.m11589a(str2)) {
                return true;
            }
            Map<String, Boolean> map = this.f51487d.get(str);
            if (map != null && (bool = map.get(str2)) != null) {
                return bool.booleanValue();
            }
            return false;
        }
        return true;
    }

    /* renamed from: c */
    public final boolean m12024c(String str) {
        mo11884S_();
        C13389bj m12031a = m12031a(str);
        if (m12031a == null) {
            return false;
        }
        return m12031a.zzl;
    }

    /* renamed from: c */
    public final boolean m12023c(String str, String str2) {
        Boolean bool;
        mo11884S_();
        m12019f(str);
        if (!"ecommerce_purchase".equals(str2) && !"purchase".equals(str2) && !"refund".equals(str2)) {
            Map<String, Boolean> map = this.f51488e.get(str);
            if (map != null && (bool = map.get(str2)) != null) {
                return bool.booleanValue();
            }
            return false;
        }
        return true;
    }

    /* renamed from: d */
    public final int m12021d(String str, String str2) {
        Integer num;
        mo11884S_();
        m12019f(str);
        Map<String, Integer> map = this.f51489g.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    /* renamed from: d */
    public final boolean m12022d(String str) {
        return "1".equals(mo12029a(str, "measurement.upload.blacklist_internal"));
    }

    /* renamed from: e */
    public final boolean m12020e(String str) {
        return "1".equals(mo12029a(str, "measurement.upload.blacklist_public"));
    }
}
