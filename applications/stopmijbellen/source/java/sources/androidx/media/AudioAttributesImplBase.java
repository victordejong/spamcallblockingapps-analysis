package androidx.media;

import java.util.Arrays;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBase.class */
class AudioAttributesImplBase implements AudioAttributesImpl {

    /* renamed from: a */
    public int f2090a = 0;

    /* renamed from: b */
    public int f2091b = 0;

    /* renamed from: c */
    public int f2092c = 0;

    /* renamed from: d */
    public int f2093d = -1;

    public boolean equals(Object obj) {
        int i;
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        boolean z = false;
        if (this.f2091b == audioAttributesImplBase.f2091b) {
            int i2 = this.f2092c;
            int i3 = audioAttributesImplBase.f2092c;
            int i4 = audioAttributesImplBase.f2093d;
            int i5 = 4;
            if (i4 == -1) {
                int i6 = audioAttributesImplBase.f2090a;
                int i7 = AudioAttributesCompat.f2086b;
                if ((i3 & 1) != 1) {
                    if ((i3 & 4) != 4) {
                        switch (i6) {
                            case 2:
                                i5 = 0;
                                break;
                            case 3:
                                i5 = 8;
                                break;
                            case 4:
                                break;
                            case 5:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                                i5 = 5;
                                break;
                            case 6:
                                i5 = 2;
                                break;
                            case 11:
                                i5 = 10;
                                break;
                            case 12:
                            default:
                                i5 = 3;
                                break;
                            case 13:
                                i5 = 1;
                                break;
                        }
                    } else {
                        i5 = 6;
                    }
                } else {
                    i5 = 7;
                }
            } else {
                i5 = i4;
            }
            if (i5 == 6) {
                i = i3 | 4;
            } else {
                i = i3;
                if (i5 == 7) {
                    i = i3 | 1;
                }
            }
            z = false;
            if (i2 == (i & 273)) {
                z = false;
                if (this.f2090a == audioAttributesImplBase.f2090a) {
                    z = false;
                    if (this.f2093d == i4) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f2091b), Integer.valueOf(this.f2092c), Integer.valueOf(this.f2090a), Integer.valueOf(this.f2093d)});
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f2093d != -1) {
            sb.append(" stream=");
            sb.append(this.f2093d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        int i = this.f2090a;
        int i2 = AudioAttributesCompat.f2086b;
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
                str = C0033h.m8886k("unknown usage ", i);
                break;
            case 16:
                str = "USAGE_ASSISTANT";
                break;
        }
        sb.append(str);
        sb.append(" content=");
        sb.append(this.f2091b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f2092c).toUpperCase());
        return sb.toString();
    }
}
