package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import java.util.ArrayList;
/* renamed from: com.google.android.exoplayer2.util.r */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/r.class */
public final class C5529r {

    /* renamed from: a */
    private static final ArrayList<C5530a> f17913a = new ArrayList<>();

    /* renamed from: com.google.android.exoplayer2.util.r$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/r$a.class */
    public static final class C5530a {

        /* renamed from: a */
        public final String f17914a;

        /* renamed from: b */
        public final String f17915b;

        /* renamed from: c */
        public final int f17916c;
    }

    /* renamed from: a */
    public static boolean m18736a(String str) {
        if (str == null) {
            return false;
        }
        boolean z = true;
        switch (str.hashCode()) {
            case -432837260:
                if (str.equals("audio/mpeg-L1")) {
                    z = false;
                    break;
                }
                break;
            case -432837259:
                if (str.equals("audio/mpeg-L2")) {
                    z = true;
                    break;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
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
        }
        switch (z) {
            case false:
            case true:
            case true:
            case true:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: b */
    public static String m18735b(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : C5515h0.m18814p0(str)) {
            String m18732e = m18732e(str2);
            if (m18732e != null && m18725l(m18732e)) {
                return m18732e;
            }
        }
        return null;
    }

    /* renamed from: c */
    private static String m18734c(String str) {
        int size = f17913a.size();
        for (int i = 0; i < size; i++) {
            C5530a c5530a = f17913a.get(i);
            if (str.startsWith(c5530a.f17915b)) {
                return c5530a.f17914a;
            }
        }
        return null;
    }

    /* renamed from: d */
    public static int m18733d(String str) {
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

    /* renamed from: e */
    public static String m18732e(String str) {
        if (str == null) {
            return null;
        }
        String m18804u0 = C5515h0.m18804u0(str.trim());
        if (m18804u0.startsWith("avc1") || m18804u0.startsWith("avc3")) {
            return "video/avc";
        }
        if (m18804u0.startsWith("hev1") || m18804u0.startsWith("hvc1")) {
            return "video/hevc";
        }
        if (m18804u0.startsWith("dvav") || m18804u0.startsWith("dva1") || m18804u0.startsWith("dvhe") || m18804u0.startsWith("dvh1")) {
            return "video/dolby-vision";
        }
        if (m18804u0.startsWith("av01")) {
            return "video/av01";
        }
        if (m18804u0.startsWith("vp9") || m18804u0.startsWith("vp09")) {
            return "video/x-vnd.on2.vp9";
        }
        if (m18804u0.startsWith("vp8") || m18804u0.startsWith("vp08")) {
            return "video/x-vnd.on2.vp8";
        }
        if (!m18804u0.startsWith("mp4a")) {
            return (m18804u0.startsWith("ac-3") || m18804u0.startsWith("dac3")) ? "audio/ac3" : (m18804u0.startsWith("ec-3") || m18804u0.startsWith("dec3")) ? "audio/eac3" : m18804u0.startsWith("ec+3") ? "audio/eac3-joc" : (m18804u0.startsWith("ac-4") || m18804u0.startsWith("dac4")) ? "audio/ac4" : (m18804u0.startsWith("dtsc") || m18804u0.startsWith("dtse")) ? "audio/vnd.dts" : (m18804u0.startsWith("dtsh") || m18804u0.startsWith("dtsl")) ? "audio/vnd.dts.hd" : m18804u0.startsWith("opus") ? "audio/opus" : m18804u0.startsWith("vorbis") ? "audio/vorbis" : m18804u0.startsWith("flac") ? "audio/flac" : m18734c(m18804u0);
        }
        String str2 = null;
        if (m18804u0.startsWith("mp4a.")) {
            String substring = m18804u0.substring(5);
            str2 = null;
            if (substring.length() >= 2) {
                try {
                    str2 = m18731f(Integer.parseInt(C5515h0.m18800w0(substring.substring(0, 2)), 16));
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

    /* renamed from: f */
    public static String m18731f(int i) {
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

    /* renamed from: g */
    private static String m18730g(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOf);
    }

    /* renamed from: h */
    public static int m18729h(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (m18725l(str)) {
            return 1;
        }
        if (m18723n(str)) {
            return 2;
        }
        if (m18724m(str) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str)) {
            return 3;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str)) {
            return 4;
        }
        if (!"application/x-camera-motion".equals(str)) {
            return m18728i(str);
        }
        return 5;
    }

    /* renamed from: i */
    private static int m18728i(String str) {
        int size = f17913a.size();
        for (int i = 0; i < size; i++) {
            C5530a c5530a = f17913a.get(i);
            if (str.equals(c5530a.f17914a)) {
                return c5530a.f17916c;
            }
        }
        return -1;
    }

    /* renamed from: j */
    public static int m18727j(String str) {
        return m18729h(m18732e(str));
    }

    /* renamed from: k */
    public static String m18726k(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : C5515h0.m18814p0(str)) {
            String m18732e = m18732e(str2);
            if (m18732e != null && m18723n(m18732e)) {
                return m18732e;
            }
        }
        return null;
    }

    /* renamed from: l */
    public static boolean m18725l(String str) {
        return "audio".equals(m18730g(str));
    }

    /* renamed from: m */
    public static boolean m18724m(String str) {
        return "text".equals(m18730g(str));
    }

    /* renamed from: n */
    public static boolean m18723n(String str) {
        return "video".equals(m18730g(str));
    }
}
