package androidx.media;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBase.class */
class AudioAttributesImplBase implements AudioAttributesImpl {

    /* renamed from: a */
    int f4187a = 0;

    /* renamed from: b */
    int f4188b = 0;

    /* renamed from: c */
    int f4189c = 0;

    /* renamed from: d */
    int f4190d = -1;

    /* renamed from: a */
    public int m18053a() {
        return this.f4188b;
    }

    /* renamed from: b */
    public int m18052b() {
        int i;
        int i2 = this.f4189c;
        int c = m18051c();
        if (c == 6) {
            i = i2 | 4;
        } else {
            i = i2;
            if (c == 7) {
                i = i2 | 1;
            }
        }
        return i & 273;
    }

    /* renamed from: c */
    public int m18051c() {
        int i = this.f4190d;
        return i != -1 ? i : AudioAttributesCompat.m18055a(false, this.f4189c, this.f4187a);
    }

    /* renamed from: d */
    public int m18050d() {
        return this.f4187a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        boolean z = false;
        if (this.f4188b == audioAttributesImplBase.m18053a()) {
            z = false;
            if (this.f4189c == audioAttributesImplBase.m18052b()) {
                z = false;
                if (this.f4187a == audioAttributesImplBase.m18050d()) {
                    z = false;
                    if (this.f4190d == audioAttributesImplBase.f4190d) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f4188b), Integer.valueOf(this.f4189c), Integer.valueOf(this.f4187a), Integer.valueOf(this.f4190d)});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f4190d != -1) {
            sb.append(" stream=");
            sb.append(this.f4190d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        sb.append(AudioAttributesCompat.m18054b(this.f4187a));
        sb.append(" content=");
        sb.append(this.f4188b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f4189c).toUpperCase());
        return sb.toString();
    }
}
