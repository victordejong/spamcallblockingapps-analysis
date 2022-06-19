package androidx.media;

import android.media.AudioAttributes;
import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi26Parcelizer.class */
public class AudioAttributesImplApi26Parcelizer {
    public static AudioAttributesImplApi26 read(AbstractC26405c abstractC26405c) {
        AudioAttributesImplApi26 audioAttributesImplApi26 = new AudioAttributesImplApi26();
        ((AudioAttributesImplApi21) audioAttributesImplApi26).a = (AudioAttributes) abstractC26405c.m1925v(((AudioAttributesImplApi21) audioAttributesImplApi26).a, 1);
        ((AudioAttributesImplApi21) audioAttributesImplApi26).b = abstractC26405c.m1927r(((AudioAttributesImplApi21) audioAttributesImplApi26).b, 2);
        return audioAttributesImplApi26;
    }

    public static void write(AudioAttributesImplApi26 audioAttributesImplApi26, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        AudioAttributes audioAttributes = ((AudioAttributesImplApi21) audioAttributesImplApi26).a;
        abstractC26405c.mo1922B(1);
        abstractC26405c.mo1914K(audioAttributes);
        int i = ((AudioAttributesImplApi21) audioAttributesImplApi26).b;
        abstractC26405c.mo1922B(2);
        abstractC26405c.mo1916I(i);
    }
}
