package androidx.media;

import android.util.Log;
import androidx.media.AudioAttributesImpl;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBase.class */
public class AudioAttributesImplBase implements AudioAttributesImpl {

    /* renamed from: a  reason: collision with root package name */
    public int f2617a;

    /* renamed from: b  reason: collision with root package name */
    public int f2618b;

    /* renamed from: c  reason: collision with root package name */
    public int f2619c;

    /* renamed from: d  reason: collision with root package name */
    public int f2620d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBase$a.class */
    public static final class a implements AudioAttributesImpl.a {

        /* renamed from: a  reason: collision with root package name */
        private int f2621a;

        /* renamed from: b  reason: collision with root package name */
        private int f2622b;

        /* renamed from: c  reason: collision with root package name */
        private int f2623c;

        /* renamed from: d  reason: collision with root package name */
        private int f2624d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a() {
            this.f2621a = 0;
            this.f2622b = 0;
            this.f2623c = 0;
            this.f2624d = -1;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(AudioAttributesCompat audioAttributesCompat) {
            this.f2621a = 0;
            this.f2622b = 0;
            this.f2623c = 0;
            this.f2624d = -1;
            this.f2621a = audioAttributesCompat.d();
            this.f2622b = audioAttributesCompat.c();
            this.f2623c = audioAttributesCompat.e();
            this.f2624d = audioAttributesCompat.f2612b.d();
        }

        @Override // androidx.media.AudioAttributesImpl.a
        public final /* bridge */ /* synthetic */ AudioAttributesImpl.a a(int i) {
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
                    this.f2621a = i;
                    break;
                case 16:
                    this.f2621a = 12;
                    break;
                default:
                    this.f2621a = 0;
                    break;
            }
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.a
        public final AudioAttributesImpl a() {
            return new AudioAttributesImplBase(this.f2622b, this.f2623c, this.f2621a, this.f2624d);
        }

        @Override // androidx.media.AudioAttributesImpl.a
        public final /* bridge */ /* synthetic */ AudioAttributesImpl.a b(int i) {
            if (i == 0 || i == 1 || i == 2 || i == 3 || i == 4) {
                this.f2622b = i;
            } else {
                this.f2622b = 0;
            }
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.a
        public final /* bridge */ /* synthetic */ AudioAttributesImpl.a c(int i) {
            this.f2623c = (i & 1023) | this.f2623c;
            return this;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // androidx.media.AudioAttributesImpl.a
        public final /* synthetic */ AudioAttributesImpl.a d(int i) {
            if (i != 10) {
                this.f2624d = i;
                switch (i) {
                    case 0:
                        this.f2622b = 1;
                        break;
                    case 1:
                        this.f2622b = 4;
                        break;
                    case 2:
                        this.f2622b = 4;
                        break;
                    case 3:
                        this.f2622b = 2;
                        break;
                    case 4:
                        this.f2622b = 4;
                        break;
                    case 5:
                        this.f2622b = 4;
                        break;
                    case 6:
                        this.f2622b = 1;
                        this.f2623c |= 4;
                        break;
                    case 7:
                        this.f2623c = 1 | this.f2623c;
                        this.f2622b = 4;
                        break;
                    case 8:
                        this.f2622b = 4;
                        break;
                    case 9:
                        this.f2622b = 4;
                        break;
                    case 10:
                        this.f2622b = 1;
                        break;
                    default:
                        Log.e("AudioAttributesCompat", "Invalid stream type " + i + " for AudioAttributesCompat");
                        break;
                }
                this.f2621a = AudioAttributesImplBase.a(i);
                return this;
            }
            throw new IllegalArgumentException("STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback");
        }
    }

    public AudioAttributesImplBase() {
        this.f2617a = 0;
        this.f2618b = 0;
        this.f2619c = 0;
        this.f2620d = -1;
    }

    AudioAttributesImplBase(int i, int i2, int i3, int i4) {
        this.f2617a = 0;
        this.f2618b = 0;
        this.f2619c = 0;
        this.f2620d = -1;
        this.f2618b = i;
        this.f2619c = i2;
        this.f2617a = i3;
        this.f2620d = i4;
    }

    static int a(int i) {
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
    public final Object a() {
        return null;
    }

    @Override // androidx.media.AudioAttributesImpl
    public final int b() {
        return AudioAttributesCompat.a(true, this.f2619c, this.f2617a);
    }

    @Override // androidx.media.AudioAttributesImpl
    public final int c() {
        int i = this.f2620d;
        return i != -1 ? i : AudioAttributesCompat.a(false, this.f2619c, this.f2617a);
    }

    @Override // androidx.media.AudioAttributesImpl
    public final int d() {
        return this.f2620d;
    }

    @Override // androidx.media.AudioAttributesImpl
    public final int e() {
        return this.f2618b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        return this.f2618b == audioAttributesImplBase.f2618b && this.f2619c == audioAttributesImplBase.g() && this.f2617a == audioAttributesImplBase.f2617a && this.f2620d == audioAttributesImplBase.f2620d;
    }

    @Override // androidx.media.AudioAttributesImpl
    public final int f() {
        return this.f2617a;
    }

    @Override // androidx.media.AudioAttributesImpl
    public final int g() {
        int i;
        int i2 = this.f2619c;
        int c2 = c();
        if (c2 == 6) {
            i = i2 | 4;
        } else {
            i = i2;
            if (c2 == 7) {
                i = i2 | 1;
            }
        }
        return i & 273;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f2618b), Integer.valueOf(this.f2619c), Integer.valueOf(this.f2617a), Integer.valueOf(this.f2620d)});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f2620d != -1) {
            sb.append(" stream=");
            sb.append(this.f2620d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        sb.append(AudioAttributesCompat.a(this.f2617a));
        sb.append(" content=");
        sb.append(this.f2618b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f2619c).toUpperCase());
        return sb.toString();
    }
}
