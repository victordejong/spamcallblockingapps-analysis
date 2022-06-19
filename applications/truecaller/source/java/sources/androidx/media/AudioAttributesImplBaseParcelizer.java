package androidx.media;

import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBaseParcelizer.class */
public class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(AbstractC26405c abstractC26405c) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.a = abstractC26405c.m1927r(audioAttributesImplBase.a, 1);
        audioAttributesImplBase.b = abstractC26405c.m1927r(audioAttributesImplBase.b, 2);
        audioAttributesImplBase.c = abstractC26405c.m1927r(audioAttributesImplBase.c, 3);
        audioAttributesImplBase.d = abstractC26405c.m1927r(audioAttributesImplBase.d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        int i = audioAttributesImplBase.a;
        abstractC26405c.mo1922B(1);
        abstractC26405c.mo1916I(i);
        int i2 = audioAttributesImplBase.b;
        abstractC26405c.mo1922B(2);
        abstractC26405c.mo1916I(i2);
        int i3 = audioAttributesImplBase.c;
        abstractC26405c.mo1922B(3);
        abstractC26405c.mo1916I(i3);
        int i4 = audioAttributesImplBase.d;
        abstractC26405c.mo1922B(4);
        abstractC26405c.mo1916I(i4);
    }
}
