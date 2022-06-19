package androidx.media;

import android.media.AudioAttributes;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi26Parcelizer.class */
public class AudioAttributesImplApi26Parcelizer {
    public static AudioAttributesImplApi26 read(VersionedParcel versionedParcel) {
        AudioAttributesImplApi26 audioAttributesImplApi26 = new AudioAttributesImplApi26();
        audioAttributesImplApi26.f3013a = (AudioAttributes) versionedParcel.m18141b((VersionedParcel) audioAttributesImplApi26.f3013a, 1);
        audioAttributesImplApi26.f3014b = versionedParcel.m18142b(audioAttributesImplApi26.f3014b, 2);
        return audioAttributesImplApi26;
    }

    public static void write(AudioAttributesImplApi26 audioAttributesImplApi26, VersionedParcel versionedParcel) {
        versionedParcel.m18144a(false, false);
        versionedParcel.m18153a(audioAttributesImplApi26.f3013a, 1);
        versionedParcel.m18154a(audioAttributesImplApi26.f3014b, 2);
    }
}
