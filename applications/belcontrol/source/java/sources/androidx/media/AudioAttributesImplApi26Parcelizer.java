package androidx.media;

import android.media.AudioAttributes;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi26Parcelizer.class */
public class AudioAttributesImplApi26Parcelizer {
    public static AudioAttributesImplApi26 read(d40 d40Var) {
        AudioAttributesImplApi26 audioAttributesImplApi26 = new AudioAttributesImplApi26();
        ((AudioAttributesImplApi21) audioAttributesImplApi26).a = (AudioAttributes) d40Var.m2889A(((AudioAttributesImplApi21) audioAttributesImplApi26).a, 1);
        ((AudioAttributesImplApi21) audioAttributesImplApi26).b = d40Var.m2828v(((AudioAttributesImplApi21) audioAttributesImplApi26).b, 2);
        return audioAttributesImplApi26;
    }

    public static void write(AudioAttributesImplApi26 audioAttributesImplApi26, d40 d40Var) {
        d40Var.m2879K(false, false);
        d40Var.m2856d0(((AudioAttributesImplApi21) audioAttributesImplApi26).a, 1);
        d40Var.m2865Y(((AudioAttributesImplApi21) audioAttributesImplApi26).b, 2);
    }
}
