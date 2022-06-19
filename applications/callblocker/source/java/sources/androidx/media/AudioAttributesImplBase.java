package androidx.media;

import androidx.media.AbstractC0894a;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBase.class */
public class AudioAttributesImplBase implements AbstractC0894a {

    /* renamed from: a */
    public int f3016a;

    /* renamed from: b */
    public int f3017b;

    /* renamed from: c */
    public int f3018c;

    /* renamed from: d */
    public int f3019d;

    /* renamed from: androidx.media.AudioAttributesImplBase$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBase$a.class */
    public static class C0893a implements AbstractC0894a.AbstractC0895a {

        /* renamed from: a */
        private int f3020a = 0;

        /* renamed from: b */
        private int f3021b = 0;

        /* renamed from: c */
        private int f3022c = 0;

        /* renamed from: d */
        private int f3023d = -1;

        @Override // androidx.media.AbstractC0894a.AbstractC0895a
        /* renamed from: a */
        public AbstractC0894a mo19155a() {
            return new AudioAttributesImplBase(this.f3021b, this.f3022c, this.f3020a, this.f3023d);
        }

        /* renamed from: b */
        public C0893a mo19154a(int i) {
            if (i == 10) {
                throw new IllegalArgumentException("STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback");
            }
            this.f3023d = i;
            return this;
        }
    }

    public AudioAttributesImplBase() {
        this.f3016a = 0;
        this.f3017b = 0;
        this.f3018c = 0;
        this.f3019d = -1;
    }

    AudioAttributesImplBase(int i, int i2, int i3, int i4) {
        this.f3016a = 0;
        this.f3017b = 0;
        this.f3018c = 0;
        this.f3019d = -1;
        this.f3017b = i;
        this.f3018c = i2;
        this.f3016a = i3;
        this.f3019d = i4;
    }

    /* renamed from: a */
    public int m19160a() {
        return this.f3019d != -1 ? this.f3019d : AudioAttributesCompat.m19164a(false, this.f3018c, this.f3016a);
    }

    /* renamed from: b */
    public int m19159b() {
        return this.f3017b;
    }

    /* renamed from: c */
    public int m19158c() {
        return this.f3016a;
    }

    /* renamed from: d */
    public int m19157d() {
        int i;
        int i2 = this.f3018c;
        int m19160a = m19160a();
        if (m19160a == 6) {
            i = i2 | 4;
        } else {
            i = i2;
            if (m19160a == 7) {
                i = i2 | 1;
            }
        }
        return i & 273;
    }

    public boolean equals(Object obj) {
        boolean z;
        if (!(obj instanceof AudioAttributesImplBase)) {
            z = false;
        } else {
            AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
            z = false;
            if (this.f3017b == audioAttributesImplBase.m19159b()) {
                z = false;
                if (this.f3018c == audioAttributesImplBase.m19157d()) {
                    z = false;
                    if (this.f3016a == audioAttributesImplBase.m19158c()) {
                        z = false;
                        if (this.f3019d == audioAttributesImplBase.f3019d) {
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3017b), Integer.valueOf(this.f3018c), Integer.valueOf(this.f3016a), Integer.valueOf(this.f3019d)});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f3019d != -1) {
            sb.append(" stream=").append(this.f3019d);
            sb.append(" derived");
        }
        sb.append(" usage=").append(AudioAttributesCompat.m19166a(this.f3016a)).append(" content=").append(this.f3017b).append(" flags=0x").append(Integer.toHexString(this.f3018c).toUpperCase());
        return sb.toString();
    }
}
