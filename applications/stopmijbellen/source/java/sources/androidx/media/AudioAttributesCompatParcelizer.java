package androidx.media;

import androidx.versionedparcelable.VersionedParcel;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompatParcelizer.class */
public final class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(VersionedParcel versionedParcel) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        audioAttributesCompat.f2087a = (AudioAttributesImpl) (!versionedParcel.mo1858i(1) ? audioAttributesCompat.f2087a : versionedParcel.m7491o());
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, VersionedParcel versionedParcel) {
        Objects.requireNonNull(versionedParcel);
        AudioAttributesImpl audioAttributesImpl = audioAttributesCompat.f2087a;
        versionedParcel.mo1854p(1);
        versionedParcel.m7490w(audioAttributesImpl);
    }
}
