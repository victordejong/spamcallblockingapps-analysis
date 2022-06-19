package com.google.android.gms.ads.internal.util;

import android.content.Context;
import androidx.browser.trusted.sharing.ShareTarget;
import com.google.android.gms.internal.ads.zzaf;
import com.google.android.gms.internal.ads.zzaze;
import com.google.android.gms.internal.ads.zzbaa;
import com.google.android.gms.internal.ads.zzdzw;
import com.google.android.gms.internal.ads.zzl;
import com.google.android.gms.internal.ads.zzz;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzay.class */
public final class zzay {
    private static zzaf zzegb;
    private static final Object zzegc = new Object();
    @Deprecated
    private static final zzbc<Void> zzegd = new zzax();

    public zzay(Context context) {
        zzbj(context.getApplicationContext() != null ? context.getApplicationContext() : context);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035 A[Catch: all -> 0x004e, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0006, B:6:0x000c, B:8:0x0016, B:15:0x0035, B:16:0x003d, B:18:0x0043, B:19:0x0046, B:19:0x0046, B:21:0x004b), top: B:29:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003d A[Catch: all -> 0x004e, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0006, B:6:0x000c, B:8:0x0016, B:15:0x0035, B:16:0x003d, B:18:0x0043, B:19:0x0046, B:19:0x0046, B:21:0x004b), top: B:29:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzaf zzbj(android.content.Context r3) {
        /*
            java.lang.Object r0 = com.google.android.gms.ads.internal.util.zzay.zzegc
            r4 = r0
            r0 = r4
            monitor-enter(r0)
            com.google.android.gms.internal.ads.zzaf r0 = com.google.android.gms.ads.internal.util.zzay.zzegb     // Catch: java.lang.Throwable -> L4e
            if (r0 != 0) goto L46
            r0 = r3
            com.google.android.gms.internal.ads.zzabp.initialize(r0)     // Catch: java.lang.Throwable -> L4e
            boolean r0 = com.google.android.gms.common.util.ClientLibraryUtils.isPackageSide()     // Catch: java.lang.Throwable -> L4e
            if (r0 != 0) goto L2f
            com.google.android.gms.internal.ads.zzaba<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzabp.zzcum     // Catch: java.lang.Throwable -> L4e
            r5 = r0
            com.google.android.gms.internal.ads.zzabl r0 = com.google.android.gms.internal.ads.zzwr.zzqr()     // Catch: java.lang.Throwable -> L4e
            r1 = r5
            java.lang.Object r0 = r0.zzd(r1)     // Catch: java.lang.Throwable -> L4e
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L4e
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L4e
            if (r0 == 0) goto L2f
            r0 = 1
            r6 = r0
            goto L31
        L2f:
            r0 = 0
            r6 = r0
        L31:
            r0 = r6
            if (r0 == 0) goto L3d
            r0 = r3
            com.google.android.gms.internal.ads.zzaf r0 = com.google.android.gms.ads.internal.util.zzan.zzbi(r0)     // Catch: java.lang.Throwable -> L4e
            r3 = r0
            goto L42
        L3d:
            r0 = r3
            com.google.android.gms.internal.ads.zzaf r0 = com.google.android.gms.internal.ads.zzbj.zza(r0)     // Catch: java.lang.Throwable -> L4e
            r3 = r0
        L42:
            r0 = r3
            com.google.android.gms.ads.internal.util.zzay.zzegb = r0     // Catch: java.lang.Throwable -> L4e
        L46:
            com.google.android.gms.internal.ads.zzaf r0 = com.google.android.gms.ads.internal.util.zzay.zzegb     // Catch: java.lang.Throwable -> L4e java.lang.Throwable -> L4e
            r3 = r0
            r0 = r4
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L4e
            r0 = r3
            return r0
        L4e:
            r3 = move-exception
            r0 = r4
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L4e
            r0 = r3
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzay.zzbj(android.content.Context):com.google.android.gms.internal.ads.zzaf");
    }

    public static zzdzw<zzz> zzeo(String str) {
        zzbaa zzbaaVar = new zzbaa();
        zzegb.zzd(new zzbe(str, zzbaaVar));
        return zzbaaVar;
    }

    public final zzdzw<String> zza(int i, String str, Map<String, String> map, byte[] bArr) {
        zzbb zzbbVar = new zzbb(null);
        zzba zzbaVar = new zzba(this, str, zzbbVar);
        zzaze zzazeVar = new zzaze(null);
        zzaz zzazVar = new zzaz(this, i, str, zzbbVar, zzbaVar, bArr, map, zzazeVar);
        if (zzaze.isEnabled()) {
            try {
                zzazeVar.zza(str, ShareTarget.METHOD_GET, zzazVar.getHeaders(), zzazVar.zzg());
            } catch (zzl e) {
                zzd.zzex(e.getMessage());
            }
        }
        zzegb.zzd(zzazVar);
        return zzbbVar;
    }

    public final zzdzw<String> zzb(String str, Map<String, String> map) {
        return zza(0, str, map, null);
    }
}
