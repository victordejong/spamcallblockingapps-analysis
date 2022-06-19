package androidx.media;

import androidx.versionedparcelable.VersionedParcel;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBaseParcelizer.class */
public final class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(VersionedParcel versionedParcel) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f2090a = versionedParcel.m7493k(audioAttributesImplBase.f2090a, 1);
        audioAttributesImplBase.f2091b = versionedParcel.m7493k(audioAttributesImplBase.f2091b, 2);
        audioAttributesImplBase.f2092c = versionedParcel.m7493k(audioAttributesImplBase.f2092c, 3);
        audioAttributesImplBase.f2093d = versionedParcel.m7493k(audioAttributesImplBase.f2093d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, VersionedParcel versionedParcel) {
        Objects.requireNonNull(versionedParcel);
        int i = audioAttributesImplBase.f2090a;
        versionedParcel.mo1854p(1);
        versionedParcel.mo1850t(i);
        int i2 = audioAttributesImplBase.f2091b;
        versionedParcel.mo1854p(2);
        versionedParcel.mo1850t(i2);
        int i3 = audioAttributesImplBase.f2092c;
        versionedParcel.mo1854p(3);
        versionedParcel.mo1850t(i3);
        int i4 = audioAttributesImplBase.f2093d;
        versionedParcel.mo1854p(4);
        versionedParcel.mo1850t(i4);
    }
}
