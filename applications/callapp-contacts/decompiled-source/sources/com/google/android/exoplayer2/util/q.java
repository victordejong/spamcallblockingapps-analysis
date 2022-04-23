package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/q.class */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    private static final ArrayList<a> f22312a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f22313b = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/q$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f22314a;

        /* renamed from: b  reason: collision with root package name */
        public final String f22315b;

        /* renamed from: c  reason: collision with root package name */
        public final int f22316c;

        public a(String str, String str2, int i) {
            this.f22314a = str;
            this.f22315b = str2;
            this.f22316c = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/q$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f22317a;

        /* renamed from: b  reason: collision with root package name */
        public final int f22318b;

        public b(int i, int i2) {
            this.f22317a = i;
            this.f22318b = i2;
        }
    }

    private q() {
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

    public static boolean a(String str, String str2) {
        b l;
        int a2;
        if (str == null) {
            return false;
        }
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    c2 = 0;
                    break;
                }
                break;
            case -432837260:
                if (str.equals("audio/mpeg-L1")) {
                    c2 = 1;
                    break;
                }
                break;
            case -432837259:
                if (str.equals("audio/mpeg-L2")) {
                    c2 = 2;
                    break;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    c2 = 3;
                    break;
                }
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c2 = 4;
                    break;
                }
                break;
            case 187094639:
                if (str.equals("audio/raw")) {
                    c2 = 5;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c2 = 6;
                    break;
                }
                break;
            case 1504619009:
                if (str.equals("audio/flac")) {
                    c2 = 7;
                    break;
                }
                break;
            case 1504831518:
                if (str.equals("audio/mpeg")) {
                    c2 = '\b';
                    break;
                }
                break;
            case 1903231877:
                if (str.equals("audio/g711-alaw")) {
                    c2 = '\t';
                    break;
                }
                break;
            case 1903589369:
                if (str.equals("audio/g711-mlaw")) {
                    c2 = '\n';
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
            case 1:
            case 2:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
                return true;
            case 3:
                return (str2 == null || (l = l(str2)) == null || (a2 = com.google.android.exoplayer2.audio.a.a(l.f22318b)) == 0 || a2 == 16) ? false : true;
            default:
                return false;
        }
    }

    public static int b(String str, String str2) {
        b l;
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
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    c2 = 2;
                    break;
                }
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c2 = 3;
                    break;
                }
                break;
            case 187078297:
                if (str.equals("audio/ac4")) {
                    c2 = 4;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c2 = 5;
                    break;
                }
                break;
            case 1504831518:
                if (str.equals("audio/mpeg")) {
                    c2 = 6;
                    break;
                }
                break;
            case 1505942594:
                if (str.equals("audio/vnd.dts.hd")) {
                    c2 = 7;
                    break;
                }
                break;
            case 1556697186:
                if (str.equals("audio/true-hd")) {
                    c2 = '\b';
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
                if (str2 == null || (l = l(str2)) == null) {
                    return 0;
                }
                return com.google.android.exoplayer2.audio.a.a(l.f22318b);
            case 3:
                return 5;
            case 4:
                return 17;
            case 5:
                return 6;
            case 6:
                return 9;
            case 7:
                return 8;
            case '\b':
                return 14;
            default:
                return 0;
        }
    }

    public static boolean b(String str) {
        return "video".equals(j(str));
    }

    public static boolean c(String str) {
        return "text".equals(j(str)) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str);
    }

    public static String d(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : af.e(str)) {
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
        for (String str2 : af.e(str)) {
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
        String d2 = af.d(str.trim());
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
        if (!d2.startsWith("mp4a")) {
            return (d2.startsWith("ac-3") || d2.startsWith("dac3")) ? "audio/ac3" : (d2.startsWith("ec-3") || d2.startsWith("dec3")) ? "audio/eac3" : d2.startsWith("ec+3") ? "audio/eac3-joc" : (d2.startsWith("ac-4") || d2.startsWith("dac4")) ? "audio/ac4" : (d2.startsWith("dtsc") || d2.startsWith("dtse")) ? "audio/vnd.dts" : (d2.startsWith("dtsh") || d2.startsWith("dtsl")) ? "audio/vnd.dts.hd" : d2.startsWith("opus") ? "audio/opus" : d2.startsWith("vorbis") ? "audio/vorbis" : d2.startsWith("flac") ? "audio/flac" : d2.startsWith("stpp") ? "application/ttml+xml" : d2.startsWith("wvtt") ? "text/vtt" : d2.contains("cea708") ? "application/cea-708" : (d2.contains("eia608") || d2.contains("cea608")) ? "application/cea-608" : k(d2);
        }
        String str2 = null;
        if (d2.startsWith("mp4a.")) {
            b l = l(d2);
            str2 = null;
            if (l != null) {
                str2 = a(l.f22317a);
            }
        }
        return str2 == null ? "audio/mp4a-latm" : str2;
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
        if (c(str)) {
            return 3;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str)) {
            return 5;
        }
        if ("application/x-camera-motion".equals(str)) {
            return 6;
        }
        int size = f22312a.size();
        for (int i = 0; i < size; i++) {
            a aVar = f22312a.get(i);
            if (str.equals(aVar.f22314a)) {
                return aVar.f22316c;
            }
        }
        return -1;
    }

    public static int h(String str) {
        return g(f(str));
    }

    public static String i(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1007807498:
                if (str.equals("audio/x-flac")) {
                    c2 = 0;
                    break;
                }
                break;
            case -586683234:
                if (str.equals("audio/x-wav")) {
                    c2 = 1;
                    break;
                }
                break;
            case 187090231:
                if (str.equals("audio/mp3")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return "audio/flac";
            case 1:
                return "audio/wav";
            case 2:
                return "audio/mpeg";
            default:
                return str;
        }
    }

    private static String j(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOf);
    }

    private static String k(String str) {
        int size = f22312a.size();
        for (int i = 0; i < size; i++) {
            a aVar = f22312a.get(i);
            if (str.startsWith(aVar.f22315b)) {
                return aVar.f22314a;
            }
        }
        return null;
    }

    private static b l(String str) {
        Matcher matcher = f22313b.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String str2 = (String) com.google.android.exoplayer2.util.a.b(matcher.group(1));
        String group = matcher.group(2);
        int i = 0;
        try {
            int parseInt = Integer.parseInt(str2, 16);
            if (group != null) {
                i = Integer.parseInt(group);
            }
            return new b(parseInt, i);
        } catch (NumberFormatException e) {
            return null;
        }
    }
}
