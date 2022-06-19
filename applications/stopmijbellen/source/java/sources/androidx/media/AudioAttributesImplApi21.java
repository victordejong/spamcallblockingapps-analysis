package androidx.media;

import android.annotation.TargetApi;
import android.media.AudioAttributes;
import android.support.p012v4.media.C0082b;
@TargetApi(21)
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21.class */
class AudioAttributesImplApi21 implements AudioAttributesImpl {

    /* renamed from: a */
    public AudioAttributes f2088a;

    /* renamed from: b */
    public int f2089b = -1;

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplApi21)) {
            return false;
        }
        return this.f2088a.equals(((AudioAttributesImplApi21) obj).f2088a);
    }

    public int hashCode() {
        return this.f2088a.hashCode();
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("AudioAttributesCompat: audioattributes=");
        m8752j.append(this.f2088a);
        return m8752j.toString();
    }
}
