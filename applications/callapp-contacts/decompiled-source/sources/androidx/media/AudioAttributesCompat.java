package androidx.media;

import android.media.AudioAttributes;
import android.os.Build;
import android.util.SparseIntArray;
import androidx.media.AudioAttributesImpl;
import androidx.media.AudioAttributesImplApi21;
import androidx.media.AudioAttributesImplApi26;
import androidx.media.AudioAttributesImplBase;
import androidx.versionedparcelable.c;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompat.class */
public class AudioAttributesCompat implements c {

    /* renamed from: a  reason: collision with root package name */
    static boolean f2609a;

    /* renamed from: c  reason: collision with root package name */
    private static final SparseIntArray f2610c;

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f2611d = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16};

    /* renamed from: b  reason: collision with root package name */
    public AudioAttributesImpl f2612b;

    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompat$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final AudioAttributesImpl.a f2613a;

        public a() {
            if (AudioAttributesCompat.f2609a) {
                this.f2613a = new AudioAttributesImplBase.a();
            } else if (Build.VERSION.SDK_INT >= 26) {
                this.f2613a = new AudioAttributesImplApi26.a();
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.f2613a = new AudioAttributesImplApi21.a();
            } else {
                this.f2613a = new AudioAttributesImplBase.a();
            }
        }

        public a(AudioAttributesCompat audioAttributesCompat) {
            if (AudioAttributesCompat.f2609a) {
                this.f2613a = new AudioAttributesImplBase.a(audioAttributesCompat);
            } else if (Build.VERSION.SDK_INT >= 26) {
                this.f2613a = new AudioAttributesImplApi26.a(audioAttributesCompat.a());
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.f2613a = new AudioAttributesImplApi21.a(audioAttributesCompat.a());
            } else {
                this.f2613a = new AudioAttributesImplBase.a(audioAttributesCompat);
            }
        }

        public final a a(int i) {
            this.f2613a.a(i);
            return this;
        }

        public final AudioAttributesCompat a() {
            return new AudioAttributesCompat(this.f2613a.a());
        }

        public final a b(int i) {
            this.f2613a.b(i);
            return this;
        }

        public final a c(int i) {
            this.f2613a.d(i);
            return this;
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f2610c = sparseIntArray;
        sparseIntArray.put(5, 1);
        sparseIntArray.put(6, 2);
        sparseIntArray.put(7, 2);
        sparseIntArray.put(8, 1);
        sparseIntArray.put(9, 1);
        sparseIntArray.put(10, 1);
    }

    public AudioAttributesCompat() {
    }

    AudioAttributesCompat(AudioAttributesImpl audioAttributesImpl) {
        this.f2612b = audioAttributesImpl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(boolean z, int i, int i2) {
        if ((i & 1) == 1) {
            return z ? 1 : 7;
        }
        if ((i & 4) == 4) {
            return z ? 0 : 6;
        }
        switch (i2) {
            case 0:
            case 1:
            case 12:
            case 14:
            case 16:
                return 3;
            case 2:
                return 0;
            case 3:
                return z ? 0 : 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            case 11:
                return 10;
            case 13:
                return 1;
            case 15:
            default:
                if (!z) {
                    return 3;
                }
                throw new IllegalArgumentException("Unknown usage value " + i2 + " in audio attributes");
        }
    }

    public static AudioAttributesCompat a(Object obj) {
        if (f2609a) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return new AudioAttributesCompat(new AudioAttributesImplApi26((AudioAttributes) obj));
        }
        if (Build.VERSION.SDK_INT >= 21) {
            return new AudioAttributesCompat(new AudioAttributesImplApi21((AudioAttributes) obj));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(int i) {
        switch (i) {
            case 0:
                return "USAGE_UNKNOWN";
            case 1:
                return "USAGE_MEDIA";
            case 2:
                return "USAGE_VOICE_COMMUNICATION";
            case 3:
                return "USAGE_VOICE_COMMUNICATION_SIGNALLING";
            case 4:
                return "USAGE_ALARM";
            case 5:
                return "USAGE_NOTIFICATION";
            case 6:
                return "USAGE_NOTIFICATION_RINGTONE";
            case 7:
                return "USAGE_NOTIFICATION_COMMUNICATION_REQUEST";
            case 8:
                return "USAGE_NOTIFICATION_COMMUNICATION_INSTANT";
            case 9:
                return "USAGE_NOTIFICATION_COMMUNICATION_DELAYED";
            case 10:
                return "USAGE_NOTIFICATION_EVENT";
            case 11:
                return "USAGE_ASSISTANCE_ACCESSIBILITY";
            case 12:
                return "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE";
            case 13:
                return "USAGE_ASSISTANCE_SONIFICATION";
            case 14:
                return "USAGE_GAME";
            case 15:
            default:
                return "unknown usage ".concat(String.valueOf(i));
            case 16:
                return "USAGE_ASSISTANT";
        }
    }

    public final Object a() {
        return this.f2612b.a();
    }

    public final int b() {
        return this.f2612b.c();
    }

    public final int c() {
        return this.f2612b.e();
    }

    public final int d() {
        return this.f2612b.f();
    }

    public final int e() {
        return this.f2612b.g();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesCompat)) {
            return false;
        }
        AudioAttributesCompat audioAttributesCompat = (AudioAttributesCompat) obj;
        AudioAttributesImpl audioAttributesImpl = this.f2612b;
        return audioAttributesImpl == null ? audioAttributesCompat.f2612b == null : audioAttributesImpl.equals(audioAttributesCompat.f2612b);
    }

    public int hashCode() {
        return this.f2612b.hashCode();
    }

    public String toString() {
        return this.f2612b.toString();
    }
}
