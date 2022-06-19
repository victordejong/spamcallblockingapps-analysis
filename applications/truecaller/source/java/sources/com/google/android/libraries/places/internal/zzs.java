package com.google.android.libraries.places.internal;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzs.class */
public final class zzs {
    private static final long zza = TimeUnit.MINUTES.toMicros(1);
    private final WifiManager zzb;
    private final zzb zzc;

    public zzs(WifiManager wifiManager, zzb zzbVar) {
        this.zzb = wifiManager;
        this.zzc = zzbVar;
    }

    public static final /* synthetic */ int zza(ScanResult scanResult, ScanResult scanResult2) {
        return scanResult2.level - scanResult.level;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x010a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x004f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.libraries.places.internal.zzgi<com.google.android.libraries.places.internal.zzq> zza() {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.libraries.places.internal.zzs.zza():com.google.android.libraries.places.internal.zzgi");
    }
}
