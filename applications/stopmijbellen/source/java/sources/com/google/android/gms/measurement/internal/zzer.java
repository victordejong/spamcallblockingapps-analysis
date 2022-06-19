package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.net.URL;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzer.class */
public final class zzer implements Runnable {
    public final /* synthetic */ zzes zza;
    private final URL zzb;
    private final byte[] zzc;
    private final zzep zzd;
    private final String zze;
    private final Map<String, String> zzf;

    public zzer(zzes zzesVar, String str, URL url, byte[] bArr, Map<String, String> map, zzep zzepVar) {
        this.zza = zzesVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(url);
        Preconditions.checkNotNull(zzepVar);
        this.zzb = url;
        this.zzc = bArr;
        this.zzd = zzepVar;
        this.zze = str;
        this.zzf = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0236 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r17v13 */
    /* JADX WARN: Type inference failed for: r17v22 */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.util.Map] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzer.run():void");
    }
}
