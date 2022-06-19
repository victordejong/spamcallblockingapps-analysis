package androidx.media;

import android.media.AudioAttributes;
import android.os.Build;
import android.util.SparseIntArray;
import androidx.media.AudioAttributesImpl;
import androidx.media.AudioAttributesImplApi21;
import androidx.media.AudioAttributesImplApi26;
import androidx.media.AudioAttributesImplBase;
import androidx.versionedparcelable.AbstractC2922c;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompat.class */
public class AudioAttributesCompat implements AbstractC2922c {

    /* renamed from: a */
    static boolean f4871a;

    /* renamed from: c */
    private static final SparseIntArray f4872c;

    /* renamed from: d */
    private static final int[] f4873d = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16};

    /* renamed from: b */
    public AudioAttributesImpl f4874b;

    /* renamed from: androidx.media.AudioAttributesCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompat$a.class */
    public static final class C1287a {

        /* renamed from: a */
        public final AudioAttributesImpl.AbstractC1288a f4875a;

        public C1287a() {
            if (AudioAttributesCompat.f4871a) {
                this.f4875a = new AudioAttributesImplBase.C1291a();
            } else if (Build.VERSION.SDK_INT >= 26) {
                this.f4875a = new AudioAttributesImplApi26.C1290a();
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.f4875a = new AudioAttributesImplApi21.C1289a();
            } else {
                this.f4875a = new AudioAttributesImplBase.C1291a();
            }
        }

        public C1287a(AudioAttributesCompat audioAttributesCompat) {
            if (AudioAttributesCompat.f4871a) {
                this.f4875a = new AudioAttributesImplBase.C1291a(audioAttributesCompat);
            } else if (Build.VERSION.SDK_INT >= 26) {
                this.f4875a = new AudioAttributesImplApi26.C1290a(audioAttributesCompat.m43270a());
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.f4875a = new AudioAttributesImplApi21.C1289a(audioAttributesCompat.m43270a());
            } else {
                this.f4875a = new AudioAttributesImplBase.C1291a(audioAttributesCompat);
            }
        }

        /* renamed from: a */
        public final C1287a m43261a(int i) {
            this.f4875a.mo43247a(i);
            return this;
        }

        /* renamed from: a */
        public final AudioAttributesCompat m43262a() {
            return new AudioAttributesCompat(this.f4875a.mo43248a());
        }

        /* renamed from: b */
        public final C1287a m43260b(int i) {
            this.f4875a.mo43246b(i);
            return this;
        }

        /* renamed from: c */
        public final C1287a m43259c(int i) {
            this.f4875a.mo43244d(i);
            return this;
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f4872c = sparseIntArray;
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
        this.f4874b = audioAttributesImpl;
    }

    /* renamed from: a */
    public static int m43267a(boolean z, int i, int i2) {
        if ((i & 1) == 1) {
            return z ? 1 : 7;
        } else if ((i & 4) == 4) {
            return z ? 0 : 6;
        } else {
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
    }

    /* renamed from: a */
    public static AudioAttributesCompat m43268a(Object obj) {
        if (f4871a) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return new AudioAttributesCompat(new AudioAttributesImplApi26((AudioAttributes) obj));
        }
        if (Build.VERSION.SDK_INT < 21) {
            return null;
        }
        return new AudioAttributesCompat(new AudioAttributesImplApi21((AudioAttributes) obj));
    }

    /* renamed from: a */
    public static String m43269a(int i) {
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

    /* renamed from: a */
    public final Object m43270a() {
        return this.f4874b.mo43256a();
    }

    /* renamed from: b */
    public final int m43266b() {
        return this.f4874b.mo43253c();
    }

    /* renamed from: c */
    public final int m43265c() {
        return this.f4874b.mo43251e();
    }

    /* renamed from: d */
    public final int m43264d() {
        return this.f4874b.mo43250f();
    }

    /* renamed from: e */
    public final int m43263e() {
        return this.f4874b.mo43249g();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesCompat)) {
            return false;
        }
        AudioAttributesCompat audioAttributesCompat = (AudioAttributesCompat) obj;
        AudioAttributesImpl audioAttributesImpl = this.f4874b;
        return audioAttributesImpl == null ? audioAttributesCompat.f4874b == null : audioAttributesImpl.equals(audioAttributesCompat.f4874b);
    }

    public int hashCode() {
        return this.f4874b.hashCode();
    }

    public String toString() {
        return this.f4874b.toString();
    }
}
