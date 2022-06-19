package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzj.class */
public class zzj implements zzi {
    private final String key;
    private final String zzae;

    public zzj() {
        this(null);
    }

    public zzj(String str) {
        this(str, null);
    }

    private zzj(String str, String str2) {
        this.key = str;
        this.zzae = null;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzi
    public final void zza(zzf<?> zzfVar) {
        String str = this.key;
        if (str != null) {
            zzfVar.put("key", str);
        }
    }
}
