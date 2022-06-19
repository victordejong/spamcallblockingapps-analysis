package androidx.media;

import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompatParcelizer.class */
public class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(AbstractC26405c abstractC26405c) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        audioAttributesCompat.f926a = (AudioAttributesImpl) abstractC26405c.m1938A(audioAttributesCompat.f926a, 1);
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        AudioAttributesImpl audioAttributesImpl = audioAttributesCompat.f926a;
        abstractC26405c.mo1922B(1);
        abstractC26405c.m1936N(audioAttributesImpl);
    }
}
