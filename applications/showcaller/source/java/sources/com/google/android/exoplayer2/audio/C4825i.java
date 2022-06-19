package com.google.android.exoplayer2.audio;

import android.annotation.TargetApi;
import android.media.AudioAttributes;
import com.google.android.exoplayer2.util.C5515h0;
/* renamed from: com.google.android.exoplayer2.audio.i */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/i.class */
public final class C4825i {

    /* renamed from: a */
    public static final C4825i f14616a = new C4827b().m21580a();

    /* renamed from: b */
    public final int f14617b;

    /* renamed from: c */
    public final int f14618c;

    /* renamed from: d */
    public final int f14619d;

    /* renamed from: e */
    public final int f14620e;

    /* renamed from: f */
    private AudioAttributes f14621f;

    /* renamed from: com.google.android.exoplayer2.audio.i$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/i$b.class */
    public static final class C4827b {

        /* renamed from: a */
        private int f14622a = 0;

        /* renamed from: b */
        private int f14623b = 0;

        /* renamed from: c */
        private int f14624c = 1;

        /* renamed from: d */
        private int f14625d = 1;

        /* renamed from: a */
        public C4825i m21580a() {
            return new C4825i(this.f14622a, this.f14623b, this.f14624c, this.f14625d);
        }
    }

    private C4825i(int i, int i2, int i3, int i4) {
        this.f14617b = i;
        this.f14618c = i2;
        this.f14619d = i3;
        this.f14620e = i4;
    }

    @TargetApi(21)
    /* renamed from: a */
    public AudioAttributes m21581a() {
        if (this.f14621f == null) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(this.f14617b).setFlags(this.f14618c).setUsage(this.f14619d);
            if (C5515h0.f17876a >= 29) {
                usage.setAllowedCapturePolicy(this.f14620e);
            }
            this.f14621f = usage.build();
        }
        return this.f14621f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C4825i.class != obj.getClass()) {
            return false;
        }
        C4825i c4825i = (C4825i) obj;
        if (this.f14617b != c4825i.f14617b || this.f14618c != c4825i.f14618c || this.f14619d != c4825i.f14619d || this.f14620e != c4825i.f14620e) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((527 + this.f14617b) * 31) + this.f14618c) * 31) + this.f14619d) * 31) + this.f14620e;
    }
}
