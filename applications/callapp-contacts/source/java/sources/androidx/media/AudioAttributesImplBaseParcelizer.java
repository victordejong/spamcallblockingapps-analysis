package androidx.media;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBaseParcelizer.class */
public class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(VersionedParcel versionedParcel) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f4879a = versionedParcel.m39644b(audioAttributesImplBase.f4879a, 1);
        audioAttributesImplBase.f4880b = versionedParcel.m39644b(audioAttributesImplBase.f4880b, 2);
        audioAttributesImplBase.f4881c = versionedParcel.m39644b(audioAttributesImplBase.f4881c, 3);
        audioAttributesImplBase.f4882d = versionedParcel.m39644b(audioAttributesImplBase.f4882d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, VersionedParcel versionedParcel) {
        versionedParcel.m39664a(audioAttributesImplBase.f4879a, 1);
        versionedParcel.m39664a(audioAttributesImplBase.f4880b, 2);
        versionedParcel.m39664a(audioAttributesImplBase.f4881c, 3);
        versionedParcel.m39664a(audioAttributesImplBase.f4882d, 4);
    }
}
