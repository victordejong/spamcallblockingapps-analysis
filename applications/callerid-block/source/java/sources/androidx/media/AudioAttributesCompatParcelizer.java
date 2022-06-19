package androidx.media;

import androidx.versionedparcelable.AbstractC0520a;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompatParcelizer.class */
public final class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(AbstractC0520a abstractC0520a) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        audioAttributesCompat.a = abstractC0520a.m11937v(audioAttributesCompat.a, 1);
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, AbstractC0520a abstractC0520a) {
        abstractC0520a.m11935x(false, false);
        abstractC0520a.m11960M(audioAttributesCompat.a, 1);
    }
}
