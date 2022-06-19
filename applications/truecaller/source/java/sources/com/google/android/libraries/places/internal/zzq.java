package com.google.android.libraries.places.internal;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzq.class */
public final class zzq {
    private final String zza;
    private final int zzb;
    private final zzp zzc;
    private final boolean zzd;
    private final int zze;

    public zzq(WifiInfo wifiInfo, ScanResult scanResult) {
        this(wifiInfo, scanResult.BSSID, scanResult.capabilities, scanResult.level, scanResult.frequency);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzq(android.net.wifi.WifiInfo r8, java.lang.String r9, java.lang.String r10, int r11, int r12) {
        /*
            r7 = this;
            r0 = r10
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L48
            r0 = r10
            java.lang.String r0 = r0.toUpperCase()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "[ESS]"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L41
            r0 = r10
            java.lang.String r1 = "[IBSS]"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L21
            goto L41
        L21:
            r0 = r10
            java.lang.String r1 = ".*WPA[0-9]*-PSK.*"
            boolean r0 = r0.matches(r1)
            if (r0 == 0) goto L31
            com.google.android.libraries.places.internal.zzp r0 = com.google.android.libraries.places.internal.zzp.PSK
            r10 = r0
            goto L4c
        L31:
            r0 = r10
            java.lang.String r1 = ".*WPA[0-9]*-EAP.*"
            boolean r0 = r0.matches(r1)
            if (r0 == 0) goto L48
            com.google.android.libraries.places.internal.zzp r0 = com.google.android.libraries.places.internal.zzp.EAP
            r10 = r0
            goto L4c
        L41:
            com.google.android.libraries.places.internal.zzp r0 = com.google.android.libraries.places.internal.zzp.NONE
            r10 = r0
            goto L4c
        L48:
            com.google.android.libraries.places.internal.zzp r0 = com.google.android.libraries.places.internal.zzp.OTHER
            r10 = r0
        L4c:
            r0 = r8
            if (r0 == 0) goto L68
            r0 = r9
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L68
            r0 = r9
            r1 = r8
            java.lang.String r1 = r1.getBSSID()
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L68
            r0 = 1
            r13 = r0
            goto L6b
        L68:
            r0 = 0
            r13 = r0
        L6b:
            r0 = r7
            r1 = r9
            r2 = r11
            r3 = r10
            r4 = r13
            r5 = r12
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.libraries.places.internal.zzq.<init>(android.net.wifi.WifiInfo, java.lang.String, java.lang.String, int, int):void");
    }

    private zzq(String str, int i, zzp zzpVar, boolean z, int i2) {
        this.zza = str;
        this.zzb = i;
        this.zzc = zzpVar;
        this.zzd = z;
        this.zze = i2;
    }

    public final String zza() {
        return this.zza;
    }

    public final int zzb() {
        return this.zzb;
    }

    public final zzp zzc() {
        return this.zzc;
    }

    public final boolean zzd() {
        return this.zzd;
    }

    public final int zze() {
        return this.zze;
    }
}
