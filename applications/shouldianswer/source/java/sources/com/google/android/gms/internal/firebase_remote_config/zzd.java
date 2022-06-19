package com.google.android.gms.internal.firebase_remote_config;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzd.class */
public class zzd {
    private static final Logger logger = Logger.getLogger(zzd.class.getName());
    private final zzaa zze;
    private final zzi zzf;
    private final String zzg;
    private final String zzh;
    private final String zzi;
    private final String zzj;
    private final zzci zzk;
    private final boolean zzl;
    private final boolean zzm;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzd$zza.class */
    public static class zza {
        zzi zzf;
        String zzg;
        String zzh;
        String zzi;
        final zzci zzk;
        final zzag zzx;
        zzad zzy;

        public zza(zzag zzagVar, String str, String str2, zzci zzciVar, zzad zzadVar) {
            this.zzx = (zzag) zzdt.checkNotNull(zzagVar);
            this.zzk = zzciVar;
            zzc(str);
            zzd(str2);
            this.zzy = zzadVar;
        }

        public zza zza(zzi zziVar) {
            this.zzf = zziVar;
            return this;
        }

        public zza zzc(String str) {
            this.zzg = zzd.zza(str);
            return this;
        }

        public zza zzd(String str) {
            this.zzh = zzd.zzb(str);
            return this;
        }

        public zza zze(String str) {
            this.zzi = str;
            return this;
        }
    }

    public zzd(zza zzaVar) {
        this.zzf = zzaVar.zzf;
        this.zzg = zza(zzaVar.zzg);
        this.zzh = zzb(zzaVar.zzh);
        this.zzi = zzaVar.zzi;
        if (zzdy.zzbc(null)) {
            logger.logp(Level.WARNING, "com.google.api.client.googleapis.services.AbstractGoogleClient", "<init>", "Application name is not set. Call Builder#setApplicationName.");
        }
        this.zzj = null;
        this.zze = zzaVar.zzy == null ? zzaVar.zzx.zza(null) : zzaVar.zzx.zza(zzaVar.zzy);
        this.zzk = zzaVar.zzk;
        this.zzl = false;
        this.zzm = false;
    }

    static String zza(String str) {
        if (str != null) {
            String str2 = str;
            if (!str.endsWith("/")) {
                str2 = String.valueOf(str).concat("/");
            }
            return str2;
        }
        throw new NullPointerException("root URL cannot be null.");
    }

    static String zzb(String str) {
        String str2;
        if (str != null) {
            if (str.length() != 1) {
                str2 = str;
                if (str.length() > 0) {
                    String str3 = str;
                    if (!str.endsWith("/")) {
                        str3 = String.valueOf(str).concat("/");
                    }
                    str2 = str3;
                    if (str3.startsWith("/")) {
                        str2 = str3.substring(1);
                    }
                }
            } else if (!"/".equals(str)) {
                throw new IllegalArgumentException("service path must equal \"/\" if it is of length 1.");
            } else {
                str2 = "";
            }
            return str2;
        }
        throw new NullPointerException("service path cannot be null");
    }

    public void zza(zzf<?> zzfVar) {
        zzi zziVar = this.zzf;
        if (zziVar != null) {
            zziVar.zza(zzfVar);
        }
    }

    public final String zzc() {
        String valueOf = String.valueOf(this.zzg);
        String valueOf2 = String.valueOf(this.zzh);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    public final zzaa zzd() {
        return this.zze;
    }

    public zzci zze() {
        return this.zzk;
    }
}
