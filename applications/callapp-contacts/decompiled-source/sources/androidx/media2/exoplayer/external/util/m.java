package androidx.media2.exoplayer.external.util;

import android.text.TextUtils;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/m.class */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private static final ArrayList<a> f4147a = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/m$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f4148a;

        /* renamed from: b  reason: collision with root package name */
        public final String f4149b;

        /* renamed from: c  reason: collision with root package name */
        public final int f4150c;

        public a(String str, String str2, int i) {
            this.f4148a = str;
            this.f4149b = str2;
            this.f4150c = i;
        }
    }

    private m() {
    }

    public static String a(int i) {
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

    public static boolean a(String str) {
        return "audio".equals(j(str));
    }

    public static boolean b(String str) {
        return "video".equals(j(str));
    }

    public static boolean c(String str) {
        return "text".equals(j(str));
    }

    public static String d(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : ac.h(str)) {
            String f = f(str2);
            if (f != null && b(f)) {
                return f;
            }
        }
        return null;
    }

    public static String e(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : ac.h(str)) {
            String f = f(str2);
            if (f != null && a(f)) {
                return f;
            }
        }
        return null;
    }

    public static String f(String str) {
        if (str == null) {
            return null;
        }
        String d2 = ac.d(str.trim());
        if (d2.startsWith("avc1") || d2.startsWith("avc3")) {
            return "video/avc";
        }
        if (d2.startsWith("hev1") || d2.startsWith("hvc1")) {
            return "video/hevc";
        }
        if (d2.startsWith("dvav") || d2.startsWith("dva1") || d2.startsWith("dvhe") || d2.startsWith("dvh1")) {
            return "video/dolby-vision";
        }
        if (d2.startsWith("av01")) {
            return "video/av01";
        }
        if (d2.startsWith("vp9") || d2.startsWith("vp09")) {
            return "video/x-vnd.on2.vp9";
        }
        if (d2.startsWith("vp8") || d2.startsWith("vp08")) {
            return "video/x-vnd.on2.vp8";
        }
        if (d2.startsWith("mp4a")) {
            String str2 = null;
            if (d2.startsWith("mp4a.")) {
                String substring = d2.substring(5);
                str2 = null;
                if (substring.length() >= 2) {
                    try {
                        str2 = a(Integer.parseInt(ac.e(substring.substring(0, 2)), 16));
                    } catch (NumberFormatException e) {
                        str2 = null;
                    }
                }
            }
            return str2 == null ? "audio/mp4a-latm" : str2;
        } else if (d2.startsWith("ac-3") || d2.startsWith("dac3")) {
            return "audio/ac3";
        } else {
            if (d2.startsWith("ec-3") || d2.startsWith("dec3")) {
                return "audio/eac3";
            }
            if (d2.startsWith("ec+3")) {
                return "audio/eac3-joc";
            }
            if (d2.startsWith("ac-4") || d2.startsWith("dac4")) {
                return "audio/ac4";
            }
            if (d2.startsWith("dtsc") || d2.startsWith("dtse")) {
                return "audio/vnd.dts";
            }
            if (d2.startsWith("dtsh") || d2.startsWith("dtsl")) {
                return "audio/vnd.dts.hd";
            }
            if (d2.startsWith("opus")) {
                return "audio/opus";
            }
            if (d2.startsWith("vorbis")) {
                return "audio/vorbis";
            }
            if (d2.startsWith("flac")) {
                return "audio/flac";
            }
            int size = f4147a.size();
            for (int i = 0; i < size; i++) {
                a aVar = f4147a.get(i);
                if (d2.startsWith(aVar.f4149b)) {
                    return aVar.f4148a;
                }
            }
            return null;
        }
    }

    public static int g(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (a(str)) {
            return 1;
        }
        if (b(str)) {
            return 2;
        }
        if (c(str) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str)) {
            return 3;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str)) {
            return 4;
        }
        if ("application/x-camera-motion".equals(str)) {
            return 5;
        }
        int size = f4147a.size();
        for (int i = 0; i < size; i++) {
            a aVar = f4147a.get(i);
            if (str.equals(aVar.f4148a)) {
                return aVar.f4150c;
            }
        }
        return -1;
    }

    public static int h(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1095064472:
                if (str.equals("audio/vnd.dts")) {
                    c2 = 1;
                    break;
                }
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c2 = 2;
                    break;
                }
                break;
            case 187078297:
                if (str.equals("audio/ac4")) {
                    c2 = 3;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c2 = 4;
                    break;
                }
                break;
            case 1505942594:
                if (str.equals("audio/vnd.dts.hd")) {
                    c2 = 5;
                    break;
                }
                break;
            case 1556697186:
                if (str.equals("audio/true-hd")) {
                    c2 = 6;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 18;
            case 1:
                return 7;
            case 2:
                return 5;
            case 3:
                return 17;
            case 4:
                return 6;
            case 5:
                return 8;
            case 6:
                return 14;
            default:
                return 0;
        }
    }

    public static int i(String str) {
        return g(f(str));
    }

    private static String j(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOf);
    }
}
