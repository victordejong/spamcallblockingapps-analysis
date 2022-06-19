package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.net.URL;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfe.class */
public final class zzfe implements Runnable {
    private final URL zza;
    private final byte[] zzb;
    private final zzfc zzc;
    private final String zzd;
    private final Map<String, String> zze;
    private final /* synthetic */ zzfa zzf;

    public zzfe(zzfa zzfaVar, String str, URL url, byte[] bArr, Map<String, String> map, zzfc zzfcVar) {
        this.zzf = zzfaVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(url);
        Preconditions.checkNotNull(zzfcVar);
        this.zza = url;
        this.zzb = bArr;
        this.zzc = zzfcVar;
        this.zzd = str;
        this.zze = map;
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01e9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0184 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 565
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfe.run():void");
    }
}
