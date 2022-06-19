package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzcb;
import com.google.android.gms.internal.ads.zzcf;
import java.util.concurrent.ExecutionException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfp.class */
public final class zzfp extends zzgn {
    private static final zzgq<zzcx> zzaau = new zzgq<>();
    private final Context zzaav;
    private zzcb.zza zzaaw;

    public zzfp(zzfc zzfcVar, String str, String str2, zzcf.zza.zzb zzbVar, int i, int i2, Context context, zzcb.zza zzaVar) {
        super(zzfcVar, str, str2, zzbVar, i, 27);
        this.zzaaw = null;
        this.zzaav = context;
        this.zzaaw = zzaVar;
    }

    private static String zza(zzcb.zza zzaVar) {
        if (zzaVar == null || !zzaVar.zzz() || zzfh.zzar(zzaVar.zzaa().zzaf())) {
            return null;
        }
        return zzaVar.zzaa().zzaf();
    }

    private final String zzcx() {
        try {
            if (this.zzwc.zzcp() != null) {
                this.zzwc.zzcp().get();
            }
            zzcf.zza zzco = this.zzwc.zzco();
            if (zzco != null && zzco.zzai()) {
                return zzco.zzaf();
            }
            return null;
        } catch (InterruptedException | ExecutionException e) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004c A[Catch: all -> 0x01a4, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0010, B:6:0x001c, B:8:0x0026, B:10:0x0032, B:17:0x004c, B:19:0x0059, B:20:0x0060, B:24:0x0073, B:26:0x007a, B:31:0x0090, B:33:0x009b, B:35:0x00a5, B:36:0x00ac, B:38:0x00b1, B:43:0x00c0, B:45:0x00f7, B:47:0x0104, B:47:0x0104, B:48:0x0107, B:53:0x011a, B:55:0x0126, B:56:0x012f, B:58:0x013f, B:60:0x0145, B:61:0x014e), top: B:81:0x0010 }] */
    @Override // com.google.android.gms.internal.ads.zzgn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void zzcw() throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfp.zzcw():void");
    }
}
