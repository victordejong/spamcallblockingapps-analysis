package androidx.media;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBaseParcelizer.class */
public class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(VersionedParcel versionedParcel) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f3016a = versionedParcel.m18142b(audioAttributesImplBase.f3016a, 1);
        audioAttributesImplBase.f3017b = versionedParcel.m18142b(audioAttributesImplBase.f3017b, 2);
        audioAttributesImplBase.f3018c = versionedParcel.m18142b(audioAttributesImplBase.f3018c, 3);
        audioAttributesImplBase.f3019d = versionedParcel.m18142b(audioAttributesImplBase.f3019d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, VersionedParcel versionedParcel) {
        versionedParcel.m18144a(false, false);
        versionedParcel.m18154a(audioAttributesImplBase.f3016a, 1);
        versionedParcel.m18154a(audioAttributesImplBase.f3017b, 2);
        versionedParcel.m18154a(audioAttributesImplBase.f3018c, 3);
        versionedParcel.m18154a(audioAttributesImplBase.f3019d, 4);
    }
}
