package com.google.android.gms.internal.firebase_remote_config;

import com.google.firebase.perf.FirebasePerformance;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzdc.class */
public final class zzdc extends zzdb<zzdf> {
    @zzcc
    private String namespace;
    @zzcc
    private String project;

    public zzdc(zzcz zzczVar, String str, String str2, zzdg zzdgVar) {
        super(zzczVar.zzgt.zzgu, FirebasePerformance.HttpMethod.POST, "v1/projects/{project}/namespaces/{namespace}:fetch", zzdgVar, zzdf.class);
        this.project = (String) zzch.checkNotNull(str, "Required parameter project must be specified.");
        this.namespace = (String) zzch.checkNotNull(str2, "Required parameter namespace must be specified.");
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzdb, com.google.android.gms.internal.firebase_remote_config.zzn, com.google.android.gms.internal.firebase_remote_config.zzf, com.google.android.gms.internal.firebase_remote_config.zzby
    public final /* synthetic */ zzby zzb(String str, Object obj) {
        return (zzdc) super.zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzdb, com.google.android.gms.internal.firebase_remote_config.zzn, com.google.android.gms.internal.firebase_remote_config.zzf
    public final /* synthetic */ zzf zzc(String str, Object obj) {
        return (zzdc) zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzdb, com.google.android.gms.internal.firebase_remote_config.zzn
    public final /* synthetic */ zzn zzd(String str, Object obj) {
        return (zzdc) zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzdb
    public final /* synthetic */ zzdb<zzdf> zzg(String str, Object obj) {
        return (zzdc) zzb(str, obj);
    }
}
