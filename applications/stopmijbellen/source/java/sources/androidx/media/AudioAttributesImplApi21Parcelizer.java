package androidx.media;

import android.media.AudioAttributes;
import androidx.versionedparcelable.VersionedParcel;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21Parcelizer.class */
public final class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(VersionedParcel versionedParcel) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.f2088a = (AudioAttributes) versionedParcel.m7492m(audioAttributesImplApi21.f2088a, 1);
        audioAttributesImplApi21.f2089b = versionedParcel.m7493k(audioAttributesImplApi21.f2089b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, VersionedParcel versionedParcel) {
        Objects.requireNonNull(versionedParcel);
        AudioAttributes audioAttributes = audioAttributesImplApi21.f2088a;
        versionedParcel.mo1854p(1);
        versionedParcel.mo1849u(audioAttributes);
        int i = audioAttributesImplApi21.f2089b;
        versionedParcel.mo1854p(2);
        versionedParcel.mo1850t(i);
    }
}
