package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.ContentObserver;
import android.support.p001v4.media.session.MediaSessionCompat;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzhh.class */
public final class zzhh implements zzhe {
    private static zzhh zza;
    private final Context zzb;
    private final ContentObserver zzc;

    private zzhh() {
        this.zzb = null;
        this.zzc = null;
    }

    private zzhh(Context context) {
        this.zzb = context;
        zzhg zzhgVar = new zzhg(this, null);
        this.zzc = zzhgVar;
        context.getContentResolver().registerContentObserver(zzgv.zza, true, zzhgVar);
    }

    public static zzhh zza(Context context) {
        zzhh zzhhVar;
        synchronized (zzhh.class) {
            try {
                if (zza == null) {
                    zza = MediaSessionCompat.m43190w(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new zzhh(context) : new zzhh();
                }
                zzhhVar = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzhhVar;
    }

    public static void zze() {
        Context context;
        synchronized (zzhh.class) {
            try {
                zzhh zzhhVar = zza;
                if (zzhhVar != null && (context = zzhhVar.zzb) != null && zzhhVar.zzc != null) {
                    context.getContentResolver().unregisterContentObserver(zza.zzc);
                }
                zza = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: zzc */
    public final String zzb(final String str) {
        if (this.zzb == null) {
            return null;
        }
        try {
            return (String) zzhc.zza(new zzhd() { // from class: com.google.android.gms.internal.measurement.zzhf
                @Override // com.google.android.gms.internal.measurement.zzhd
                public final Object zza() {
                    return zzhh.this.zzd(str);
                }
            });
        } catch (IllegalStateException | NullPointerException | SecurityException e) {
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                "Unable to read GServices for: ".concat(valueOf);
                return null;
            }
            new String("Unable to read GServices for: ");
            return null;
        }
    }

    public final /* synthetic */ String zzd(String str) {
        return zzgv.zza(this.zzb.getContentResolver(), str, null);
    }
}
