package androidx.media;

import androidx.versionedparcelable.VersionedParcel;
import p012b.p074r.AbstractC1138a;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompatParcelizer.class */
public class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(VersionedParcel versionedParcel) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        audioAttributesCompat.f1402a = (AbstractC1138a) versionedParcel.m36994a((VersionedParcel) audioAttributesCompat.f1402a, 1);
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        versionedParcel.m36971b(audioAttributesCompat.f1402a, 1);
    }
}
