package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import androidx.b.a;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.measurement.bg;
import com.google.android.gms.internal.measurement.bi;
import com.google.android.gms.internal.measurement.bj;
import com.google.android.gms.internal.measurement.bl;
import com.google.android.gms.internal.measurement.ls;
import com.google.android.gms.internal.measurement.zzib;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ej.class */
public final class ej extends je implements d {

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, Map<String, String>> f29564c = new a();

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, Map<String, Boolean>> f29565d = new a();
    private final Map<String, Map<String, Boolean>> e = new a();

    /* renamed from: a  reason: collision with root package name */
    final Map<String, bj> f29562a = new a();

    /* renamed from: b  reason: collision with root package name */
    final Map<String, String> f29563b = new a();
    private final Map<String, Map<String, Integer>> g = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public ej(jo joVar) {
        super(joVar);
    }

    private final bj a(String str, byte[] bArr) {
        if (bArr == null) {
            return bj.c();
        }
        try {
            bj A = ((bi) jq.a(bj.b(), bArr)).A();
            dm dmVar = this.t.c().k;
            String str2 = null;
            Long valueOf = A.a() ? Long.valueOf(A.zze) : null;
            if ((A.zza & 2) != 0) {
                str2 = A.zzf;
            }
            dmVar.a("Parsed config. version, gmp_app_id", valueOf, str2);
            return A;
        } catch (zzib e) {
            this.t.c().f.a("Unable to merge remote config. appId", Cdo.a(str), e);
            return bj.c();
        } catch (RuntimeException e2) {
            this.t.c().f.a("Unable to merge remote config. appId", Cdo.a(str), e2);
            return bj.c();
        }
    }

    private static final Map<String, String> a(bj bjVar) {
        a aVar = new a();
        if (bjVar != null) {
            for (bl blVar : bjVar.zzh) {
                aVar.put(blVar.zze, blVar.zzf);
            }
        }
        return aVar;
    }

    private final void a(String str, bi biVar) {
        a aVar = new a();
        a aVar2 = new a();
        a aVar3 = new a();
        if (biVar != null) {
            for (int i = 0; i < biVar.a(); i++) {
                bg m = biVar.a(i).m();
                if (TextUtils.isEmpty(m.a())) {
                    this.t.c().f.a("EventConfig contained null event name");
                } else {
                    String a2 = m.a();
                    String b2 = fq.b(m.a());
                    if (!TextUtils.isEmpty(b2)) {
                        m.a(b2);
                        biVar.a(i, m);
                    }
                    aVar.put(a2, Boolean.valueOf(m.b()));
                    aVar2.put(m.a(), Boolean.valueOf(m.c()));
                    if (m.d()) {
                        if (m.e() < 2 || m.e() > 65535) {
                            this.t.c().f.a("Invalid sampling rate. Event name, sample rate", m.a(), Integer.valueOf(m.e()));
                        } else {
                            aVar3.put(m.a(), Integer.valueOf(m.e()));
                        }
                    }
                }
            }
        }
        this.f29565d.put(str, aVar);
        this.e.put(str, aVar2);
        this.g.put(str, aVar3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0066, code lost:
        if (r13 != null) goto L_0x010b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b1, code lost:
        if (r13 != null) goto L_0x010b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0108, code lost:
        if (r13 == null) goto L_0x0112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x010b, code lost:
        r13.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0112, code lost:
        r12 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01e4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void f(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.ej.f(java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final bj a(String str) {
        v();
        S_();
        o.a(str);
        f(str);
        return this.f29562a.get(str);
    }

    @Override // com.google.android.gms.measurement.internal.d
    public final String a(String str, String str2) {
        S_();
        f(str);
        Map<String, String> map = this.f29564c.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.je
    protected final boolean a() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean a(String str, byte[] bArr, String str2) {
        v();
        S_();
        o.a(str);
        bi m = a(str, bArr).m();
        if (m == null) {
            return false;
        }
        a(str, m);
        this.f29562a.put(str, m.A());
        this.f29563b.put(str, str2);
        this.f29564c.put(str, a(m.A()));
        this.f.f().a(str, new ArrayList(m.b()));
        try {
            m.c();
            bArr = m.A().j();
        } catch (RuntimeException e) {
            this.t.c().f.a("Unable to serialize reduced-size config. Storing full config instead. appId", Cdo.a(str), e);
        }
        ls.b();
        if (this.t.g.d(null, dc.aE)) {
            this.f.f().a(str, bArr, str2);
        } else {
            this.f.f().a(str, bArr, (String) null);
        }
        this.f29562a.put(str, m.A());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String b(String str) {
        S_();
        return this.f29563b.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(String str, String str2) {
        Boolean bool;
        S_();
        f(str);
        if (d(str) && ju.e(str2)) {
            return true;
        }
        if (e(str) && ju.a(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.f29565d.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c(String str) {
        S_();
        bj a2 = a(str);
        if (a2 == null) {
            return false;
        }
        return a2.zzl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c(String str, String str2) {
        Boolean bool;
        S_();
        f(str);
        if ("ecommerce_purchase".equals(str2) || "purchase".equals(str2) || "refund".equals(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.e.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int d(String str, String str2) {
        Integer num;
        S_();
        f(str);
        Map<String, Integer> map = this.g.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean d(String str) {
        return "1".equals(a(str, "measurement.upload.blacklist_internal"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean e(String str) {
        return "1".equals(a(str, "measurement.upload.blacklist_public"));
    }
}
