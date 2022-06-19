package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dii.class */
final class dii implements cnt {

    /* renamed from: a */
    private final clu f14397a;

    /* renamed from: b */
    private final cmh f14398b;

    /* renamed from: c */
    private final diu f14399c;

    /* renamed from: d */
    private final dil f14400d;

    public dii(clu cluVar, cmh cmhVar, diu diuVar, dil dilVar) {
        this.f14397a = cluVar;
        this.f14398b = cmhVar;
        this.f14399c = diuVar;
        this.f14400d = dilVar;
    }

    /* renamed from: d */
    private final Map<String, Object> m9424d() {
        HashMap hashMap = new HashMap();
        hashMap.put("v", this.f14397a.mo11076a());
        hashMap.put("gms", Boolean.valueOf(this.f14397a.mo11074c()));
        hashMap.put("int", this.f14398b.m11041a());
        hashMap.put("up", Boolean.valueOf(this.f14400d.m9423a()));
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.cnt
    /* renamed from: a */
    public final Map<String, Object> mo9428a() {
        Map<String, Object> m9424d = m9424d();
        m9424d.put("gai", Boolean.valueOf(this.f14397a.mo11075b()));
        m9424d.put("did", this.f14398b.m11038b());
        m9424d.put("dst", Integer.valueOf(this.f14398b.m11036c()));
        m9424d.put("doo", Boolean.valueOf(this.f14398b.m11034d()));
        return m9424d;
    }

    /* renamed from: a */
    public final void m9427a(View view) {
        this.f14399c.m9382a(view);
    }

    @Override // com.google.android.gms.internal.ads.cnt
    /* renamed from: b */
    public final Map<String, Object> mo9426b() {
        return m9424d();
    }

    @Override // com.google.android.gms.internal.ads.cnt
    /* renamed from: c */
    public final Map<String, Object> mo9425c() {
        Map<String, Object> m9424d = m9424d();
        m9424d.put("lts", Long.valueOf(this.f14399c.m9384a()));
        return m9424d;
    }
}
