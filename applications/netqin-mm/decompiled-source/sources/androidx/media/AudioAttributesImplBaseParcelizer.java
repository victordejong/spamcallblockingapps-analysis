package androidx.media;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBaseParcelizer.class */
public class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(VersionedParcel versionedParcel) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f1407a = versionedParcel.m37000a(audioAttributesImplBase.f1407a, 1);
        audioAttributesImplBase.f1408b = versionedParcel.m37000a(audioAttributesImplBase.f1408b, 2);
        audioAttributesImplBase.f1409c = versionedParcel.m37000a(audioAttributesImplBase.f1409c, 3);
        audioAttributesImplBase.f1410d = versionedParcel.m37000a(audioAttributesImplBase.f1410d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        versionedParcel.m36977b(audioAttributesImplBase.f1407a, 1);
        versionedParcel.m36977b(audioAttributesImplBase.f1408b, 2);
        versionedParcel.m36977b(audioAttributesImplBase.f1409c, 3);
        versionedParcel.m36977b(audioAttributesImplBase.f1410d, 4);
    }
}
