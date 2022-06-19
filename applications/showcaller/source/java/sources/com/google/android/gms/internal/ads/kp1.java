package com.google.android.gms.internal.ads;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kp1.class */
final class kp1 {

    /* renamed from: a */
    private final AudioTrack f25287a;

    /* renamed from: b */
    private final AudioTimestamp f25288b = new AudioTimestamp();

    /* renamed from: c */
    private long f25289c;

    /* renamed from: d */
    private long f25290d;

    /* renamed from: e */
    private long f25291e;

    public kp1(AudioTrack audioTrack) {
        this.f25287a = audioTrack;
    }

    /* renamed from: a */
    public final boolean m13838a() {
        boolean timestamp = this.f25287a.getTimestamp(this.f25288b);
        if (timestamp) {
            long j = this.f25288b.framePosition;
            if (this.f25290d > j) {
                this.f25289c++;
            }
            this.f25290d = j;
            this.f25291e = j + (this.f25289c << 32);
        }
        return timestamp;
    }

    /* renamed from: b */
    public final long m13837b() {
        return this.f25288b.nanoTime / 1000;
    }

    /* renamed from: c */
    public final long m13836c() {
        return this.f25291e;
    }
}
