package androidx.media;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBaseParcelizer.class */
public class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(VersionedParcel versionedParcel) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f3782a = versionedParcel.m30794p(audioAttributesImplBase.f3782a, 1);
        audioAttributesImplBase.f3783b = versionedParcel.m30794p(audioAttributesImplBase.f3783b, 2);
        audioAttributesImplBase.f3784c = versionedParcel.m30794p(audioAttributesImplBase.f3784c, 3);
        audioAttributesImplBase.f3785d = versionedParcel.m30794p(audioAttributesImplBase.f3785d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, VersionedParcel versionedParcel) {
        versionedParcel.m30789x(false, false);
        versionedParcel.m30809F(audioAttributesImplBase.f3782a, 1);
        versionedParcel.m30809F(audioAttributesImplBase.f3783b, 2);
        versionedParcel.m30809F(audioAttributesImplBase.f3784c, 3);
        versionedParcel.m30809F(audioAttributesImplBase.f3785d, 4);
    }
}
