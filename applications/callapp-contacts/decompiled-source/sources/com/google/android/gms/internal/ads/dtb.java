package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtb.class */
final class dtb implements cww {

    /* renamed from: a  reason: collision with root package name */
    final dtn f27176a;

    /* renamed from: b  reason: collision with root package name */
    private final cvc f27177b;

    /* renamed from: c  reason: collision with root package name */
    private final cvo f27178c;

    /* renamed from: d  reason: collision with root package name */
    private final zzfa f27179d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dtb(cvc cvcVar, cvo cvoVar, dtn dtnVar, zzfa zzfaVar) {
        this.f27177b = cvcVar;
        this.f27178c = cvoVar;
        this.f27176a = dtnVar;
        this.f27179d = zzfaVar;
    }

    private final Map<String, Object> d() {
        HashMap hashMap = new HashMap();
        cvo cvoVar = this.f27178c;
        beb.a a2 = cvo.a(cvoVar.f, cvoVar.f26479d.a());
        hashMap.put("v", this.f27177b.a());
        hashMap.put("gms", Boolean.valueOf(this.f27177b.c()));
        hashMap.put("int", a2.zzfg);
        hashMap.put("up", Boolean.valueOf(this.f27179d.f28630a));
        hashMap.put("t", new Throwable());
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.cww
    public final Map<String, Object> a() {
        Map<String, Object> d2 = d();
        cvo cvoVar = this.f27178c;
        beb.a a2 = cvo.a(cvoVar.e, cvoVar.f26478c.a());
        d2.put("gai", Boolean.valueOf(this.f27177b.b()));
        d2.put("did", a2.zzif);
        beb.a.c zzl = beb.a.c.zzl(a2.zzig);
        beb.a.c cVar = zzl;
        if (zzl == null) {
            cVar = beb.a.c.DEVICE_IDENTIFIER_GLOBAL_ID;
        }
        d2.put("dst", Integer.valueOf(cVar.zzv()));
        d2.put("doo", Boolean.valueOf(a2.zzih));
        return d2;
    }

    @Override // com.google.android.gms.internal.ads.cww
    public final Map<String, Object> b() {
        return d();
    }

    @Override // com.google.android.gms.internal.ads.cww
    public final Map<String, Object> c() {
        Map<String, Object> d2 = d();
        d2.put("lts", Long.valueOf(this.f27176a.a()));
        return d2;
    }
}
