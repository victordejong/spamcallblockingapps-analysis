package androidx.media2.exoplayer.external.util;

import android.text.TextUtils;
import java.util.ArrayList;
/* renamed from: androidx.media2.exoplayer.external.util.m */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/m.class */
public final class C2012m {

    /* renamed from: a */
    private static final ArrayList<C2013a> f8103a = new ArrayList<>();

    /* renamed from: androidx.media2.exoplayer.external.util.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/m$a.class */
    public static final class C2013a {

        /* renamed from: a */
        public final String f8104a;

        /* renamed from: b */
        public final String f8105b;

        /* renamed from: c */
        public final int f8106c;

        public C2013a(String str, String str2, int i) {
            this.f8104a = str;
            this.f8105b = str2;
            this.f8106c = i;
        }
    }

    private C2012m() {
    }

    /* renamed from: a */
    public static String m41575a(int i) {
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

    /* renamed from: a */
    public static boolean m41574a(String str) {
        return "audio".equals(m41565j(str));
    }

    /* renamed from: b */
    public static boolean m41573b(String str) {
        return "video".equals(m41565j(str));
    }

    /* renamed from: c */
    public static boolean m41572c(String str) {
        return "text".equals(m41565j(str));
    }

    /* renamed from: d */
    public static String m41571d(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : C1996ac.m41614h(str)) {
            String m41569f = m41569f(str2);
            if (m41569f != null && m41573b(m41569f)) {
                return m41569f;
            }
        }
        return null;
    }

    /* renamed from: e */
    public static String m41570e(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : C1996ac.m41614h(str)) {
            String m41569f = m41569f(str2);
            if (m41569f != null && m41574a(m41569f)) {
                return m41569f;
            }
        }
        return null;
    }

    /* renamed from: f */
    public static String m41569f(String str) {
        if (str == null) {
            return null;
        }
        String m41620d = C1996ac.m41620d(str.trim());
        if (m41620d.startsWith("avc1") || m41620d.startsWith("avc3")) {
            return "video/avc";
        }
        if (m41620d.startsWith("hev1") || m41620d.startsWith("hvc1")) {
            return "video/hevc";
        }
        if (m41620d.startsWith("dvav") || m41620d.startsWith("dva1") || m41620d.startsWith("dvhe") || m41620d.startsWith("dvh1")) {
            return "video/dolby-vision";
        }
        if (m41620d.startsWith("av01")) {
            return "video/av01";
        }
        if (m41620d.startsWith("vp9") || m41620d.startsWith("vp09")) {
            return "video/x-vnd.on2.vp9";
        }
        if (m41620d.startsWith("vp8") || m41620d.startsWith("vp08")) {
            return "video/x-vnd.on2.vp8";
        }
        if (m41620d.startsWith("mp4a")) {
            String str2 = null;
            if (m41620d.startsWith("mp4a.")) {
                String substring = m41620d.substring(5);
                str2 = null;
                if (substring.length() >= 2) {
                    try {
                        str2 = m41575a(Integer.parseInt(C1996ac.m41618e(substring.substring(0, 2)), 16));
                    } catch (NumberFormatException e) {
                        str2 = null;
                    }
                }
            }
            return str2 == null ? "audio/mp4a-latm" : str2;
        } else if (m41620d.startsWith("ac-3") || m41620d.startsWith("dac3")) {
            return "audio/ac3";
        } else {
            if (m41620d.startsWith("ec-3") || m41620d.startsWith("dec3")) {
                return "audio/eac3";
            }
            if (m41620d.startsWith("ec+3")) {
                return "audio/eac3-joc";
            }
            if (m41620d.startsWith("ac-4") || m41620d.startsWith("dac4")) {
                return "audio/ac4";
            }
            if (m41620d.startsWith("dtsc") || m41620d.startsWith("dtse")) {
                return "audio/vnd.dts";
            }
            if (m41620d.startsWith("dtsh") || m41620d.startsWith("dtsl")) {
                return "audio/vnd.dts.hd";
            }
            if (m41620d.startsWith("opus")) {
                return "audio/opus";
            }
            if (m41620d.startsWith("vorbis")) {
                return "audio/vorbis";
            }
            if (m41620d.startsWith("flac")) {
                return "audio/flac";
            }
            int size = f8103a.size();
            for (int i = 0; i < size; i++) {
                C2013a c2013a = f8103a.get(i);
                if (m41620d.startsWith(c2013a.f8105b)) {
                    return c2013a.f8104a;
                }
            }
            return null;
        }
    }

    /* renamed from: g */
    public static int m41568g(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (m41574a(str)) {
            return 1;
        }
        if (m41573b(str)) {
            return 2;
        }
        if (m41572c(str) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str)) {
            return 3;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str)) {
            return 4;
        }
        if ("application/x-camera-motion".equals(str)) {
            return 5;
        }
        int size = f8103a.size();
        for (int i = 0; i < size; i++) {
            C2013a c2013a = f8103a.get(i);
            if (str.equals(c2013a.f8104a)) {
                return c2013a.f8106c;
            }
        }
        return -1;
    }

    /* renamed from: h */
    public static int m41567h(String str) {
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

    /* renamed from: i */
    public static int m41566i(String str) {
        return m41568g(m41569f(str));
    }

    /* renamed from: j */
    private static String m41565j(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOf);
    }
}
