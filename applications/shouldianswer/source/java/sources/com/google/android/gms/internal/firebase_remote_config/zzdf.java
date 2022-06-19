package com.google.android.gms.internal.firebase_remote_config;

import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzdf.class */
public final class zzdf extends zzax {
    @zzcc
    private String appName;
    @zzcc
    private Map<String, String> entries;
    @zzcc
    private List<zzdd> experimentDescriptions;
    @zzcc
    private String state;

    @Override // com.google.android.gms.internal.firebase_remote_config.zzax, com.google.android.gms.internal.firebase_remote_config.zzby, java.util.AbstractMap
    public final /* synthetic */ Object clone() {
        return (zzdf) super.clone();
    }

    public final Map<String, String> getEntries() {
        return this.entries;
    }

    public final String getState() {
        return this.state;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzax
    public final /* synthetic */ zzax zza() {
        return (zzdf) clone();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzax
    public final /* synthetic */ zzax zza(String str, Object obj) {
        return (zzdf) zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzax, com.google.android.gms.internal.firebase_remote_config.zzby
    public final /* synthetic */ zzby zzb() {
        return (zzdf) clone();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzax, com.google.android.gms.internal.firebase_remote_config.zzby
    public final /* synthetic */ zzby zzb(String str, Object obj) {
        return (zzdf) super.zzb(str, obj);
    }

    public final List<zzdd> zzcf() {
        return this.experimentDescriptions;
    }
}
