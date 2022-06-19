package com.google.android.gms.internal.ads;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dwu.class */
public final class dwu extends dwv {

    /* renamed from: b */
    private final AudioTimestamp f47874b = new AudioTimestamp();

    /* renamed from: c */
    private long f47875c;

    /* renamed from: d */
    private long f47876d;

    /* renamed from: e */
    private long f47877e;

    public dwu() {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.dwv
    /* renamed from: a */
    public final void mo15547a(AudioTrack audioTrack, boolean z) {
        super.mo15547a(audioTrack, z);
        this.f47875c = 0L;
        this.f47876d = 0L;
        this.f47877e = 0L;
    }

    @Override // com.google.android.gms.internal.ads.dwv
    /* renamed from: a */
    public final boolean mo15549a() {
        boolean timestamp = this.f47878a.getTimestamp(this.f47874b);
        if (timestamp) {
            long j = this.f47874b.framePosition;
            if (this.f47876d > j) {
                this.f47875c++;
            }
            this.f47876d = j;
            this.f47877e = j + (this.f47875c << 32);
        }
        return timestamp;
    }

    @Override // com.google.android.gms.internal.ads.dwv
    /* renamed from: b */
    public final long mo15546b() {
        return this.f47874b.nanoTime;
    }

    @Override // com.google.android.gms.internal.ads.dwv
    /* renamed from: c */
    public final long mo15545c() {
        return this.f47877e;
    }
}
