package androidx.media2.exoplayer.external.audio;

import android.media.AudioAttributes;
/* renamed from: androidx.media2.exoplayer.external.audio.c */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/c.class */
public final class C1401c {

    /* renamed from: a */
    public static final C1401c f5298a = new C1403a().m43018a();

    /* renamed from: b */
    public final int f5299b;

    /* renamed from: c */
    public final int f5300c;

    /* renamed from: d */
    public final int f5301d;

    /* renamed from: e */
    private AudioAttributes f5302e;

    /* renamed from: androidx.media2.exoplayer.external.audio.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/c$a.class */
    public static final class C1403a {

        /* renamed from: a */
        public int f5303a = 0;

        /* renamed from: b */
        public int f5304b = 0;

        /* renamed from: c */
        public int f5305c = 1;

        /* renamed from: a */
        public final C1401c m43018a() {
            return new C1401c(this.f5303a, this.f5304b, this.f5305c);
        }
    }

    private C1401c(int i, int i2, int i3) {
        this.f5299b = i;
        this.f5300c = i2;
        this.f5301d = i3;
    }

    /* renamed from: a */
    public final AudioAttributes m43019a() {
        if (this.f5302e == null) {
            this.f5302e = new AudioAttributes.Builder().setContentType(this.f5299b).setFlags(this.f5300c).setUsage(this.f5301d).build();
        }
        return this.f5302e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1401c c1401c = (C1401c) obj;
        return this.f5299b == c1401c.f5299b && this.f5300c == c1401c.f5300c && this.f5301d == c1401c.f5301d;
    }

    public final int hashCode() {
        return ((((this.f5299b + 527) * 31) + this.f5300c) * 31) + this.f5301d;
    }
}
