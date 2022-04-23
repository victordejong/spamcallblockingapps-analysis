package androidx.media;

import android.media.AudioAttributes;
import android.os.Build;
import android.util.SparseIntArray;
import androidx.media.AudioAttributesImplApi21;
import androidx.media.AudioAttributesImplApi26;
import androidx.media.AudioAttributesImplBase;
import p012b.p074r.AbstractC1138a;
import p012b.p130z.AbstractC1978c;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompat.class */
public class AudioAttributesCompat implements AbstractC1978c {

    /* renamed from: b */
    public static final SparseIntArray f1400b;

    /* renamed from: c */
    public static boolean f1401c;

    /* renamed from: a */
    public AbstractC1138a f1402a;

    /* renamed from: androidx.media.AudioAttributesCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompat$a.class */
    public static class C0234a {

        /* renamed from: a */
        public final AbstractC1138a.AbstractC1139a f1403a;

        public C0234a() {
            if (AudioAttributesCompat.f1401c) {
                this.f1403a = new AudioAttributesImplBase.C0237a();
                return;
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 26) {
                this.f1403a = new AudioAttributesImplApi26.C0236a();
            } else if (i >= 21) {
                this.f1403a = new AudioAttributesImplApi21.C0235a();
            } else {
                this.f1403a = new AudioAttributesImplBase.C0237a();
            }
        }

        /* renamed from: a */
        public C0234a m38307a(int i) {
            this.f1403a.mo34590b(i);
            return this;
        }

        /* renamed from: a */
        public AudioAttributesCompat m38308a() {
            return new AudioAttributesCompat(this.f1403a.mo34592a());
        }

        /* renamed from: b */
        public C0234a m38306b(int i) {
            this.f1403a.mo34589c(i);
            return this;
        }

        /* renamed from: c */
        public C0234a m38305c(int i) {
            this.f1403a.mo34591a(i);
            return this;
        }

        /* renamed from: d */
        public C0234a m38304d(int i) {
            this.f1403a.mo34588d(i);
            return this;
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f1400b = sparseIntArray;
        sparseIntArray.put(5, 1);
        f1400b.put(6, 2);
        f1400b.put(7, 2);
        f1400b.put(8, 1);
        f1400b.put(9, 1);
        f1400b.put(10, 1);
    }

    public AudioAttributesCompat() {
    }

    public AudioAttributesCompat(AbstractC1138a aVar) {
        this.f1402a = aVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static int m38312a(boolean z, int i, int i2) {
        int i3 = 1;
        if ((i & 1) == 1) {
            if (!z) {
                i3 = 7;
            }
            return i3;
        }
        int i4 = 0;
        if ((i & 4) == 4) {
            if (!z) {
                i4 = 6;
            }
            return i4;
        }
        int i5 = 0;
        switch (i2) {
            case 0:
            case 1:
            case 12:
            case 14:
            case 16:
                return 3;
            case 2:
                break;
            case 3:
                if (!z) {
                    i5 = 8;
                    break;
                } else {
                    i5 = 0;
                    break;
                }
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
        return i5;
    }

    /* renamed from: a */
    public static AudioAttributesCompat m38313a(Object obj) {
        if (f1401c) {
            return null;
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            return new AudioAttributesCompat(new AudioAttributesImplApi26((AudioAttributes) obj));
        }
        if (i >= 21) {
            return new AudioAttributesCompat(new AudioAttributesImplApi21((AudioAttributes) obj));
        }
        return null;
    }

    /* renamed from: a */
    public static String m38314a(int i) {
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
                return "unknown usage " + i;
            case 16:
                return "USAGE_ASSISTANT";
        }
    }

    /* renamed from: a */
    public int m38315a() {
        return this.f1402a.mo34596a();
    }

    /* renamed from: b */
    public int m38311b() {
        return this.f1402a.mo34595b();
    }

    /* renamed from: c */
    public int m38310c() {
        return this.f1402a.mo34594c();
    }

    /* renamed from: d */
    public int m38309d() {
        return this.f1402a.mo34593d();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof AudioAttributesCompat)) {
            return false;
        }
        AudioAttributesCompat audioAttributesCompat = (AudioAttributesCompat) obj;
        AbstractC1138a aVar = this.f1402a;
        if (aVar != null) {
            return aVar.equals(audioAttributesCompat.f1402a);
        }
        if (audioAttributesCompat.f1402a == null) {
            z = true;
        }
        return z;
    }

    public int hashCode() {
        return this.f1402a.hashCode();
    }

    public String toString() {
        return this.f1402a.toString();
    }
}
