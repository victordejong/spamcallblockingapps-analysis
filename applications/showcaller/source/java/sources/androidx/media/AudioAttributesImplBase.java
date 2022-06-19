package androidx.media;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBase.class */
public class AudioAttributesImplBase implements AudioAttributesImpl {

    /* renamed from: a */
    public int f3782a = 0;

    /* renamed from: b */
    public int f3783b = 0;

    /* renamed from: c */
    public int f3784c = 0;

    /* renamed from: d */
    public int f3785d = -1;

    /* renamed from: a */
    public int m32297a() {
        return this.f3783b;
    }

    /* renamed from: b */
    public int m32296b() {
        int i;
        int i2 = this.f3784c;
        int m32295c = m32295c();
        if (m32295c == 6) {
            i = i2 | 4;
        } else {
            i = i2;
            if (m32295c == 7) {
                i = i2 | 1;
            }
        }
        return i & 273;
    }

    /* renamed from: c */
    public int m32295c() {
        int i = this.f3785d;
        return i != -1 ? i : AudioAttributesCompat.m32299a(false, this.f3784c, this.f3782a);
    }

    /* renamed from: d */
    public int m32294d() {
        return this.f3782a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        boolean z = false;
        if (this.f3783b == audioAttributesImplBase.m32297a()) {
            z = false;
            if (this.f3784c == audioAttributesImplBase.m32296b()) {
                z = false;
                if (this.f3782a == audioAttributesImplBase.m32294d()) {
                    z = false;
                    if (this.f3785d == audioAttributesImplBase.f3785d) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3783b), Integer.valueOf(this.f3784c), Integer.valueOf(this.f3782a), Integer.valueOf(this.f3785d)});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f3785d != -1) {
            sb.append(" stream=");
            sb.append(this.f3785d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        sb.append(AudioAttributesCompat.m32298b(this.f3782a));
        sb.append(" content=");
        sb.append(this.f3783b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f3784c).toUpperCase());
        return sb.toString();
    }
}
