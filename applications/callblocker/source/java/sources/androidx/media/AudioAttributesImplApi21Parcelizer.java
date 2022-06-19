package androidx.media;

import android.media.AudioAttributes;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21Parcelizer.class */
public class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(VersionedParcel versionedParcel) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.f3013a = (AudioAttributes) versionedParcel.m18141b((VersionedParcel) audioAttributesImplApi21.f3013a, 1);
        audioAttributesImplApi21.f3014b = versionedParcel.m18142b(audioAttributesImplApi21.f3014b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, VersionedParcel versionedParcel) {
        versionedParcel.m18144a(false, false);
        versionedParcel.m18153a(audioAttributesImplApi21.f3013a, 1);
        versionedParcel.m18154a(audioAttributesImplApi21.f3014b, 2);
    }
}
