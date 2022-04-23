package androidx.media;

import android.media.AudioAttributes;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi26Parcelizer.class */
public class AudioAttributesImplApi26Parcelizer {
    public static AudioAttributesImplApi26 read(VersionedParcel versionedParcel) {
        AudioAttributesImplApi26 audioAttributesImplApi26 = new AudioAttributesImplApi26();
        audioAttributesImplApi26.f2614a = (AudioAttributes) versionedParcel.b((VersionedParcel) audioAttributesImplApi26.f2614a, 1);
        audioAttributesImplApi26.f2615b = versionedParcel.b(audioAttributesImplApi26.f2615b, 2);
        return audioAttributesImplApi26;
    }

    public static void write(AudioAttributesImplApi26 audioAttributesImplApi26, VersionedParcel versionedParcel) {
        versionedParcel.a(audioAttributesImplApi26.f2614a, 1);
        versionedParcel.a(audioAttributesImplApi26.f2615b, 2);
    }
}
