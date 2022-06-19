package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpb.class */
public final class zzdpb implements zzbrt<Object> {
    private final WeakReference<zzdpc> zza;

    public /* synthetic */ zzdpb(zzdpc zzdpcVar, zzdpa zzdpaVar) {
        this.zza = new WeakReference<>(zzdpcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbrt
    public final void zza(Object obj, Map<String, String> map) {
        zzdfj zzdfjVar;
        zzdpc zzdpcVar = this.zza.get();
        if (zzdpcVar == null) {
            return;
        }
        zzdfjVar = zzdpcVar.zzg;
        zzdfjVar.zza();
    }
}
