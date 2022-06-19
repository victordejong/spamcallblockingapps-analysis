package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.ContentObserver;
import javax.annotation.Nullable;
import p124i4.C3102d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhh.class */
public final class zzhh implements zzhe {
    private static zzhh zza;
    @Nullable
    private final Context zzb;
    @Nullable
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
                    zza = C3102d.m2627l(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new zzhh(context) : new zzhh();
                }
                zzhhVar = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzhhVar;
    }

    public static void zzc() {
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

    /* renamed from: zzb */
    public final String zze(String str) {
        if (this.zzb == null) {
            return null;
        }
        try {
            return (String) zzhc.zza(new zzhd(this, str) { // from class: com.google.android.gms.internal.measurement.zzhf
                private final zzhh zza;
                private final String zzb;

                {
                    this.zza = this;
                    this.zzb = str;
                }

                @Override // com.google.android.gms.internal.measurement.zzhd
                public final Object zza() {
                    return this.zza.zzd(this.zzb);
                }
            });
        } catch (IllegalStateException | SecurityException e) {
            String valueOf = String.valueOf(str);
            if (valueOf.length() == 0) {
                return null;
            }
            "Unable to read GServices for: ".concat(valueOf);
            return null;
        }
    }

    public final /* synthetic */ String zzd(String str) {
        return zzgv.zza(this.zzb.getContentResolver(), str, null);
    }
}
