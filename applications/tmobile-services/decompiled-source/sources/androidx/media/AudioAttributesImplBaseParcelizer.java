package androidx.media;

import androidx.annotation.RestrictTo;
import androidx.versionedparcelable.VersionedParcel;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBaseParcelizer.class */
public final class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(VersionedParcel versionedParcel) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f4187a = versionedParcel.m16560p(audioAttributesImplBase.f4187a, 1);
        audioAttributesImplBase.f4188b = versionedParcel.m16560p(audioAttributesImplBase.f4188b, 2);
        audioAttributesImplBase.f4189c = versionedParcel.m16560p(audioAttributesImplBase.f4189c, 3);
        audioAttributesImplBase.f4190d = versionedParcel.m16560p(audioAttributesImplBase.f4190d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, VersionedParcel versionedParcel) {
        versionedParcel.mo16538x(false, false);
        versionedParcel.m16574F(audioAttributesImplBase.f4187a, 1);
        versionedParcel.m16574F(audioAttributesImplBase.f4188b, 2);
        versionedParcel.m16574F(audioAttributesImplBase.f4189c, 3);
        versionedParcel.m16574F(audioAttributesImplBase.f4190d, 4);
    }
}
