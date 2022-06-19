package com.google.android.exoplayer2.audio;

import android.media.AudioAttributes;
import com.google.android.exoplayer2.util.C11599af;
/* renamed from: com.google.android.exoplayer2.audio.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/d.class */
public final class C10889d {

    /* renamed from: a */
    public static final C10889d f35137a = new C10891a().m22069a();

    /* renamed from: b */
    public final int f35138b;

    /* renamed from: c */
    public final int f35139c;

    /* renamed from: d */
    public final int f35140d;

    /* renamed from: e */
    public final int f35141e;

    /* renamed from: f */
    private AudioAttributes f35142f;

    /* renamed from: com.google.android.exoplayer2.audio.d$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/d$a.class */
    public static final class C10891a {

        /* renamed from: a */
        public int f35143a = 0;

        /* renamed from: c */
        private int f35145c = 0;

        /* renamed from: b */
        public int f35144b = 1;

        /* renamed from: d */
        private int f35146d = 1;

        /* renamed from: a */
        public final C10889d m22069a() {
            return new C10889d(this.f35143a, this.f35145c, this.f35144b, this.f35146d);
        }
    }

    private C10889d(int i, int i2, int i3, int i4) {
        this.f35138b = i;
        this.f35139c = i2;
        this.f35140d = i3;
        this.f35141e = i4;
    }

    /* renamed from: a */
    public final AudioAttributes m22070a() {
        if (this.f35142f == null) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(this.f35138b).setFlags(this.f35139c).setUsage(this.f35140d);
            if (C11599af.f38648a >= 29) {
                usage.setAllowedCapturePolicy(this.f35141e);
            }
            this.f35142f = usage.build();
        }
        return this.f35142f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C10889d c10889d = (C10889d) obj;
        return this.f35138b == c10889d.f35138b && this.f35139c == c10889d.f35139c && this.f35140d == c10889d.f35140d && this.f35141e == c10889d.f35141e;
    }

    public final int hashCode() {
        return ((((((this.f35138b + 527) * 31) + this.f35139c) * 31) + this.f35140d) * 31) + this.f35141e;
    }
}
