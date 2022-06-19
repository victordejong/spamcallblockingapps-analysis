package androidx.media;

import android.media.AudioAttributes;
import androidx.media.AudioAttributesImpl;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21.class */
public class AudioAttributesImplApi21 implements AudioAttributesImpl {

    /* renamed from: a */
    public AudioAttributes f4876a;

    /* renamed from: b */
    public int f4877b;

    /* renamed from: androidx.media.AudioAttributesImplApi21$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21$a.class */
    public static class C1289a implements AudioAttributesImpl.AbstractC1288a {

        /* renamed from: a */
        final AudioAttributes.Builder f4878a;

        public C1289a() {
            this.f4878a = new AudioAttributes.Builder();
        }

        public C1289a(Object obj) {
            this.f4878a = new AudioAttributes.Builder((AudioAttributes) obj);
        }

        @Override // androidx.media.AudioAttributesImpl.AbstractC1288a
        /* renamed from: a */
        public AudioAttributesImpl mo43248a() {
            return new AudioAttributesImplApi21(this.f4878a.build());
        }

        @Override // androidx.media.AudioAttributesImpl.AbstractC1288a
        /* renamed from: b */
        public final /* synthetic */ AudioAttributesImpl.AbstractC1288a mo43246b(int i) {
            this.f4878a.setContentType(i);
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.AbstractC1288a
        /* renamed from: c */
        public final /* synthetic */ AudioAttributesImpl.AbstractC1288a mo43245c(int i) {
            this.f4878a.setFlags(i);
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.AbstractC1288a
        /* renamed from: d */
        public final /* synthetic */ AudioAttributesImpl.AbstractC1288a mo43244d(int i) {
            this.f4878a.setLegacyStreamType(i);
            return this;
        }

        /* renamed from: e */
        public C1289a mo43247a(int i) {
            int i2 = i;
            if (i == 16) {
                i2 = 12;
            }
            this.f4878a.setUsage(i2);
            return this;
        }
    }

    public AudioAttributesImplApi21() {
        this.f4877b = -1;
    }

    public AudioAttributesImplApi21(AudioAttributes audioAttributes) {
        this(audioAttributes, -1);
    }

    public AudioAttributesImplApi21(AudioAttributes audioAttributes, int i) {
        this.f4877b = -1;
        this.f4876a = audioAttributes;
        this.f4877b = i;
    }

    @Override // androidx.media.AudioAttributesImpl
    /* renamed from: a */
    public final Object mo43256a() {
        return this.f4876a;
    }

    @Override // androidx.media.AudioAttributesImpl
    /* renamed from: b */
    public int mo43254b() {
        return AudioAttributesCompat.m43267a(true, this.f4876a.getFlags(), this.f4876a.getUsage());
    }

    @Override // androidx.media.AudioAttributesImpl
    /* renamed from: c */
    public final int mo43253c() {
        int i = this.f4877b;
        return i != -1 ? i : AudioAttributesCompat.m43267a(false, this.f4876a.getFlags(), this.f4876a.getUsage());
    }

    @Override // androidx.media.AudioAttributesImpl
    /* renamed from: d */
    public final int mo43252d() {
        return this.f4877b;
    }

    @Override // androidx.media.AudioAttributesImpl
    /* renamed from: e */
    public final int mo43251e() {
        return this.f4876a.getContentType();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplApi21)) {
            return false;
        }
        return this.f4876a.equals(((AudioAttributesImplApi21) obj).f4876a);
    }

    @Override // androidx.media.AudioAttributesImpl
    /* renamed from: f */
    public final int mo43250f() {
        return this.f4876a.getUsage();
    }

    @Override // androidx.media.AudioAttributesImpl
    /* renamed from: g */
    public final int mo43249g() {
        return this.f4876a.getFlags();
    }

    public int hashCode() {
        return this.f4876a.hashCode();
    }

    public String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f4876a;
    }
}
