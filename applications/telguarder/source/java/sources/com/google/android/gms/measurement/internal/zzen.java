package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.net.URL;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzen.class */
public final class zzen implements Runnable {
    final /* synthetic */ zzeo zza;
    private final URL zzb;
    private final byte[] zzc;
    private final zzel zzd;
    private final String zze;
    private final Map<String, String> zzf;

    public zzen(zzeo zzeoVar, String str, URL url, byte[] bArr, Map<String, String> map, zzel zzelVar) {
        this.zza = zzeoVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(url);
        Preconditions.checkNotNull(zzelVar);
        this.zzb = url;
        this.zzc = bArr;
        this.zzd = zzelVar;
        this.zze = str;
        this.zzf = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0241 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01d6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r17v12, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r17v13 */
    /* JADX WARN: Type inference failed for: r17v22, types: [java.util.Iterator] */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.util.Map] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 662
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzen.run():void");
    }
}
