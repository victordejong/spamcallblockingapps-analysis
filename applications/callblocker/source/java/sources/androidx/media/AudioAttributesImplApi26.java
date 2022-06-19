package androidx.media;

import android.media.AudioAttributes;
import androidx.media.AudioAttributesImplApi21;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi26.class */
public class AudioAttributesImplApi26 extends AudioAttributesImplApi21 {

    /* renamed from: androidx.media.AudioAttributesImplApi26$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi26$a.class */
    static class C0892a extends AudioAttributesImplApi21.C0891a {
        @Override // androidx.media.AudioAttributesImplApi21.C0891a, androidx.media.AbstractC0894a.AbstractC0895a
        /* renamed from: a */
        public AbstractC0894a mo19155a() {
            return new AudioAttributesImplApi26(this.f3015a.build());
        }
    }

    public AudioAttributesImplApi26() {
    }

    public AudioAttributesImplApi26(AudioAttributes audioAttributes) {
        super(audioAttributes, -1);
    }
}
