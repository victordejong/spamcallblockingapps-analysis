package p131c.p161d.p170b.p188c.p203g1;

import android.text.TextUtils;
import java.util.ArrayList;
/* renamed from: c.d.b.c.g1.r */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/r.class */
public final class C2897r {

    /* renamed from: a */
    public static final ArrayList<C2898a> f10502a = new ArrayList<>();

    /* renamed from: c.d.b.c.g1.r$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/g1/r$a.class */
    public static final class C2898a {

        /* renamed from: a */
        public final String f10503a;

        /* renamed from: b */
        public final String f10504b;

        /* renamed from: c */
        public final int f10505c;
    }

    /* renamed from: a */
    public static String m28590a(int i) {
        if (i == 32) {
            return "video/mp4v-es";
        }
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

    /* renamed from: a */
    public static String m28589a(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : C2885h0.m28631e(str)) {
            String d = m28586d(str2);
            if (d != null && m28581i(d)) {
                return d;
            }
        }
        return null;
    }

    /* renamed from: b */
    public static String m28588b(String str) {
        int size = f10502a.size();
        for (int i = 0; i < size; i++) {
            C2898a aVar = f10502a.get(i);
            if (str.startsWith(aVar.f10504b)) {
                return aVar.f10503a;
            }
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: c */
    public static int m28587c(String str) {
        char c;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1095064472:
                if (str.equals("audio/vnd.dts")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 187078297:
                if (str.equals("audio/ac4")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1505942594:
                if (str.equals("audio/vnd.dts.hd")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1556697186:
                if (str.equals("audio/true-hd")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return 5;
            case 1:
                return 6;
            case 2:
                return 18;
            case 3:
                return 17;
            case 4:
                return 7;
            case 5:
                return 8;
            case 6:
                return 14;
            default:
                return 0;
        }
    }

    /* renamed from: d */
    public static String m28586d(String str) {
        if (str == null) {
            return null;
        }
        String f = C2885h0.m28629f(str.trim());
        if (f.startsWith("avc1") || f.startsWith("avc3")) {
            return "video/avc";
        }
        if (f.startsWith("hev1") || f.startsWith("hvc1")) {
            return "video/hevc";
        }
        if (f.startsWith("dvav") || f.startsWith("dva1") || f.startsWith("dvhe") || f.startsWith("dvh1")) {
            return "video/dolby-vision";
        }
        if (f.startsWith("av01")) {
            return "video/av01";
        }
        if (f.startsWith("vp9") || f.startsWith("vp09")) {
            return "video/x-vnd.on2.vp9";
        }
        if (f.startsWith("vp8") || f.startsWith("vp08")) {
            return "video/x-vnd.on2.vp8";
        }
        if (!f.startsWith("mp4a")) {
            return (f.startsWith("ac-3") || f.startsWith("dac3")) ? "audio/ac3" : (f.startsWith("ec-3") || f.startsWith("dec3")) ? "audio/eac3" : f.startsWith("ec+3") ? "audio/eac3-joc" : (f.startsWith("ac-4") || f.startsWith("dac4")) ? "audio/ac4" : (f.startsWith("dtsc") || f.startsWith("dtse")) ? "audio/vnd.dts" : (f.startsWith("dtsh") || f.startsWith("dtsl")) ? "audio/vnd.dts.hd" : f.startsWith("opus") ? "audio/opus" : f.startsWith("vorbis") ? "audio/vorbis" : f.startsWith("flac") ? "audio/flac" : m28588b(f);
        }
        String str2 = null;
        if (f.startsWith("mp4a.")) {
            String substring = f.substring(5);
            str2 = null;
            if (substring.length() >= 2) {
                try {
                    str2 = m28590a(Integer.parseInt(C2885h0.m28628g(substring.substring(0, 2)), 16));
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
    }

    /* renamed from: e */
    public static String m28585e(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOf);
    }

    /* renamed from: f */
    public static int m28584f(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (m28581i(str)) {
            return 1;
        }
        if (m28579k(str)) {
            return 2;
        }
        if (m28580j(str) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str)) {
            return 3;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str)) {
            return 4;
        }
        if ("application/x-camera-motion".equals(str)) {
            return 5;
        }
        return m28583g(str);
    }

    /* renamed from: g */
    public static int m28583g(String str) {
        int size = f10502a.size();
        for (int i = 0; i < size; i++) {
            C2898a aVar = f10502a.get(i);
            if (str.equals(aVar.f10503a)) {
                return aVar.f10505c;
            }
        }
        return -1;
    }

    /* renamed from: h */
    public static String m28582h(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : C2885h0.m28631e(str)) {
            String d = m28586d(str2);
            if (d != null && m28579k(d)) {
                return d;
            }
        }
        return null;
    }

    /* renamed from: i */
    public static boolean m28581i(String str) {
        return "audio".equals(m28585e(str));
    }

    /* renamed from: j */
    public static boolean m28580j(String str) {
        return "text".equals(m28585e(str));
    }

    /* renamed from: k */
    public static boolean m28579k(String str) {
        return "video".equals(m28585e(str));
    }
}
