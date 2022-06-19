package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
import androidx.core.content.PermissionChecker;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzeu.class */
public final class zzeu implements zzer {
    private static zzeu zza;
    @Nullable
    private final Context zzb;
    @Nullable
    private final ContentObserver zzc;

    private zzeu() {
        this.zzb = null;
        this.zzc = null;
    }

    private zzeu(Context context) {
        this.zzb = context;
        zzet zzetVar = new zzet(this, null);
        this.zzc = zzetVar;
        context.getContentResolver().registerContentObserver(zzei.zza, true, zzetVar);
    }

    public static zzeu zza(Context context) {
        zzeu zzeuVar;
        synchronized (zzeu.class) {
            try {
                if (zza == null) {
                    zza = PermissionChecker.checkSelfPermission(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new zzeu(context) : new zzeu();
                }
                zzeuVar = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzeuVar;
    }

    public static void zzc() {
        Context context;
        synchronized (zzeu.class) {
            try {
                zzeu zzeuVar = zza;
                if (zzeuVar != null && (context = zzeuVar.zzb) != null && zzeuVar.zzc != null) {
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
            return (String) zzep.zza(new zzeq(this, str) { // from class: com.google.android.gms.internal.measurement.zzes
                private final zzeu zza;
                private final String zzb;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zza = this;
                    this.zzb = str;
                }

                @Override // com.google.android.gms.internal.measurement.zzeq
                public final Object zza() {
                    return this.zza.zzd(this.zzb);
                }
            });
        } catch (IllegalStateException | SecurityException e) {
            String valueOf = String.valueOf(str);
            Log.e("GservicesLoader", valueOf.length() != 0 ? "Unable to read GServices for: ".concat(valueOf) : new String("Unable to read GServices for: "), e);
            return null;
        }
    }

    public final /* synthetic */ String zzd(String str) {
        return zzei.zza(this.zzb.getContentResolver(), str, null);
    }
}
