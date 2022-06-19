package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nw2.class */
final class nw2 extends cw2 {

    /* renamed from: d */
    private final Object f27349d;

    /* renamed from: e */
    private int f27350e;

    /* renamed from: f */
    final /* synthetic */ zzfns f27351f;

    public nw2(zzfns zzfnsVar, int i) {
        this.f27351f = zzfnsVar;
        this.f27349d = zzfns.zzs(zzfnsVar, i);
        this.f27350e = i;
    }

    /* renamed from: a */
    private final void m12804a() {
        int m7864g;
        int i = this.f27350e;
        if (i == -1 || i >= this.f27351f.size() || !tu2.m10497a(this.f27349d, zzfns.zzs(this.f27351f, this.f27350e))) {
            m7864g = this.f27351f.m7864g(this.f27349d);
            this.f27350e = m7864g;
        }
    }

    @Override // com.google.android.gms.internal.ads.cw2, java.util.Map.Entry
    public final Object getKey() {
        return this.f27349d;
    }

    @Override // com.google.android.gms.internal.ads.cw2, java.util.Map.Entry
    public final Object getValue() {
        Map zzg = this.f27351f.zzg();
        if (zzg != null) {
            return zzg.get(this.f27349d);
        }
        m12804a();
        int i = this.f27350e;
        if (i != -1) {
            return zzfns.zzt(this.f27351f, i);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.cw2, java.util.Map.Entry
    public final Object setValue(Object obj) {
        Map zzg = this.f27351f.zzg();
        if (zzg != null) {
            return zzg.put(this.f27349d, obj);
        }
        m12804a();
        int i = this.f27350e;
        if (i == -1) {
            this.f27351f.put(this.f27349d, obj);
            return null;
        }
        Object zzt = zzfns.zzt(this.f27351f, i);
        zzfns.zzu(this.f27351f, this.f27350e, obj);
        return zzt;
    }
}
