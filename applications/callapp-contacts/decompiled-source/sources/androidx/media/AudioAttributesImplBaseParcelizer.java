package androidx.media;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBaseParcelizer.class */
public class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(VersionedParcel versionedParcel) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f2617a = versionedParcel.b(audioAttributesImplBase.f2617a, 1);
        audioAttributesImplBase.f2618b = versionedParcel.b(audioAttributesImplBase.f2618b, 2);
        audioAttributesImplBase.f2619c = versionedParcel.b(audioAttributesImplBase.f2619c, 3);
        audioAttributesImplBase.f2620d = versionedParcel.b(audioAttributesImplBase.f2620d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, VersionedParcel versionedParcel) {
        versionedParcel.a(audioAttributesImplBase.f2617a, 1);
        versionedParcel.a(audioAttributesImplBase.f2618b, 2);
        versionedParcel.a(audioAttributesImplBase.f2619c, 3);
        versionedParcel.a(audioAttributesImplBase.f2620d, 4);
    }
}
