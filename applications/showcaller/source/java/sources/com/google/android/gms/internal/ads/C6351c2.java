package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager;
import android.os.Build;
import java.security.cert.Certificate;
import java.util.List;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.internal.ads.c2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/c2.class */
public final class C6351c2 {
    /* renamed from: a */
    public static String m16132a(Context context, String str, List<Certificate> list, Executor executor) {
        if (Build.VERSION.SDK_INT > 30 || Build.VERSION.CODENAME.equals("S")) {
            z03 m8633E = z03.m8633E();
            context.getPackageManager().requestChecksums(str, false, 8, list, new PackageManager.OnChecksumsReadyListener(m8633E) { // from class: com.google.android.gms.internal.ads.b2

                /* renamed from: a */
                private final z03 f20250a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f20250a = m8633E;
                }

                @Override // android.content.pm.PackageManager.OnChecksumsReadyListener
                public final void onChecksumsReady(List list2) {
                    z03 z03Var = this.f20250a;
                    if (list2 == null) {
                        z03Var.mo8632u(null);
                        return;
                    }
                    try {
                        int size = list2.size();
                        for (int i = 0; i < size; i++) {
                            ApkChecksum apkChecksum = (ApkChecksum) list2.get(i);
                            if (apkChecksum.getType() == 8) {
                                z03Var.mo8632u(C6980t0.m10869b(apkChecksum.getValue()));
                                return;
                            }
                        }
                        z03Var.mo8632u(null);
                    } catch (Throwable th) {
                        z03Var.mo8632u(null);
                    }
                }
            });
            return (String) m8633E.get();
        }
        return null;
    }
}
