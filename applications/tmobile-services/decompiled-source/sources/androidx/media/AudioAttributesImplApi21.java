package androidx.media;

import android.annotation.TargetApi;
import android.media.AudioAttributes;
@TargetApi(21)
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21.class */
class AudioAttributesImplApi21 implements AudioAttributesImpl {

    /* renamed from: a */
    AudioAttributes f4185a;

    /* renamed from: b */
    int f4186b = -1;

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplApi21)) {
            return false;
        }
        return this.f4185a.equals(((AudioAttributesImplApi21) obj).f4185a);
    }

    public int hashCode() {
        return this.f4185a.hashCode();
    }

    public String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f4185a;
    }
}
