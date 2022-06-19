package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzalt.class */
public final class zzalt {
    private static final ArrayList<zzalr> zza = new ArrayList<>();
    private static final Pattern zzb = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    public static boolean zza(String str) {
        return "audio".equals(zzi(str));
    }

    public static boolean zzb(String str) {
        return "video".equals(zzi(str));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static boolean zzc(String str, String str2) {
        boolean z;
        zzals zzh;
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
                if (str2 == null || (zzh = zzh(str2)) == null) {
                    return false;
                }
                int i = zzh.zzb;
                boolean z2 = true;
                if (i != 2) {
                    z2 = i != 5 ? i != 29 ? i != 42 ? i != 22 ? i != 23 ? false : true : true : true : true : true;
                }
                return z2 && !z2;
            default:
                return false;
        }
    }

    public static String zzd(String str) {
        String zza2 = zzflf.zza(str.trim());
        if (zza2.startsWith("avc1") || zza2.startsWith("avc3")) {
            return "video/avc";
        }
        if (zza2.startsWith("hev1") || zza2.startsWith("hvc1")) {
            return "video/hevc";
        }
        if (zza2.startsWith("dvav") || zza2.startsWith("dva1") || zza2.startsWith("dvhe") || zza2.startsWith("dvh1")) {
            return "video/dolby-vision";
        }
        if (zza2.startsWith("av01")) {
            return "video/av01";
        }
        if (zza2.startsWith("vp9") || zza2.startsWith("vp09")) {
            return "video/x-vnd.on2.vp9";
        }
        if (zza2.startsWith("vp8") || zza2.startsWith("vp08")) {
            return "video/x-vnd.on2.vp8";
        }
        if (zza2.startsWith("mp4a")) {
            String str2 = null;
            if (zza2.startsWith("mp4a.")) {
                zzals zzh = zzh(zza2);
                str2 = null;
                if (zzh != null) {
                    str2 = zze(zzh.zza);
                }
            }
            return str2 == null ? "audio/mp4a-latm" : str2;
        } else if (zza2.startsWith("mha1")) {
            return "audio/mha1";
        } else {
            if (zza2.startsWith("mhm1")) {
                return "audio/mhm1";
            }
            if (zza2.startsWith("ac-3") || zza2.startsWith("dac3")) {
                return "audio/ac3";
            }
            if (zza2.startsWith("ec-3") || zza2.startsWith("dec3")) {
                return "audio/eac3";
            }
            if (zza2.startsWith("ec+3")) {
                return "audio/eac3-joc";
            }
            if (zza2.startsWith("ac-4") || zza2.startsWith("dac4")) {
                return "audio/ac4";
            }
            if (zza2.startsWith("dtsc")) {
                return "audio/vnd.dts";
            }
            if (zza2.startsWith("dtse")) {
                return "audio/vnd.dts.hd;profile=lbr";
            }
            if (zza2.startsWith("dtsh") || zza2.startsWith("dtsl")) {
                return "audio/vnd.dts.hd";
            }
            if (zza2.startsWith("dtsx")) {
                return "audio/vnd.dts.uhd";
            }
            if (zza2.startsWith("opus")) {
                return "audio/opus";
            }
            if (zza2.startsWith("vorbis")) {
                return "audio/vorbis";
            }
            if (zza2.startsWith("flac")) {
                return "audio/flac";
            }
            if (zza2.startsWith("stpp")) {
                return "application/ttml+xml";
            }
            if (zza2.startsWith("wvtt")) {
                return "text/vtt";
            }
            if (zza2.contains("cea708")) {
                return "application/cea-708";
            }
            if (zza2.contains("eia608") || zza2.contains("cea608")) {
                return "application/cea-608";
            }
            int size = zza.size();
            for (int i = 0; i < size; i++) {
                String str3 = zza.get(i).zzb;
                if (zza2.startsWith(null)) {
                    return null;
                }
            }
            return null;
        }
    }

    public static String zze(int i) {
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

    public static int zzf(String str) {
        int i;
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (zza(str)) {
            return 1;
        }
        if (zzb(str)) {
            return 2;
        }
        if ("text".equals(zzi(str)) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str)) {
            return 3;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str)) {
            return 5;
        }
        if ("application/x-camera-motion".equals(str)) {
            return 6;
        }
        int size = zza.size();
        int i2 = 0;
        while (true) {
            i = -1;
            if (i2 >= size) {
                break;
            }
            String str2 = zza.get(i2).zza;
            if (str.equals(null)) {
                i = 0;
                break;
            }
            i2++;
        }
        return i;
    }

    public static String zzg(String str) {
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

    public static zzals zzh(String str) {
        Matcher matcher = zzb.matcher(str);
        zzals zzalsVar = null;
        if (!matcher.matches()) {
            return null;
        }
        String group = matcher.group(1);
        Objects.requireNonNull(group);
        String group2 = matcher.group(2);
        try {
            zzalsVar = new zzals(Integer.parseInt(group, 16), group2 != null ? Integer.parseInt(group2) : 0);
        } catch (NumberFormatException e) {
        }
        return zzalsVar;
    }

    private static String zzi(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOf);
    }
}
