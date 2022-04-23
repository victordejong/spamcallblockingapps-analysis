package androidx.media;

import android.media.AudioAttributes;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21Parcelizer.class */
public class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(VersionedParcel versionedParcel) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.f2614a = (AudioAttributes) versionedParcel.b((VersionedParcel) audioAttributesImplApi21.f2614a, 1);
        audioAttributesImplApi21.f2615b = versionedParcel.b(audioAttributesImplApi21.f2615b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, VersionedParcel versionedParcel) {
        versionedParcel.a(audioAttributesImplApi21.f2614a, 1);
        versionedParcel.a(audioAttributesImplApi21.f2615b, 2);
    }
}
