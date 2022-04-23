package com.google.android.gms.internal.ads;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dwu.class */
public final class dwu extends dwv {

    /* renamed from: b  reason: collision with root package name */
    private final AudioTimestamp f27333b = new AudioTimestamp();

    /* renamed from: c  reason: collision with root package name */
    private long f27334c;

    /* renamed from: d  reason: collision with root package name */
    private long f27335d;
    private long e;

    public dwu() {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.dwv
    public final void a(AudioTrack audioTrack, boolean z) {
        super.a(audioTrack, z);
        this.f27334c = 0L;
        this.f27335d = 0L;
        this.e = 0L;
    }

    @Override // com.google.android.gms.internal.ads.dwv
    public final boolean a() {
        boolean timestamp = this.f27336a.getTimestamp(this.f27333b);
        if (timestamp) {
            long j = this.f27333b.framePosition;
            if (this.f27335d > j) {
                this.f27334c++;
            }
            this.f27335d = j;
            this.e = j + (this.f27334c << 32);
        }
        return timestamp;
    }

    @Override // com.google.android.gms.internal.ads.dwv
    public final long b() {
        return this.f27333b.nanoTime;
    }

    @Override // com.google.android.gms.internal.ads.dwv
    public final long c() {
        return this.e;
    }
}
