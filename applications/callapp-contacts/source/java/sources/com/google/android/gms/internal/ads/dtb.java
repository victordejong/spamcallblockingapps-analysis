package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtb.class */
public final class dtb implements cww {

    /* renamed from: a */
    final dtn f47532a;

    /* renamed from: b */
    private final cvc f47533b;

    /* renamed from: c */
    private final cvo f47534c;

    /* renamed from: d */
    private final zzfa f47535d;

    public dtb(cvc cvcVar, cvo cvoVar, dtn dtnVar, zzfa zzfaVar) {
        this.f47533b = cvcVar;
        this.f47534c = cvoVar;
        this.f47532a = dtnVar;
        this.f47535d = zzfaVar;
    }

    /* renamed from: d */
    private final Map<String, Object> m15744d() {
        HashMap hashMap = new HashMap();
        cvo cvoVar = this.f47534c;
        beb.C12217a m17161a = cvo.m17161a(cvoVar.f46645f, cvoVar.f46643d.mo17153a());
        hashMap.put("v", this.f47533b.mo17182a());
        hashMap.put("gms", Boolean.valueOf(this.f47533b.mo17180c()));
        hashMap.put("int", m17161a.zzfg);
        hashMap.put("up", Boolean.valueOf(this.f47535d.f50226a));
        hashMap.put("t", new Throwable());
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.cww
    /* renamed from: a */
    public final Map<String, Object> mo15747a() {
        Map<String, Object> m15744d = m15744d();
        cvo cvoVar = this.f47534c;
        beb.C12217a m17161a = cvo.m17161a(cvoVar.f46644e, cvoVar.f46642c.mo17153a());
        m15744d.put("gai", Boolean.valueOf(this.f47533b.mo17181b()));
        m15744d.put("did", m17161a.zzif);
        beb.C12217a.EnumC12220c zzl = beb.C12217a.EnumC12220c.zzl(m17161a.zzig);
        beb.C12217a.EnumC12220c enumC12220c = zzl;
        if (zzl == null) {
            enumC12220c = beb.C12217a.EnumC12220c.DEVICE_IDENTIFIER_GLOBAL_ID;
        }
        m15744d.put("dst", Integer.valueOf(enumC12220c.zzv()));
        m15744d.put("doo", Boolean.valueOf(m17161a.zzih));
        return m15744d;
    }

    @Override // com.google.android.gms.internal.ads.cww
    /* renamed from: b */
    public final Map<String, Object> mo15746b() {
        return m15744d();
    }

    @Override // com.google.android.gms.internal.ads.cww
    /* renamed from: c */
    public final Map<String, Object> mo15745c() {
        Map<String, Object> m15744d = m15744d();
        m15744d.put("lts", Long.valueOf(this.f47532a.m15717a()));
        return m15744d;
    }
}
