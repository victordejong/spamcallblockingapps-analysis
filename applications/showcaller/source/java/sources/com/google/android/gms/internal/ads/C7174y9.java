package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.internal.ads.y9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y9.class */
public final class C7174y9 {

    /* renamed from: a */
    private static final ArrayList<C7100w9> f32440a = new ArrayList<>();

    /* renamed from: b */
    private static final Pattern f32441b = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    /* renamed from: a */
    public static boolean m8892a(String str) {
        return "audio".equals(m8884i(str));
    }

    /* renamed from: b */
    public static boolean m8891b(String str) {
        return "video".equals(m8884i(str));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: c */
    public static boolean m8890c(String str, String str2) {
        boolean z;
        C7137x9 m8885h;
        if (str == null) {
            return false;
        }
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -432837260:
                if (str.equals("audio/mpeg-L1")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -432837259:
                if (str.equals("audio/mpeg-L2")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 187094639:
                if (str.equals("audio/raw")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1504619009:
                if (str.equals("audio/flac")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1504831518:
                if (str.equals("audio/mpeg")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case 1903231877:
                if (str.equals("audio/g711-alaw")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1903589369:
                if (str.equals("audio/g711-mlaw")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
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
                if (str2 == null || (m8885h = m8885h(str2)) == null) {
                    return false;
                }
                int i = m8885h.f31936b;
                boolean z2 = true;
                if (i != 2) {
                    z2 = i != 5 ? i != 29 ? i != 42 ? i != 22 ? i != 23 ? false : true : true : true : true : true;
                }
                return z2 && !z2;
            default:
                return false;
        }
    }

    /* renamed from: d */
    public static String m8889d(String str) {
        String m15053a = fu2.m15053a(str.trim());
        if (m15053a.startsWith("avc1") || m15053a.startsWith("avc3")) {
            return "video/avc";
        }
        if (m15053a.startsWith("hev1") || m15053a.startsWith("hvc1")) {
            return "video/hevc";
        }
        if (m15053a.startsWith("dvav") || m15053a.startsWith("dva1") || m15053a.startsWith("dvhe") || m15053a.startsWith("dvh1")) {
            return "video/dolby-vision";
        }
        if (m15053a.startsWith("av01")) {
            return "video/av01";
        }
        if (m15053a.startsWith("vp9") || m15053a.startsWith("vp09")) {
            return "video/x-vnd.on2.vp9";
        }
        if (m15053a.startsWith("vp8") || m15053a.startsWith("vp08")) {
            return "video/x-vnd.on2.vp8";
        }
        if (m15053a.startsWith("mp4a")) {
            String str2 = null;
            if (m15053a.startsWith("mp4a.")) {
                C7137x9 m8885h = m8885h(m15053a);
                str2 = null;
                if (m8885h != null) {
                    str2 = m8888e(m8885h.f31935a);
                }
            }
            return str2 == null ? "audio/mp4a-latm" : str2;
        } else if (m15053a.startsWith("mha1")) {
            return "audio/mha1";
        } else {
            if (m15053a.startsWith("mhm1")) {
                return "audio/mhm1";
            }
            if (m15053a.startsWith("ac-3") || m15053a.startsWith("dac3")) {
                return "audio/ac3";
            }
            if (m15053a.startsWith("ec-3") || m15053a.startsWith("dec3")) {
                return "audio/eac3";
            }
            if (m15053a.startsWith("ec+3")) {
                return "audio/eac3-joc";
            }
            if (m15053a.startsWith("ac-4") || m15053a.startsWith("dac4")) {
                return "audio/ac4";
            }
            if (m15053a.startsWith("dtsc")) {
                return "audio/vnd.dts";
            }
            if (m15053a.startsWith("dtse")) {
                return "audio/vnd.dts.hd;profile=lbr";
            }
            if (m15053a.startsWith("dtsh") || m15053a.startsWith("dtsl")) {
                return "audio/vnd.dts.hd";
            }
            if (m15053a.startsWith("dtsx")) {
                return "audio/vnd.dts.uhd";
            }
            if (m15053a.startsWith("opus")) {
                return "audio/opus";
            }
            if (m15053a.startsWith("vorbis")) {
                return "audio/vorbis";
            }
            if (m15053a.startsWith("flac")) {
                return "audio/flac";
            }
            if (m15053a.startsWith("stpp")) {
                return "application/ttml+xml";
            }
            if (m15053a.startsWith("wvtt")) {
                return "text/vtt";
            }
            if (m15053a.contains("cea708")) {
                return "application/cea-708";
            }
            if (m15053a.contains("eia608") || m15053a.contains("cea608")) {
                return "application/cea-608";
            }
            int size = f32440a.size();
            for (int i = 0; i < size; i++) {
                String str3 = f32440a.get(i).f31471b;
                if (m15053a.startsWith(null)) {
                    return null;
                }
            }
            return null;
        }
    }

    /* renamed from: e */
    public static String m8888e(int i) {
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

    /* renamed from: f */
    public static int m8887f(String str) {
        int i;
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (m8892a(str)) {
            return 1;
        }
        if (m8891b(str)) {
            return 2;
        }
        if ("text".equals(m8884i(str)) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str)) {
            return 3;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str)) {
            return 5;
        }
        if ("application/x-camera-motion".equals(str)) {
            return 6;
        }
        int size = f32440a.size();
        int i2 = 0;
        while (true) {
            i = -1;
            if (i2 >= size) {
                break;
            }
            String str2 = f32440a.get(i2).f31470a;
            if (str.equals(null)) {
                i = 0;
                break;
            }
            i2++;
        }
        return i;
    }

    /* renamed from: g */
    public static String m8886g(String str) {
        boolean z;
        int hashCode = str.hashCode();
        if (hashCode == -1007807498) {
            if (str.equals("audio/x-flac")) {
                z = false;
            }
            z = true;
        } else if (hashCode != -586683234) {
            if (hashCode == 187090231 && str.equals("audio/mp3")) {
                z = true;
            }
            z = true;
        } else {
            if (str.equals("audio/x-wav")) {
                z = true;
            }
            z = true;
        }
        return z ? !z ? !z ? str : "audio/wav" : "audio/mpeg" : "audio/flac";
    }

    /* renamed from: h */
    static C7137x9 m8885h(String str) {
        Matcher matcher = f32441b.matcher(str);
        C7137x9 c7137x9 = null;
        if (!matcher.matches()) {
            return null;
        }
        String group = matcher.group(1);
        Objects.requireNonNull(group);
        String group2 = matcher.group(2);
        try {
            c7137x9 = new C7137x9(Integer.parseInt(group, 16), group2 != null ? Integer.parseInt(group2) : 0);
        } catch (NumberFormatException e) {
        }
        return c7137x9;
    }

    /* renamed from: i */
    private static String m8884i(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOf);
    }
}
