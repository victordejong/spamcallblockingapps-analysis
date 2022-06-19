package androidx.media;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBaseParcelizer.class */
public class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(d40 d40Var) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.a = d40Var.m2828v(audioAttributesImplBase.a, 1);
        audioAttributesImplBase.b = d40Var.m2828v(audioAttributesImplBase.b, 2);
        audioAttributesImplBase.c = d40Var.m2828v(audioAttributesImplBase.c, 3);
        audioAttributesImplBase.d = d40Var.m2828v(audioAttributesImplBase.d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, d40 d40Var) {
        d40Var.m2879K(false, false);
        d40Var.m2865Y(audioAttributesImplBase.a, 1);
        d40Var.m2865Y(audioAttributesImplBase.b, 2);
        d40Var.m2865Y(audioAttributesImplBase.c, 3);
        d40Var.m2865Y(audioAttributesImplBase.d, 4);
    }
}
