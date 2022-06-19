package androidx.media;

import android.media.AudioAttributes;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi26Parcelizer.class */
public class AudioAttributesImplApi26Parcelizer {
    public static AudioAttributesImplApi26 read(VersionedParcel versionedParcel) {
        AudioAttributesImplApi26 audioAttributesImplApi26 = new AudioAttributesImplApi26();
        audioAttributesImplApi26.f4876a = (AudioAttributes) versionedParcel.m39640b((VersionedParcel) audioAttributesImplApi26.f4876a, 1);
        audioAttributesImplApi26.f4877b = versionedParcel.m39644b(audioAttributesImplApi26.f4877b, 2);
        return audioAttributesImplApi26;
    }

    public static void write(AudioAttributesImplApi26 audioAttributesImplApi26, VersionedParcel versionedParcel) {
        versionedParcel.m39660a(audioAttributesImplApi26.f4876a, 1);
        versionedParcel.m39664a(audioAttributesImplApi26.f4877b, 2);
    }
}
