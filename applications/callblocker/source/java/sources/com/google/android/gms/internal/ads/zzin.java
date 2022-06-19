package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzin.class */
public final class zzin extends Exception {

    /* renamed from: a */
    private final int f17753a;

    public zzin(int i) {
        super(new StringBuilder(36).append("AudioTrack write failed: ").append(i).toString());
        this.f17753a = i;
    }
}
