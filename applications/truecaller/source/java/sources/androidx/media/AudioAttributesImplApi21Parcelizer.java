package androidx.media;

import android.media.AudioAttributes;
import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21Parcelizer.class */
public class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(AbstractC26405c abstractC26405c) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.a = (AudioAttributes) abstractC26405c.m1925v(audioAttributesImplApi21.a, 1);
        audioAttributesImplApi21.b = abstractC26405c.m1927r(audioAttributesImplApi21.b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        AudioAttributes audioAttributes = audioAttributesImplApi21.a;
        abstractC26405c.mo1922B(1);
        abstractC26405c.mo1914K(audioAttributes);
        int i = audioAttributesImplApi21.b;
        abstractC26405c.mo1922B(2);
        abstractC26405c.mo1916I(i);
    }
}
