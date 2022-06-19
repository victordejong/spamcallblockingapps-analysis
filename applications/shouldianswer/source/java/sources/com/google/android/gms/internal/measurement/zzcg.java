package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
import androidx.core.p015a.C0425b;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcg.class */
public final class zzcg implements zzcb {
    private static zzcg zza;
    @Nullable
    private final Context zzb;
    @Nullable
    private final ContentObserver zzc;

    private zzcg() {
        this.zzb = null;
        this.zzc = null;
    }

    private zzcg(Context context) {
        this.zzb = context;
        this.zzc = new zzci(this, null);
        context.getContentResolver().registerContentObserver(zzbw.zza, true, this.zzc);
    }

    public static zzcg zza(Context context) {
        zzcg zzcgVar;
        synchronized (zzcg.class) {
            try {
                if (zza == null) {
                    zza = C0425b.m6684a(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new zzcg(context) : new zzcg();
                }
                zzcgVar = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzcgVar;
    }

    public static void zza() {
        synchronized (zzcg.class) {
            try {
                if (zza != null && zza.zzb != null && zza.zzc != null) {
                    zza.zzb.getContentResolver().unregisterContentObserver(zza.zzc);
                }
                zza = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: zzc */
    public final String zza(String str) {
        if (this.zzb == null) {
            return null;
        }
        try {
            return (String) zzce.zza(new zzcd(this, str) { // from class: com.google.android.gms.internal.measurement.zzcf
                private final zzcg zza;
                private final String zzb;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zza = this;
                    this.zzb = str;
                }

                @Override // com.google.android.gms.internal.measurement.zzcd
                public final Object zza() {
                    return this.zza.zzb(this.zzb);
                }
            });
        } catch (IllegalStateException | SecurityException e) {
            String valueOf = String.valueOf(str);
            Log.e("GservicesLoader", valueOf.length() != 0 ? "Unable to read GServices for: ".concat(valueOf) : new String("Unable to read GServices for: "), e);
            return null;
        }
    }

    public final /* synthetic */ String zzb(String str) {
        return zzbw.zza(this.zzb.getContentResolver(), str, (String) null);
    }
}
