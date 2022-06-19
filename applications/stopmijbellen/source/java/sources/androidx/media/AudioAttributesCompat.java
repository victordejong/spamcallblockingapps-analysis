package androidx.media;

import android.util.SparseIntArray;
import p175n1.AbstractC3712b;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompat.class */
public class AudioAttributesCompat implements AbstractC3712b {

    /* renamed from: b */
    public static final /* synthetic */ int f2086b = 0;

    /* renamed from: a */
    public AudioAttributesImpl f2087a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.put(5, 1);
        sparseIntArray.put(6, 2);
        sparseIntArray.put(7, 2);
        sparseIntArray.put(8, 1);
        sparseIntArray.put(9, 1);
        sparseIntArray.put(10, 1);
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof AudioAttributesCompat)) {
            return false;
        }
        AudioAttributesCompat audioAttributesCompat = (AudioAttributesCompat) obj;
        AudioAttributesImpl audioAttributesImpl = this.f2087a;
        if (audioAttributesImpl != null) {
            return audioAttributesImpl.equals(audioAttributesCompat.f2087a);
        }
        if (audioAttributesCompat.f2087a == null) {
            z = true;
        }
        return z;
    }

    public int hashCode() {
        return this.f2087a.hashCode();
    }

    public String toString() {
        return this.f2087a.toString();
    }
}
