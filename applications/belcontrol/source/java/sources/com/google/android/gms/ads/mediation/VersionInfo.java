package com.google.android.gms.ads.mediation;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/VersionInfo.class */
public final class VersionInfo {
    private final int zzevl;
    private final int zzevm;
    private final int zzevn;

    public VersionInfo(int i, int i2, int i3) {
        this.zzevl = i;
        this.zzevm = i2;
        this.zzevn = i3;
    }

    public final int getMajorVersion() {
        return this.zzevl;
    }

    public final int getMicroVersion() {
        return this.zzevn;
    }

    public final int getMinorVersion() {
        return this.zzevm;
    }
}
