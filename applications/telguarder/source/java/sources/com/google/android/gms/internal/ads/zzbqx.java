package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqx.class */
public class zzbqx {
    private final Context context;
    private final zzdnp zzfwy;
    private Bundle zzfyw;
    private final String zzfyx;
    private final zzdnk zzfyy;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqx$zza.class */
    public static final class zza {
        private Context context;
        private zzdnp zzfwy;
        private Bundle zzfyw;
        private String zzfyx;
        private zzdnk zzfyy;

        public final zza zza(zzdnk zzdnkVar) {
            this.zzfyy = zzdnkVar;
            return this;
        }

        public final zza zza(zzdnp zzdnpVar) {
            this.zzfwy = zzdnpVar;
            return this;
        }

        public final zzbqx zzalo() {
            return new zzbqx(this);
        }

        public final zza zzcf(Context context) {
            this.context = context;
            return this;
        }

        public final zza zze(Bundle bundle) {
            this.zzfyw = bundle;
            return this;
        }

        public final zza zzfs(String str) {
            this.zzfyx = str;
            return this;
        }
    }

    private zzbqx(zza zzaVar) {
        this.context = zzaVar.context;
        this.zzfwy = zzaVar.zzfwy;
        this.zzfyw = zzaVar.zzfyw;
        this.zzfyx = zzaVar.zzfyx;
        this.zzfyy = zzaVar.zzfyy;
    }

    public final zza zzalk() {
        return new zza().zzcf(this.context).zza(this.zzfwy).zzfs(this.zzfyx).zze(this.zzfyw);
    }

    public final zzdnp zzall() {
        return this.zzfwy;
    }

    public final zzdnk zzalm() {
        return this.zzfyy;
    }

    public final Bundle zzaln() {
        return this.zzfyw;
    }

    public final Context zzce(Context context) {
        return this.zzfyx != null ? context : this.context;
    }
}
