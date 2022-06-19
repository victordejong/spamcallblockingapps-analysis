package androidx.media;

import android.media.AudioAttributes;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21Parcelizer.class */
public class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(VersionedParcel versionedParcel) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.f4876a = (AudioAttributes) versionedParcel.m39640b((VersionedParcel) audioAttributesImplApi21.f4876a, 1);
        audioAttributesImplApi21.f4877b = versionedParcel.m39644b(audioAttributesImplApi21.f4877b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, VersionedParcel versionedParcel) {
        versionedParcel.m39660a(audioAttributesImplApi21.f4876a, 1);
        versionedParcel.m39664a(audioAttributesImplApi21.f4877b, 2);
    }
}
