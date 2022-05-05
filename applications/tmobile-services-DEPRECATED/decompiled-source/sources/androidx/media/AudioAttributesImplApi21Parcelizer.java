package androidx.media;

import android.media.AudioAttributes;
import androidx.annotation.RestrictTo;
import androidx.versionedparcelable.VersionedParcel;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21Parcelizer.class */
public final class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(VersionedParcel versionedParcel) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.f4185a = (AudioAttributes) versionedParcel.m16559r(audioAttributesImplApi21.f4185a, 1);
        audioAttributesImplApi21.f4186b = versionedParcel.m16560p(audioAttributesImplApi21.f4186b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, VersionedParcel versionedParcel) {
        versionedParcel.mo16538x(false, false);
        versionedParcel.m16573H(audioAttributesImplApi21.f4185a, 1);
        versionedParcel.m16574F(audioAttributesImplApi21.f4186b, 2);
    }
}
