package androidx.media;

import android.media.AudioAttributes;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21Parcelizer.class */
public class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(VersionedParcel versionedParcel) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.f3780a = (AudioAttributes) versionedParcel.m30793r(audioAttributesImplApi21.f3780a, 1);
        audioAttributesImplApi21.f3781b = versionedParcel.m30794p(audioAttributesImplApi21.f3781b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, VersionedParcel versionedParcel) {
        versionedParcel.m30789x(false, false);
        versionedParcel.m30808H(audioAttributesImplApi21.f3780a, 1);
        versionedParcel.m30809F(audioAttributesImplApi21.f3781b, 2);
    }
}
