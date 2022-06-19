package androidx.media;

import android.media.AudioAttributes;
import androidx.media.AbstractC0894a;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21.class */
public class AudioAttributesImplApi21 implements AbstractC0894a {

    /* renamed from: a */
    public AudioAttributes f3013a;

    /* renamed from: b */
    public int f3014b;

    /* renamed from: androidx.media.AudioAttributesImplApi21$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21$a.class */
    static class C0891a implements AbstractC0894a.AbstractC0895a {

        /* renamed from: a */
        final AudioAttributes.Builder f3015a = new AudioAttributes.Builder();

        @Override // androidx.media.AbstractC0894a.AbstractC0895a
        /* renamed from: a */
        public AbstractC0894a mo19155a() {
            return new AudioAttributesImplApi21(this.f3015a.build());
        }

        /* renamed from: b */
        public C0891a mo19154a(int i) {
            this.f3015a.setLegacyStreamType(i);
            return this;
        }
    }

    public AudioAttributesImplApi21() {
        this.f3014b = -1;
    }

    public AudioAttributesImplApi21(AudioAttributes audioAttributes) {
        this(audioAttributes, -1);
    }

    public AudioAttributesImplApi21(AudioAttributes audioAttributes, int i) {
        this.f3014b = -1;
        this.f3013a = audioAttributes;
        this.f3014b = i;
    }

    public boolean equals(Object obj) {
        return !(obj instanceof AudioAttributesImplApi21) ? false : this.f3013a.equals(((AudioAttributesImplApi21) obj).f3013a);
    }

    public int hashCode() {
        return this.f3013a.hashCode();
    }

    public String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f3013a;
    }
}
