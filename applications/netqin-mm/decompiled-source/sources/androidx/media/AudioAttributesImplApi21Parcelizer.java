package androidx.media;

import android.media.AudioAttributes;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21Parcelizer.class */
public class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(VersionedParcel versionedParcel) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.f1404a = (AudioAttributes) versionedParcel.m36996a((VersionedParcel) audioAttributesImplApi21.f1404a, 1);
        audioAttributesImplApi21.f1405b = versionedParcel.m37000a(audioAttributesImplApi21.f1405b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        versionedParcel.m36973b(audioAttributesImplApi21.f1404a, 1);
        versionedParcel.m36977b(audioAttributesImplApi21.f1405b, 2);
    }
}
