package androidx.media;

import android.media.AudioAttributes;
import androidx.media.AudioAttributesImpl;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21.class */
public class AudioAttributesImplApi21 implements AudioAttributesImpl {

    /* renamed from: a  reason: collision with root package name */
    public AudioAttributes f2614a;

    /* renamed from: b  reason: collision with root package name */
    public int f2615b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21$a.class */
    public static class a implements AudioAttributesImpl.a {

        /* renamed from: a  reason: collision with root package name */
        final AudioAttributes.Builder f2616a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a() {
            this.f2616a = new AudioAttributes.Builder();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Object obj) {
            this.f2616a = new AudioAttributes.Builder((AudioAttributes) obj);
        }

        @Override // androidx.media.AudioAttributesImpl.a
        public AudioAttributesImpl a() {
            return new AudioAttributesImplApi21(this.f2616a.build());
        }

        @Override // androidx.media.AudioAttributesImpl.a
        public final /* synthetic */ AudioAttributesImpl.a b(int i) {
            this.f2616a.setContentType(i);
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.a
        public final /* synthetic */ AudioAttributesImpl.a c(int i) {
            this.f2616a.setFlags(i);
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.a
        public final /* synthetic */ AudioAttributesImpl.a d(int i) {
            this.f2616a.setLegacyStreamType(i);
            return this;
        }

        /* renamed from: e */
        public a a(int i) {
            int i2 = i;
            if (i == 16) {
                i2 = 12;
            }
            this.f2616a.setUsage(i2);
            return this;
        }
    }

    public AudioAttributesImplApi21() {
        this.f2615b = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AudioAttributesImplApi21(AudioAttributes audioAttributes) {
        this(audioAttributes, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AudioAttributesImplApi21(AudioAttributes audioAttributes, int i) {
        this.f2615b = -1;
        this.f2614a = audioAttributes;
        this.f2615b = i;
    }

    @Override // androidx.media.AudioAttributesImpl
    public final Object a() {
        return this.f2614a;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int b() {
        return AudioAttributesCompat.a(true, this.f2614a.getFlags(), this.f2614a.getUsage());
    }

    @Override // androidx.media.AudioAttributesImpl
    public final int c() {
        int i = this.f2615b;
        return i != -1 ? i : AudioAttributesCompat.a(false, this.f2614a.getFlags(), this.f2614a.getUsage());
    }

    @Override // androidx.media.AudioAttributesImpl
    public final int d() {
        return this.f2615b;
    }

    @Override // androidx.media.AudioAttributesImpl
    public final int e() {
        return this.f2614a.getContentType();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplApi21)) {
            return false;
        }
        return this.f2614a.equals(((AudioAttributesImplApi21) obj).f2614a);
    }

    @Override // androidx.media.AudioAttributesImpl
    public final int f() {
        return this.f2614a.getUsage();
    }

    @Override // androidx.media.AudioAttributesImpl
    public final int g() {
        return this.f2614a.getFlags();
    }

    public int hashCode() {
        return this.f2614a.hashCode();
    }

    public String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f2614a;
    }
}
