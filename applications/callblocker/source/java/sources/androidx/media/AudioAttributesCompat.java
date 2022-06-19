package androidx.media;

import android.media.AudioAttributes;
import android.os.Build;
import android.util.SparseIntArray;
import androidx.media.AbstractC0894a;
import androidx.media.AudioAttributesImplApi21;
import androidx.media.AudioAttributesImplApi26;
import androidx.media.AudioAttributesImplBase;
import androidx.versionedparcelable.AbstractC1083c;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompat.class */
public class AudioAttributesCompat implements AbstractC1083c {

    /* renamed from: a */
    static boolean f3008a;

    /* renamed from: c */
    private static final SparseIntArray f3009c = new SparseIntArray();

    /* renamed from: d */
    private static final int[] f3010d = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16};

    /* renamed from: b */
    public AbstractC0894a f3011b;

    /* renamed from: androidx.media.AudioAttributesCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompat$a.class */
    public static class C0890a {

        /* renamed from: a */
        final AbstractC0894a.AbstractC0895a f3012a;

        public C0890a() {
            if (AudioAttributesCompat.f3008a) {
                this.f3012a = new AudioAttributesImplBase.C0893a();
            } else if (Build.VERSION.SDK_INT >= 26) {
                this.f3012a = new AudioAttributesImplApi26.C0892a();
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.f3012a = new AudioAttributesImplApi21.C0891a();
            } else {
                this.f3012a = new AudioAttributesImplBase.C0893a();
            }
        }

        /* renamed from: a */
        public C0890a m19162a(int i) {
            this.f3012a.mo19154a(i);
            return this;
        }

        /* renamed from: a */
        public AudioAttributesCompat m19163a() {
            return new AudioAttributesCompat(this.f3012a.mo19155a());
        }
    }

    static {
        f3009c.put(5, 1);
        f3009c.put(6, 2);
        f3009c.put(7, 2);
        f3009c.put(8, 1);
        f3009c.put(9, 1);
        f3009c.put(10, 1);
    }

    public AudioAttributesCompat() {
    }

    AudioAttributesCompat(AbstractC0894a abstractC0894a) {
        this.f3011b = abstractC0894a;
    }

    /* renamed from: a */
    public static int m19164a(boolean z, int i, int i2) {
        int i3;
        if ((i & 1) != 1) {
            if ((i & 4) != 4) {
                i3 = 1;
                switch (i2) {
                    case 0:
                        i3 = 3;
                        break;
                    case 1:
                    case 12:
                    case 14:
                    case 16:
                        i3 = 3;
                        break;
                    case 2:
                        i3 = 0;
                        break;
                    case 3:
                        if (!z) {
                            i3 = 8;
                            break;
                        } else {
                            i3 = 0;
                            break;
                        }
                    case 4:
                        i3 = 4;
                        break;
                    case 5:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                        i3 = 5;
                        break;
                    case 6:
                        i3 = 2;
                        break;
                    case 11:
                        i3 = 10;
                        break;
                    case 13:
                        break;
                    case 15:
                    default:
                        if (!z) {
                            i3 = 3;
                            break;
                        } else {
                            throw new IllegalArgumentException("Unknown usage value " + i2 + " in audio attributes");
                        }
                }
            } else {
                i3 = z ? 0 : 6;
            }
        } else {
            i3 = z ? 1 : 7;
        }
        return i3;
    }

    /* renamed from: a */
    public static AudioAttributesCompat m19165a(Object obj) {
        AudioAttributesCompat audioAttributesCompat = null;
        if (!f3008a) {
            if (Build.VERSION.SDK_INT >= 26) {
                audioAttributesCompat = new AudioAttributesCompat(new AudioAttributesImplApi26((AudioAttributes) obj));
            } else if (Build.VERSION.SDK_INT >= 21) {
                audioAttributesCompat = new AudioAttributesCompat(new AudioAttributesImplApi21((AudioAttributes) obj));
            }
        }
        return audioAttributesCompat;
    }

    /* renamed from: a */
    public static String m19166a(int i) {
        String str;
        switch (i) {
            case 0:
                str = "USAGE_UNKNOWN";
                break;
            case 1:
                str = "USAGE_MEDIA";
                break;
            case 2:
                str = "USAGE_VOICE_COMMUNICATION";
                break;
            case 3:
                str = "USAGE_VOICE_COMMUNICATION_SIGNALLING";
                break;
            case 4:
                str = "USAGE_ALARM";
                break;
            case 5:
                str = "USAGE_NOTIFICATION";
                break;
            case 6:
                str = "USAGE_NOTIFICATION_RINGTONE";
                break;
            case 7:
                str = "USAGE_NOTIFICATION_COMMUNICATION_REQUEST";
                break;
            case 8:
                str = "USAGE_NOTIFICATION_COMMUNICATION_INSTANT";
                break;
            case 9:
                str = "USAGE_NOTIFICATION_COMMUNICATION_DELAYED";
                break;
            case 10:
                str = "USAGE_NOTIFICATION_EVENT";
                break;
            case 11:
                str = "USAGE_ASSISTANCE_ACCESSIBILITY";
                break;
            case 12:
                str = "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE";
                break;
            case 13:
                str = "USAGE_ASSISTANCE_SONIFICATION";
                break;
            case 14:
                str = "USAGE_GAME";
                break;
            case 15:
            default:
                str = "unknown usage " + i;
                break;
            case 16:
                str = "USAGE_ASSISTANT";
                break;
        }
        return str;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof AudioAttributesCompat) {
            AudioAttributesCompat audioAttributesCompat = (AudioAttributesCompat) obj;
            if (this.f3011b != null) {
                z = this.f3011b.equals(audioAttributesCompat.f3011b);
            } else if (audioAttributesCompat.f3011b == null) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        return this.f3011b.hashCode();
    }

    public String toString() {
        return this.f3011b.toString();
    }
}
