package androidx.media;

import android.media.AudioAttributes;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21Parcelizer.class */
public class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(d40 d40Var) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.a = (AudioAttributes) d40Var.m2889A(audioAttributesImplApi21.a, 1);
        audioAttributesImplApi21.b = d40Var.m2828v(audioAttributesImplApi21.b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, d40 d40Var) {
        d40Var.m2879K(false, false);
        d40Var.m2856d0(audioAttributesImplApi21.a, 1);
        d40Var.m2865Y(audioAttributesImplApi21.b, 2);
    }
}
