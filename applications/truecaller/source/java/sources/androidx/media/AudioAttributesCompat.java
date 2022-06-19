package androidx.media;

import android.util.SparseIntArray;
import p1727n3.p1803i0.AbstractC26407e;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompat.class */
public class AudioAttributesCompat implements AbstractC26407e {

    /* renamed from: b */
    public static final SparseIntArray f925b;

    /* renamed from: a */
    public AudioAttributesImpl f926a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f925b = sparseIntArray;
        sparseIntArray.put(5, 1);
        sparseIntArray.put(6, 2);
        sparseIntArray.put(7, 2);
        sparseIntArray.put(8, 1);
        sparseIntArray.put(9, 1);
        sparseIntArray.put(10, 1);
    }

    public AudioAttributesCompat() {
    }

    public AudioAttributesCompat(AudioAttributesImpl audioAttributesImpl) {
        this.f926a = audioAttributesImpl;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: d */
    public static int m42859d(boolean z, int i, int i2) {
        if ((i & 1) == 1) {
            return z ? 1 : 7;
        } else if ((i & 4) == 4) {
            return z ? 0 : 6;
        } else {
            int i3 = 0;
            switch (i2) {
                case 0:
                case 1:
                case 12:
                case 14:
                case 16:
                    return 3;
                case 2:
                    break;
                case 3:
                    if (!z) {
                        i3 = 8;
                        break;
                    } else {
                        i3 = 0;
                        break;
                    }
                case 4:
                    return 4;
                case 5:
                case 7:
                case 8:
                case 9:
                case 10:
                    return 5;
                case 6:
                    return 2;
                case 11:
                    return 10;
                case 13:
                    return 1;
                case 15:
                default:
                    if (z) {
                        throw new IllegalArgumentException(C22128a.m8599l2("Unknown usage value ", i2, " in audio attributes"));
                    }
                    return 3;
            }
            return i3;
        }
    }

    /* renamed from: b */
    public int m42860b() {
        return this.f926a.m42857b();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof AudioAttributesCompat)) {
            return false;
        }
        AudioAttributesCompat audioAttributesCompat = (AudioAttributesCompat) obj;
        AudioAttributesImpl audioAttributesImpl = this.f926a;
        if (audioAttributesImpl != null) {
            return audioAttributesImpl.equals(audioAttributesCompat.f926a);
        }
        if (audioAttributesCompat.f926a == null) {
            z = true;
        }
        return z;
    }

    public int getContentType() {
        return this.f926a.getContentType();
    }

    public int hashCode() {
        return this.f926a.hashCode();
    }

    public String toString() {
        return this.f926a.toString();
    }
}
