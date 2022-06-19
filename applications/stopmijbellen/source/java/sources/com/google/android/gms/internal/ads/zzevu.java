package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzevu.class */
public final class zzevu implements zzevn<zzevs> {
    private final zzfxb zza;
    private final Context zzb;

    public zzevu(zzfxb zzfxbVar, Context context) {
        this.zza = zzfxbVar;
        this.zzb = context;
    }

    private static ResolveInfo zzc(PackageManager packageManager, String str) {
        return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(20:2|(1:4)(1:5)|6|(1:8)(1:9)|10|(3:12|(2:15|13)|52)|16|(3:48|21|(12:23|24|25|50|26|(6:28|30|(2:33|(3:37|(3:40|(2:54|42)(1:43)|38)|53))|32|44|45)|29|30|(0)|32|44|45))|18|24|25|50|26|(0)|29|30|(0)|32|44|45) */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0120 A[Catch: Exception -> 0x0229, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x0229, blocks: (B:26:0x010c, B:28:0x0120), top: B:50:0x010c }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0181  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.internal.ads.zzevs zza() throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzevu.zza():com.google.android.gms.internal.ads.zzevs");
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzevs> zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzevt
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzevu.this.zza();
            }
        });
    }
}
