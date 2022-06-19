package androidx.media;

import android.media.AudioAttributes;
import androidx.media.AudioAttributesImplApi21;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi26.class */
public class AudioAttributesImplApi26 extends AudioAttributesImplApi21 {

    /* renamed from: androidx.media.AudioAttributesImplApi26$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi26$a.class */
    public static final class C1290a extends AudioAttributesImplApi21.C1289a {
        public C1290a() {
        }

        public C1290a(Object obj) {
            super(obj);
        }

        /* renamed from: f */
        public C1290a mo43258e(int i) {
            this.f4878a.setUsage(i);
            return this;
        }

        @Override // androidx.media.AudioAttributesImplApi21.C1289a, androidx.media.AudioAttributesImpl.AbstractC1288a
        /* renamed from: a */
        public final AudioAttributesImpl mo43248a() {
            return new AudioAttributesImplApi26(this.f4878a.build());
        }
    }

    public AudioAttributesImplApi26() {
    }

    public AudioAttributesImplApi26(AudioAttributes audioAttributes) {
        super(audioAttributes, -1);
    }

    @Override // androidx.media.AudioAttributesImplApi21, androidx.media.AudioAttributesImpl
    /* renamed from: b */
    public final int mo43254b() {
        return this.f4876a.getVolumeControlStream();
    }
}
