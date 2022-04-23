package androidx.media;

import android.media.AudioAttributes;
import androidx.media.AudioAttributesImplApi21;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi26.class */
public class AudioAttributesImplApi26 extends AudioAttributesImplApi21 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi26$a.class */
    public static final class a extends AudioAttributesImplApi21.a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Object obj) {
            super(obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: f */
        public a e(int i) {
            this.f2616a.setUsage(i);
            return this;
        }

        @Override // androidx.media.AudioAttributesImplApi21.a, androidx.media.AudioAttributesImpl.a
        public final AudioAttributesImpl a() {
            return new AudioAttributesImplApi26(this.f2616a.build());
        }
    }

    public AudioAttributesImplApi26() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AudioAttributesImplApi26(AudioAttributes audioAttributes) {
        super(audioAttributes, -1);
    }

    @Override // androidx.media.AudioAttributesImplApi21, androidx.media.AudioAttributesImpl
    public final int b() {
        return this.f2614a.getVolumeControlStream();
    }
}
