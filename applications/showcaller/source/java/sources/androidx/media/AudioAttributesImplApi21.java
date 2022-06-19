package androidx.media;

import android.media.AudioAttributes;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21.class */
public class AudioAttributesImplApi21 implements AudioAttributesImpl {

    /* renamed from: a */
    public AudioAttributes f3780a;

    /* renamed from: b */
    public int f3781b = -1;

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplApi21)) {
            return false;
        }
        return this.f3780a.equals(((AudioAttributesImplApi21) obj).f3780a);
    }

    public int hashCode() {
        return this.f3780a.hashCode();
    }

    public String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f3780a;
    }
}
