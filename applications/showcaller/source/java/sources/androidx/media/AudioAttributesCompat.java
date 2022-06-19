package androidx.media;

import android.util.SparseIntArray;
import androidx.versionedparcelable.AbstractC1179b;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompat.class */
public class AudioAttributesCompat implements AbstractC1179b {

    /* renamed from: a */
    private static final SparseIntArray f3777a;

    /* renamed from: b */
    private static final int[] f3778b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16};

    /* renamed from: c */
    public AudioAttributesImpl f3779c;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f3777a = sparseIntArray;
        sparseIntArray.put(5, 1);
        sparseIntArray.put(6, 2);
        sparseIntArray.put(7, 2);
        sparseIntArray.put(8, 1);
        sparseIntArray.put(9, 1);
        sparseIntArray.put(10, 1);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static int m32299a(boolean z, int i, int i2) {
        if ((i & 1) == 1) {
            return z ? 1 : 7;
        } else if ((i & 4) == 4) {
            return z ? 0 : 6;
        } else {
            int i3 = 0;
            switch (i2) {
                case 0:
                    int i4 = 3;
                    if (z) {
                        i4 = Integer.MIN_VALUE;
                    }
                    return i4;
                case 1:
                case 12:
                case 14:
                case 16:
                    return 3;
                case 2:
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
            return i3;
        }
    }

    /* renamed from: b */
    public static String m32298b(int i) {
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

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof AudioAttributesCompat)) {
            return false;
        }
        AudioAttributesCompat audioAttributesCompat = (AudioAttributesCompat) obj;
        AudioAttributesImpl audioAttributesImpl = this.f3779c;
        if (audioAttributesImpl != null) {
            return audioAttributesImpl.equals(audioAttributesCompat.f3779c);
        }
        if (audioAttributesCompat.f3779c == null) {
            z = true;
        }
        return z;
    }

    public int hashCode() {
        return this.f3779c.hashCode();
    }

    public String toString() {
        return this.f3779c.toString();
    }
}
