package androidx.media;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompatParcelizer.class */
public class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(d40 d40Var) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        audioAttributesCompat.a = d40Var.m2881I(audioAttributesCompat.a, 1);
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, d40 d40Var) {
        d40Var.m2879K(false, false);
        d40Var.m2838m0(audioAttributesCompat.a, 1);
    }
}
