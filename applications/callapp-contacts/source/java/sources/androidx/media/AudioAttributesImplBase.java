package androidx.media;

import android.util.Log;
import androidx.media.AudioAttributesImpl;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBase.class */
public class AudioAttributesImplBase implements AudioAttributesImpl {

    /* renamed from: a */
    public int f4879a;

    /* renamed from: b */
    public int f4880b;

    /* renamed from: c */
    public int f4881c;

    /* renamed from: d */
    public int f4882d;

    /* renamed from: androidx.media.AudioAttributesImplBase$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBase$a.class */
    public static final class C1291a implements AudioAttributesImpl.AbstractC1288a {

        /* renamed from: a */
        private int f4883a;

        /* renamed from: b */
        private int f4884b;

        /* renamed from: c */
        private int f4885c;

        /* renamed from: d */
        private int f4886d;

        public C1291a() {
            this.f4883a = 0;
            this.f4884b = 0;
            this.f4885c = 0;
            this.f4886d = -1;
        }

        public C1291a(AudioAttributesCompat audioAttributesCompat) {
            this.f4883a = 0;
            this.f4884b = 0;
            this.f4885c = 0;
            this.f4886d = -1;
            this.f4883a = audioAttributesCompat.m43264d();
            this.f4884b = audioAttributesCompat.m43265c();
            this.f4885c = audioAttributesCompat.m43263e();
            this.f4886d = audioAttributesCompat.f4874b.mo43252d();
        }

        @Override // androidx.media.AudioAttributesImpl.AbstractC1288a
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ AudioAttributesImpl.AbstractC1288a mo43247a(int i) {
            switch (i) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                    this.f4883a = i;
                    break;
                case 16:
                    this.f4883a = 12;
                    break;
                default:
                    this.f4883a = 0;
                    break;
            }
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.AbstractC1288a
        /* renamed from: a */
        public final AudioAttributesImpl mo43248a() {
            return new AudioAttributesImplBase(this.f4884b, this.f4885c, this.f4883a, this.f4886d);
        }

        @Override // androidx.media.AudioAttributesImpl.AbstractC1288a
        /* renamed from: b */
        public final /* bridge */ /* synthetic */ AudioAttributesImpl.AbstractC1288a mo43246b(int i) {
            if (i == 0 || i == 1 || i == 2 || i == 3 || i == 4) {
                this.f4884b = i;
            } else {
                this.f4884b = 0;
            }
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.AbstractC1288a
        /* renamed from: c */
        public final /* bridge */ /* synthetic */ AudioAttributesImpl.AbstractC1288a mo43245c(int i) {
            this.f4885c = (i & 1023) | this.f4885c;
            return this;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // androidx.media.AudioAttributesImpl.AbstractC1288a
        /* renamed from: d */
        public final /* synthetic */ AudioAttributesImpl.AbstractC1288a mo43244d(int i) {
            if (i != 10) {
                this.f4886d = i;
                switch (i) {
                    case 0:
                        this.f4884b = 1;
                        break;
                    case 1:
                        this.f4884b = 4;
                        break;
                    case 2:
                        this.f4884b = 4;
                        break;
                    case 3:
                        this.f4884b = 2;
                        break;
                    case 4:
                        this.f4884b = 4;
                        break;
                    case 5:
                        this.f4884b = 4;
                        break;
                    case 6:
                        this.f4884b = 1;
                        this.f4885c |= 4;
                        break;
                    case 7:
                        this.f4885c = 1 | this.f4885c;
                        this.f4884b = 4;
                        break;
                    case 8:
                        this.f4884b = 4;
                        break;
                    case 9:
                        this.f4884b = 4;
                        break;
                    case 10:
                        this.f4884b = 1;
                        break;
                    default:
                        Log.e("AudioAttributesCompat", "Invalid stream type " + i + " for AudioAttributesCompat");
                        break;
                }
                this.f4883a = AudioAttributesImplBase.m43255a(i);
                return this;
            }
            throw new IllegalArgumentException("STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback");
        }
    }

    public AudioAttributesImplBase() {
        this.f4879a = 0;
        this.f4880b = 0;
        this.f4881c = 0;
        this.f4882d = -1;
    }

    AudioAttributesImplBase(int i, int i2, int i3, int i4) {
        this.f4879a = 0;
        this.f4880b = 0;
        this.f4881c = 0;
        this.f4882d = -1;
        this.f4880b = i;
        this.f4881c = i2;
        this.f4879a = i3;
        this.f4882d = i4;
    }

    /* renamed from: a */
    static int m43255a(int i) {
        switch (i) {
            case 0:
                return 2;
            case 1:
            case 7:
                return 13;
            case 2:
                return 6;
            case 3:
                return 1;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 2;
            case 8:
                return 3;
            case 9:
            default:
                return 0;
            case 10:
                return 11;
        }
    }

    @Override // androidx.media.AudioAttributesImpl
    /* renamed from: a */
    public final Object mo43256a() {
        return null;
    }

    @Override // androidx.media.AudioAttributesImpl
    /* renamed from: b */
    public final int mo43254b() {
        return AudioAttributesCompat.m43267a(true, this.f4881c, this.f4879a);
    }

    @Override // androidx.media.AudioAttributesImpl
    /* renamed from: c */
    public final int mo43253c() {
        int i = this.f4882d;
        return i != -1 ? i : AudioAttributesCompat.m43267a(false, this.f4881c, this.f4879a);
    }

    @Override // androidx.media.AudioAttributesImpl
    /* renamed from: d */
    public final int mo43252d() {
        return this.f4882d;
    }

    @Override // androidx.media.AudioAttributesImpl
    /* renamed from: e */
    public final int mo43251e() {
        return this.f4880b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        return this.f4880b == audioAttributesImplBase.f4880b && this.f4881c == audioAttributesImplBase.mo43249g() && this.f4879a == audioAttributesImplBase.f4879a && this.f4882d == audioAttributesImplBase.f4882d;
    }

    @Override // androidx.media.AudioAttributesImpl
    /* renamed from: f */
    public final int mo43250f() {
        return this.f4879a;
    }

    @Override // androidx.media.AudioAttributesImpl
    /* renamed from: g */
    public final int mo43249g() {
        int i;
        int i2 = this.f4881c;
        int mo43253c = mo43253c();
        if (mo43253c == 6) {
            i = i2 | 4;
        } else {
            i = i2;
            if (mo43253c == 7) {
                i = i2 | 1;
            }
        }
        return i & 273;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f4880b), Integer.valueOf(this.f4881c), Integer.valueOf(this.f4879a), Integer.valueOf(this.f4882d)});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f4882d != -1) {
            sb.append(" stream=");
            sb.append(this.f4882d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        sb.append(AudioAttributesCompat.m43269a(this.f4879a));
        sb.append(" content=");
        sb.append(this.f4880b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f4881c).toUpperCase());
        return sb.toString();
    }
}
