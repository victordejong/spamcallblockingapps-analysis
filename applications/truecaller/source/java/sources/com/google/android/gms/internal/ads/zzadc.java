package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager;
import android.os.Build;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzadc.class */
public final class zzadc {
    public static String zza(Context context, String str, List<Certificate> list, Executor executor) throws CertificateEncodingException, PackageManager.NameNotFoundException, InterruptedException, ExecutionException {
        if (Build.VERSION.SDK_INT > 30 || Build.VERSION.CODENAME.equals("S")) {
            zzfsu zza = zzfsu.zza();
            context.getPackageManager().requestChecksums(str, false, 8, list, new PackageManager.OnChecksumsReadyListener(zza) { // from class: com.google.android.gms.internal.ads.zzadb
                private final zzfsu zza;

                {
                    this.zza = zza;
                }

                @Override // android.content.pm.PackageManager.OnChecksumsReadyListener
                public final void onChecksumsReady(List list2) {
                    zzfsu zzfsuVar = this.zza;
                    if (list2 == null) {
                        zzfsuVar.zzp(null);
                        return;
                    }
                    try {
                        int size = list2.size();
                        for (int i = 0; i < size; i++) {
                            ApkChecksum apkChecksum = (ApkChecksum) list2.get(i);
                            if (apkChecksum.getType() == 8) {
                                zzfsuVar.zzp(zzabu.zzb(apkChecksum.getValue()));
                                return;
                            }
                        }
                        zzfsuVar.zzp(null);
                    } catch (Throwable th) {
                        zzfsuVar.zzp(null);
                    }
                }
            });
            return (String) zza.get();
        }
        return null;
    }
}
