package p193e.p1577m.p1578a.p1596c.p1636q1;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Objects;
/* renamed from: e.m.a.c.q1.q */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/q.class */
public final class C24792q {

    /* renamed from: a */
    public static final ArrayList<C24793a> f69479a = new ArrayList<>();

    /* renamed from: e.m.a.c.q1.q$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/q$a.class */
    public static final class C24793a {
    }

    /* renamed from: a */
    public static int m4573a(String str) {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    z = false;
                    break;
                }
                break;
            case -1095064472:
                if (str.equals("audio/vnd.dts")) {
                    z = true;
                    break;
                }
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    z = true;
                    break;
                }
                break;
            case 187078297:
                if (str.equals("audio/ac4")) {
                    z = true;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    z = true;
                    break;
                }
                break;
            case 1504831518:
                if (str.equals("audio/mpeg")) {
                    z = true;
                    break;
                }
                break;
            case 1505942594:
                if (str.equals("audio/vnd.dts.hd")) {
                    z = true;
                    break;
                }
                break;
            case 1556697186:
                if (str.equals("audio/true-hd")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return 18;
            case true:
                return 7;
            case true:
                return 5;
            case true:
                return 17;
            case true:
                return 6;
            case true:
                return 9;
            case true:
                return 8;
            case true:
                return 14;
            default:
                return 0;
        }
    }

    /* renamed from: b */
    public static String m4572b(String str) {
        if (str == null) {
            return null;
        }
        String m4626D = C24773d0.m4626D(str.trim());
        if (m4626D.startsWith("avc1") || m4626D.startsWith("avc3")) {
            return "video/avc";
        }
        if (m4626D.startsWith("hev1") || m4626D.startsWith("hvc1")) {
            return "video/hevc";
        }
        if (m4626D.startsWith("dvav") || m4626D.startsWith("dva1") || m4626D.startsWith("dvhe") || m4626D.startsWith("dvh1")) {
            return "video/dolby-vision";
        }
        if (m4626D.startsWith("av01")) {
            return "video/av01";
        }
        if (m4626D.startsWith("vp9") || m4626D.startsWith("vp09")) {
            return "video/x-vnd.on2.vp9";
        }
        if (m4626D.startsWith("vp8") || m4626D.startsWith("vp08")) {
            return "video/x-vnd.on2.vp8";
        }
        if (m4626D.startsWith("mp4a")) {
            String str2 = null;
            if (m4626D.startsWith("mp4a.")) {
                String substring = m4626D.substring(5);
                str2 = null;
                if (substring.length() >= 2) {
                    try {
                        str2 = m4571c(Integer.parseInt(C24773d0.m4624F(substring.substring(0, 2)), 16));
                    } catch (NumberFormatException e) {
                        str2 = null;
                    }
                }
            }
            String str3 = str2;
            if (str2 == null) {
                str3 = "audio/mp4a-latm";
            }
            return str3;
        } else if (m4626D.startsWith("ac-3") || m4626D.startsWith("dac3")) {
            return "audio/ac3";
        } else {
            if (m4626D.startsWith("ec-3") || m4626D.startsWith("dec3")) {
                return "audio/eac3";
            }
            if (m4626D.startsWith("ec+3")) {
                return "audio/eac3-joc";
            }
            if (m4626D.startsWith("ac-4") || m4626D.startsWith("dac4")) {
                return "audio/ac4";
            }
            if (m4626D.startsWith("dtsc") || m4626D.startsWith("dtse")) {
                return "audio/vnd.dts";
            }
            if (m4626D.startsWith("dtsh") || m4626D.startsWith("dtsl")) {
                return "audio/vnd.dts.hd";
            }
            if (m4626D.startsWith("opus")) {
                return "audio/opus";
            }
            if (m4626D.startsWith("vorbis")) {
                return "audio/vorbis";
            }
            if (m4626D.startsWith("flac")) {
                return "audio/flac";
            }
            if (m4626D.startsWith("stpp")) {
                return "application/ttml+xml";
            }
            if (m4626D.startsWith("wvtt")) {
                return "text/vtt";
            }
            int size = f69479a.size();
            for (int i = 0; i < size; i++) {
                Objects.requireNonNull(f69479a.get(i));
                if (m4626D.startsWith(null)) {
                    return null;
                }
            }
            return null;
        }
    }

    /* renamed from: c */
    public static String m4571c(int i) {
        if (i != 32) {
            if (i == 33) {
                return "video/avc";
            }
            if (i == 35) {
                return "video/hevc";
            }
            if (i == 64) {
                return "audio/mp4a-latm";
            }
            if (i == 163) {
                return "video/wvc1";
            }
            if (i == 177) {
                return "video/x-vnd.on2.vp9";
            }
            if (i == 165) {
                return "audio/ac3";
            }
            if (i == 166) {
                return "audio/eac3";
            }
            switch (i) {
                case 96:
                case 97:
                case 98:
                case 99:
                case 100:
                case 101:
                    return "video/mpeg2";
                case 102:
                case 103:
                case 104:
                    return "audio/mp4a-latm";
                case 105:
                case 107:
                    return "audio/mpeg";
                case 106:
                    return "video/mpeg";
                default:
                    switch (i) {
                        case 169:
                        case 172:
                            return "audio/vnd.dts";
                        case 170:
                        case 171:
                            return "audio/vnd.dts.hd";
                        case 173:
                            return "audio/opus";
                        case 174:
                            return "audio/ac4";
                        default:
                            return null;
                    }
            }
        }
        return "video/mp4v-es";
    }

    /* renamed from: d */
    public static String m4570d(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOf);
    }

    /* renamed from: e */
    public static int m4569e(String str) {
        int i;
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (m4568f(str)) {
            return 1;
        }
        if (m4567g(str)) {
            return 2;
        }
        if ("text".equals(m4570d(str)) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str)) {
            return 3;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str)) {
            return 4;
        }
        if ("application/x-camera-motion".equals(str)) {
            return 5;
        }
        int size = f69479a.size();
        int i2 = 0;
        while (true) {
            i = -1;
            if (i2 >= size) {
                break;
            }
            Objects.requireNonNull(f69479a.get(i2));
            if (str.equals(null)) {
                i = 0;
                break;
            }
            i2++;
        }
        return i;
    }

    /* renamed from: f */
    public static boolean m4568f(String str) {
        return "audio".equals(m4570d(str));
    }

    /* renamed from: g */
    public static boolean m4567g(String str) {
        return "video".equals(m4570d(str));
    }
}
