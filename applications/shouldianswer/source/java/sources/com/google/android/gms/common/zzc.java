package com.google.android.gms.common;

import android.content.Context;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzm;
import com.google.android.gms.common.internal.zzn;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.concurrent.Callable;
import javax.annotation.CheckReturnValue;
@CheckReturnValue
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzc.class */
public final class zzc {
    private static volatile zzm zzn;
    private static final Object zzo = new Object();
    private static Context zzp;

    public static zzm zza(String str, zze zzeVar, boolean z, boolean z2) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return zzb(str, zzeVar, z, z2);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    public static final /* synthetic */ String zza(boolean z, String str, zze zzeVar) {
        boolean z2 = true;
        if (z || !zzb(str, zzeVar, true, false).zzad) {
            z2 = false;
        }
        return zzm.zzc(str, zzeVar, z, z2);
    }

    public static void zza(Context context) {
        synchronized (zzc.class) {
            try {
                if (zzp != null) {
                    Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
                } else if (context != null) {
                    zzp = context.getApplicationContext();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static zzm zzb(String str, zze zzeVar, boolean z, boolean z2) {
        try {
            if (zzn == null) {
                Preconditions.checkNotNull(zzp);
                synchronized (zzo) {
                    if (zzn == null) {
                        zzn = zzn.zzc(DynamiteModule.load(zzp, DynamiteModule.PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING, "com.google.android.gms.googlecertificates").instantiate("com.google.android.gms.common.GoogleCertificatesImpl"));
                    }
                }
            }
            Preconditions.checkNotNull(zzp);
            try {
                return zzn.zza(new zzk(str, zzeVar, z, z2), ObjectWrapper.wrap(zzp.getPackageManager())) ? zzm.zze() : zzm.zza(new Callable(z, str, zzeVar) { // from class: com.google.android.gms.common.zzd
                    private final boolean zzq;
                    private final String zzr;
                    private final zze zzs;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzq = z;
                        this.zzr = str;
                        this.zzs = zzeVar;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzc.zza(this.zzq, this.zzr, this.zzs);
                    }
                });
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                return zzm.zza("module call", e);
            }
        } catch (DynamiteModule.LoadingException e2) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
            String valueOf = String.valueOf(e2.getMessage());
            return zzm.zza(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e2);
        }
    }
}
