package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
@TargetApi(19)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dme.class */
public final class dme extends dmf {

    /* renamed from: b */
    private final AudioTimestamp f14772b = new AudioTimestamp();

    /* renamed from: c */
    private long f14773c;

    /* renamed from: d */
    private long f14774d;

    /* renamed from: e */
    private long f14775e;

    public dme() {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.dmf
    /* renamed from: a */
    public final void mo9144a(AudioTrack audioTrack, boolean z) {
        super.mo9144a(audioTrack, z);
        this.f14773c = 0L;
        this.f14774d = 0L;
        this.f14775e = 0L;
    }

    @Override // com.google.android.gms.internal.ads.dmf
    /* renamed from: a */
    public final boolean mo9146a() {
        boolean timestamp = this.f14776a.getTimestamp(this.f14772b);
        if (timestamp) {
            long j = this.f14772b.framePosition;
            if (this.f14774d > j) {
                this.f14773c++;
            }
            this.f14774d = j;
            this.f14775e = j + (this.f14773c << 32);
        }
        return timestamp;
    }

    @Override // com.google.android.gms.internal.ads.dmf
    /* renamed from: b */
    public final long mo9143b() {
        return this.f14772b.nanoTime;
    }

    @Override // com.google.android.gms.internal.ads.dmf
    /* renamed from: c */
    public final long mo9142c() {
        return this.f14775e;
    }
}
