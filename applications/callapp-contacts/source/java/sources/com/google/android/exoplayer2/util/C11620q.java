package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import com.google.android.exoplayer2.audio.C10880a;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.exoplayer2.util.q */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/q.class */
public final class C11620q {

    /* renamed from: a */
    private static final ArrayList<C11621a> f38701a = new ArrayList<>();

    /* renamed from: b */
    private static final Pattern f38702b = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    /* renamed from: com.google.android.exoplayer2.util.q$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/q$a.class */
    public static final class C11621a {

        /* renamed from: a */
        public final String f38703a;

        /* renamed from: b */
        public final String f38704b;

        /* renamed from: c */
        public final int f38705c;

        public C11621a(String str, String str2, int i) {
            this.f38703a = str;
            this.f38704b = str2;
            this.f38705c = i;
        }
    }

    /* renamed from: com.google.android.exoplayer2.util.q$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/q$b.class */
    public static final class C11622b {

        /* renamed from: a */
        public final int f38706a;

        /* renamed from: b */
        public final int f38707b;

        public C11622b(int i, int i2) {
            this.f38706a = i;
            this.f38707b = i2;
        }
    }

    private C11620q() {
    }

    /* renamed from: a */
    public static String m19854a(int i) {
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
    public static boolean m19853a(String str) {
        return "audio".equals(m19842j(str));
    }

    /* renamed from: a */
    public static boolean m19852a(String str, String str2) {
        C11622b m19840l;
        int m22091a;
        if (str == null) {
            return false;
        }
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    z = false;
                    break;
                }
                break;
            case -432837260:
                if (str.equals("audio/mpeg-L1")) {
                    z = true;
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
            case 187078296:
                if (str.equals("audio/ac3")) {
                    z = true;
                    break;
                }
                break;
            case 187094639:
                if (str.equals("audio/raw")) {
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
            case 1504619009:
                if (str.equals("audio/flac")) {
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
            case 1903231877:
                if (str.equals("audio/g711-alaw")) {
                    z = true;
                    break;
                }
                break;
            case 1903589369:
                if (str.equals("audio/g711-mlaw")) {
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
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
                return true;
            case true:
                return (str2 == null || (m19840l = m19840l(str2)) == null || (m22091a = C10880a.m22091a(m19840l.f38707b)) == 0 || m22091a == 16) ? false : true;
            default:
                return false;
        }
    }

    /* renamed from: b */
    public static int m19850b(String str, String str2) {
        C11622b m19840l;
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
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
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
                if (str2 != null && (m19840l = m19840l(str2)) != null) {
                    return C10880a.m22091a(m19840l.f38707b);
                }
                return 0;
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
    public static boolean m19851b(String str) {
        return "video".equals(m19842j(str));
    }

    /* renamed from: c */
    public static boolean m19849c(String str) {
        return "text".equals(m19842j(str)) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str);
    }

    /* renamed from: d */
    public static String m19848d(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : C11599af.m19924e(str)) {
            String m19846f = m19846f(str2);
            if (m19846f != null && m19851b(m19846f)) {
                return m19846f;
            }
        }
        return null;
    }

    /* renamed from: e */
    public static String m19847e(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : C11599af.m19924e(str)) {
            String m19846f = m19846f(str2);
            if (m19846f != null && m19853a(m19846f)) {
                return m19846f;
            }
        }
        return null;
    }

    /* renamed from: f */
    public static String m19846f(String str) {
        if (str == null) {
            return null;
        }
        String m19927d = C11599af.m19927d(str.trim());
        if (m19927d.startsWith("avc1") || m19927d.startsWith("avc3")) {
            return "video/avc";
        }
        if (m19927d.startsWith("hev1") || m19927d.startsWith("hvc1")) {
            return "video/hevc";
        }
        if (m19927d.startsWith("dvav") || m19927d.startsWith("dva1") || m19927d.startsWith("dvhe") || m19927d.startsWith("dvh1")) {
            return "video/dolby-vision";
        }
        if (m19927d.startsWith("av01")) {
            return "video/av01";
        }
        if (m19927d.startsWith("vp9") || m19927d.startsWith("vp09")) {
            return "video/x-vnd.on2.vp9";
        }
        if (m19927d.startsWith("vp8") || m19927d.startsWith("vp08")) {
            return "video/x-vnd.on2.vp8";
        }
        if (!m19927d.startsWith("mp4a")) {
            return (m19927d.startsWith("ac-3") || m19927d.startsWith("dac3")) ? "audio/ac3" : (m19927d.startsWith("ec-3") || m19927d.startsWith("dec3")) ? "audio/eac3" : m19927d.startsWith("ec+3") ? "audio/eac3-joc" : (m19927d.startsWith("ac-4") || m19927d.startsWith("dac4")) ? "audio/ac4" : (m19927d.startsWith("dtsc") || m19927d.startsWith("dtse")) ? "audio/vnd.dts" : (m19927d.startsWith("dtsh") || m19927d.startsWith("dtsl")) ? "audio/vnd.dts.hd" : m19927d.startsWith("opus") ? "audio/opus" : m19927d.startsWith("vorbis") ? "audio/vorbis" : m19927d.startsWith("flac") ? "audio/flac" : m19927d.startsWith("stpp") ? "application/ttml+xml" : m19927d.startsWith("wvtt") ? "text/vtt" : m19927d.contains("cea708") ? "application/cea-708" : (m19927d.contains("eia608") || m19927d.contains("cea608")) ? "application/cea-608" : m19841k(m19927d);
        }
        String str2 = null;
        if (m19927d.startsWith("mp4a.")) {
            C11622b m19840l = m19840l(m19927d);
            str2 = null;
            if (m19840l != null) {
                str2 = m19854a(m19840l.f38706a);
            }
        }
        return str2 == null ? "audio/mp4a-latm" : str2;
    }

    /* renamed from: g */
    public static int m19845g(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (m19853a(str)) {
            return 1;
        }
        if (m19851b(str)) {
            return 2;
        }
        if (m19849c(str)) {
            return 3;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str)) {
            return 5;
        }
        if ("application/x-camera-motion".equals(str)) {
            return 6;
        }
        int size = f38701a.size();
        for (int i = 0; i < size; i++) {
            C11621a c11621a = f38701a.get(i);
            if (str.equals(c11621a.f38703a)) {
                return c11621a.f38705c;
            }
        }
        return -1;
    }

    /* renamed from: h */
    public static int m19844h(String str) {
        return m19845g(m19846f(str));
    }

    /* renamed from: i */
    public static String m19843i(String str) {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1007807498:
                if (str.equals("audio/x-flac")) {
                    z = false;
                    break;
                }
                break;
            case -586683234:
                if (str.equals("audio/x-wav")) {
                    z = true;
                    break;
                }
                break;
            case 187090231:
                if (str.equals("audio/mp3")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return "audio/flac";
            case true:
                return "audio/wav";
            case true:
                return "audio/mpeg";
            default:
                return str;
        }
    }

    /* renamed from: j */
    private static String m19842j(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOf);
    }

    /* renamed from: k */
    private static String m19841k(String str) {
        int size = f38701a.size();
        for (int i = 0; i < size; i++) {
            C11621a c11621a = f38701a.get(i);
            if (str.startsWith(c11621a.f38704b)) {
                return c11621a.f38703a;
            }
        }
        return null;
    }

    /* renamed from: l */
    private static C11622b m19840l(String str) {
        Matcher matcher = f38702b.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String str2 = (String) C11593a.m20020b(matcher.group(1));
        String group = matcher.group(2);
        int i = 0;
        try {
            int parseInt = Integer.parseInt(str2, 16);
            if (group != null) {
                i = Integer.parseInt(group);
            }
            return new C11622b(parseInt, i);
        } catch (NumberFormatException e) {
            return null;
        }
    }
}
