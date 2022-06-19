package com.google.android.gms.internal.firebase_remote_config;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzc.class */
public class zzc extends zzax {
    @zzcc
    private int code;
    @zzcc
    private List<zza> errors;
    @zzcc
    private String message;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzc$zza.class */
    public static class zza extends zzax {
        @zzcc
        private String domain;
        @zzcc
        private String location;
        @zzcc
        private String locationType;
        @zzcc
        private String message;
        @zzcc
        private String reason;

        @Override // com.google.android.gms.internal.firebase_remote_config.zzax, com.google.android.gms.internal.firebase_remote_config.zzby, java.util.AbstractMap
        public /* synthetic */ Object clone() {
            return (zza) super.clone();
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzax
        public final /* synthetic */ zzax zza() {
            return (zza) clone();
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzax
        public final /* synthetic */ zzax zza(String str, Object obj) {
            return (zza) zzb(str, obj);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzax, com.google.android.gms.internal.firebase_remote_config.zzby
        public final /* synthetic */ zzby zzb() {
            return (zza) clone();
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzax, com.google.android.gms.internal.firebase_remote_config.zzby
        public final /* synthetic */ zzby zzb(String str, Object obj) {
            return (zza) super.zzb(str, obj);
        }
    }

    static {
        zzbt.zzd(zza.class);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzax, com.google.android.gms.internal.firebase_remote_config.zzby, java.util.AbstractMap
    public /* synthetic */ Object clone() {
        return (zzc) super.clone();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzax
    public final /* synthetic */ zzax zza() {
        return (zzc) clone();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzax
    public final /* synthetic */ zzax zza(String str, Object obj) {
        return (zzc) zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzax, com.google.android.gms.internal.firebase_remote_config.zzby
    public final /* synthetic */ zzby zzb() {
        return (zzc) clone();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzax, com.google.android.gms.internal.firebase_remote_config.zzby
    public final /* synthetic */ zzby zzb(String str, Object obj) {
        return (zzc) super.zzb(str, obj);
    }
}
