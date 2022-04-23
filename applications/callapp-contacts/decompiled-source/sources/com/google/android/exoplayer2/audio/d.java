package com.google.android.exoplayer2.audio;

import android.media.AudioAttributes;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final d f20742a = new a().a();

    /* renamed from: b  reason: collision with root package name */
    public final int f20743b;

    /* renamed from: c  reason: collision with root package name */
    public final int f20744c;

    /* renamed from: d  reason: collision with root package name */
    public final int f20745d;
    public final int e;
    private AudioAttributes f;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f20746a = 0;

        /* renamed from: c  reason: collision with root package name */
        private int f20748c = 0;

        /* renamed from: b  reason: collision with root package name */
        public int f20747b = 1;

        /* renamed from: d  reason: collision with root package name */
        private int f20749d = 1;

        public final d a() {
            return new d(this.f20746a, this.f20748c, this.f20747b, this.f20749d);
        }
    }

    private d(int i, int i2, int i3, int i4) {
        this.f20743b = i;
        this.f20744c = i2;
        this.f20745d = i3;
        this.e = i4;
    }

    public final AudioAttributes a() {
        if (this.f == null) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(this.f20743b).setFlags(this.f20744c).setUsage(this.f20745d);
            if (af.f22275a >= 29) {
                usage.setAllowedCapturePolicy(this.e);
            }
            this.f = usage.build();
        }
        return this.f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f20743b == dVar.f20743b && this.f20744c == dVar.f20744c && this.f20745d == dVar.f20745d && this.e == dVar.e;
    }

    public final int hashCode() {
        return ((((((this.f20743b + 527) * 31) + this.f20744c) * 31) + this.f20745d) * 31) + this.e;
    }
}
