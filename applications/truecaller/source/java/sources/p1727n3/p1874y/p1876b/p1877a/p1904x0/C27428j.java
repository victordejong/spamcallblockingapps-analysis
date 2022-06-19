package p1727n3.p1874y.p1876b.p1877a.p1904x0;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Objects;
/* renamed from: n3.y.b.a.x0.j */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/x0/j.class */
public final class C27428j {

    /* renamed from: a */
    public static final ArrayList<C27429a> f77175a = new ArrayList<>();

    /* renamed from: n3.y.b.a.x0.j$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/x0/j$a.class */
    public static final class C27429a {
    }

    /* renamed from: a */
    public static int m363a(String str) {
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
                return 8;
            case true:
                return 14;
            default:
                return 0;
        }
    }

    /* renamed from: b */
    public static String m362b(String str) {
        if (str == null) {
            return null;
        }
        String m288F = C27445x.m288F(str.trim());
        if (m288F.startsWith("avc1") || m288F.startsWith("avc3")) {
            return "video/avc";
        }
        if (m288F.startsWith("hev1") || m288F.startsWith("hvc1")) {
            return "video/hevc";
        }
        if (m288F.startsWith("dvav") || m288F.startsWith("dva1") || m288F.startsWith("dvhe") || m288F.startsWith("dvh1")) {
            return "video/dolby-vision";
        }
        if (m288F.startsWith("av01")) {
            return "video/av01";
        }
        if (m288F.startsWith("vp9") || m288F.startsWith("vp09")) {
            return "video/x-vnd.on2.vp9";
        }
        if (m288F.startsWith("vp8") || m288F.startsWith("vp08")) {
            return "video/x-vnd.on2.vp8";
        }
        if (m288F.startsWith("mp4a")) {
            String str2 = null;
            if (m288F.startsWith("mp4a.")) {
                String substring = m288F.substring(5);
                str2 = null;
                if (substring.length() >= 2) {
                    try {
                        str2 = m361c(Integer.parseInt(C27445x.m287G(substring.substring(0, 2)), 16));
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
        } else if (m288F.startsWith("ac-3") || m288F.startsWith("dac3")) {
            return "audio/ac3";
        } else {
            if (m288F.startsWith("ec-3") || m288F.startsWith("dec3")) {
                return "audio/eac3";
            }
            if (m288F.startsWith("ec+3")) {
                return "audio/eac3-joc";
            }
            if (m288F.startsWith("ac-4") || m288F.startsWith("dac4")) {
                return "audio/ac4";
            }
            if (m288F.startsWith("dtsc") || m288F.startsWith("dtse")) {
                return "audio/vnd.dts";
            }
            if (m288F.startsWith("dtsh") || m288F.startsWith("dtsl")) {
                return "audio/vnd.dts.hd";
            }
            if (m288F.startsWith("opus")) {
                return "audio/opus";
            }
            if (m288F.startsWith("vorbis")) {
                return "audio/vorbis";
            }
            if (m288F.startsWith("flac")) {
                return "audio/flac";
            }
            int size = f77175a.size();
            for (int i = 0; i < size; i++) {
                Objects.requireNonNull(f77175a.get(i));
                if (m288F.startsWith(null)) {
                    return null;
                }
            }
            return null;
        }
    }

    /* renamed from: c */
    public static String m361c(int i) {
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
    public static String m360d(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOf);
    }

    /* renamed from: e */
    public static int m359e(String str) {
        int i;
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (m358f(str)) {
            return 1;
        }
        if (m357g(str)) {
            return 2;
        }
        if ("text".equals(m360d(str)) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str)) {
            return 3;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str)) {
            return 4;
        }
        if ("application/x-camera-motion".equals(str)) {
            return 5;
        }
        int size = f77175a.size();
        int i2 = 0;
        while (true) {
            i = -1;
            if (i2 >= size) {
                break;
            }
            Objects.requireNonNull(f77175a.get(i2));
            if (str.equals(null)) {
                i = 0;
                break;
            }
            i2++;
        }
        return i;
    }

    /* renamed from: f */
    public static boolean m358f(String str) {
        return "audio".equals(m360d(str));
    }

    /* renamed from: g */
    public static boolean m357g(String str) {
        return "video".equals(m360d(str));
    }
}
