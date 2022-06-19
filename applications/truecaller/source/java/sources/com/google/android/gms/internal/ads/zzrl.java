package com.google.android.gms.internal.ads;

import com.tenor.android.core.constant.ContentFormat;
import com.tenor.android.core.constant.StringConstant;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrl.class */
public final class zzrl {
    public static final String[] zza = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};
    public static final /* synthetic */ int zzb = 0;

    /* JADX WARN: Finally extract failed */
    public static zzaiu zza(zzamf zzamfVar) {
        int zzv = zzamfVar.zzv() + zzamfVar.zzg();
        int zzv2 = zzamfVar.zzv();
        int i = (zzv2 >> 24) & 255;
        zzajq zzajqVar = null;
        try {
            if (i == 169 || i == 253) {
                int i2 = zzv2 & 16777215;
                if (i2 == 6516084) {
                    int zzv3 = zzamfVar.zzv();
                    if (zzamfVar.zzv() == 1684108385) {
                        zzamfVar.zzk(8);
                        String zzF = zzamfVar.zzF(zzv3 - 16);
                        zzajqVar = new zzajq("und", zzF, zzF);
                    } else {
                        String zzf = zzqx.zzf(zzv2);
                        if (zzf.length() != 0) {
                            "Failed to parse comment attribute: ".concat(zzf);
                        } else {
                            new String("Failed to parse comment attribute: ");
                        }
                    }
                    zzamfVar.zzh(zzv);
                    return zzajqVar;
                } else if (i2 == 7233901 || i2 == 7631467) {
                    zzakf zzb2 = zzb(zzv2, "TIT2", zzamfVar);
                    zzamfVar.zzh(zzv);
                    return zzb2;
                } else if (i2 == 6516589 || i2 == 7828084) {
                    zzakf zzb3 = zzb(zzv2, "TCOM", zzamfVar);
                    zzamfVar.zzh(zzv);
                    return zzb3;
                } else if (i2 == 6578553) {
                    zzakf zzb4 = zzb(zzv2, "TDRC", zzamfVar);
                    zzamfVar.zzh(zzv);
                    return zzb4;
                } else if (i2 == 4280916) {
                    zzakf zzb5 = zzb(zzv2, "TPE1", zzamfVar);
                    zzamfVar.zzh(zzv);
                    return zzb5;
                } else if (i2 == 7630703) {
                    zzakf zzb6 = zzb(zzv2, "TSSE", zzamfVar);
                    zzamfVar.zzh(zzv);
                    return zzb6;
                } else if (i2 == 6384738) {
                    zzakf zzb7 = zzb(zzv2, "TALB", zzamfVar);
                    zzamfVar.zzh(zzv);
                    return zzb7;
                } else if (i2 == 7108978) {
                    zzakf zzb8 = zzb(zzv2, "USLT", zzamfVar);
                    zzamfVar.zzh(zzv);
                    return zzb8;
                } else if (i2 == 6776174) {
                    zzakf zzb9 = zzb(zzv2, "TCON", zzamfVar);
                    zzamfVar.zzh(zzv);
                    return zzb9;
                } else if (i2 == 6779504) {
                    zzakf zzb10 = zzb(zzv2, "TIT1", zzamfVar);
                    zzamfVar.zzh(zzv);
                    return zzb10;
                }
            } else if (zzv2 == 1735291493) {
                int zze = zze(zzamfVar);
                String str = (zze <= 0 || zze > 192) ? null : zza[zze - 1];
                zzakf zzakfVar = null;
                if (str != null) {
                    zzakfVar = new zzakf("TCON", null, str);
                }
                zzamfVar.zzh(zzv);
                return zzakfVar;
            } else if (zzv2 == 1684632427) {
                zzakf zzd = zzd(1684632427, "TPOS", zzamfVar);
                zzamfVar.zzh(zzv);
                return zzd;
            } else if (zzv2 == 1953655662) {
                zzakf zzd2 = zzd(1953655662, "TRCK", zzamfVar);
                zzamfVar.zzh(zzv);
                return zzd2;
            } else if (zzv2 == 1953329263) {
                zzajx zzc = zzc(1953329263, "TBPM", zzamfVar, true, false);
                zzamfVar.zzh(zzv);
                return zzc;
            } else if (zzv2 == 1668311404) {
                zzajx zzc2 = zzc(1668311404, "TCMP", zzamfVar, true, true);
                zzamfVar.zzh(zzv);
                return zzc2;
            } else if (zzv2 == 1668249202) {
                int zzv4 = zzamfVar.zzv();
                zzaji zzajiVar = null;
                if (zzamfVar.zzv() == 1684108385) {
                    int zzv5 = zzamfVar.zzv() & 16777215;
                    String str2 = zzv5 == 13 ? ContentFormat.IMAGE_JPEG : zzv5 == 14 ? ContentFormat.IMAGE_PNG : null;
                    if (str2 == null) {
                        zzajiVar = null;
                    } else {
                        zzamfVar.zzk(4);
                        int i3 = zzv4 - 16;
                        byte[] bArr = new byte[i3];
                        zzamfVar.zzm(bArr, 0, i3);
                        zzajiVar = new zzaji(str2, null, 3, bArr);
                    }
                }
                zzamfVar.zzh(zzv);
                return zzajiVar;
            } else if (zzv2 == 1631670868) {
                zzakf zzb11 = zzb(1631670868, "TPE2", zzamfVar);
                zzamfVar.zzh(zzv);
                return zzb11;
            } else if (zzv2 == 1936682605) {
                zzakf zzb12 = zzb(1936682605, "TSOT", zzamfVar);
                zzamfVar.zzh(zzv);
                return zzb12;
            } else if (zzv2 == 1936679276) {
                zzakf zzb13 = zzb(1936679276, "TSO2", zzamfVar);
                zzamfVar.zzh(zzv);
                return zzb13;
            } else if (zzv2 == 1936679282) {
                zzakf zzb14 = zzb(1936679282, "TSOA", zzamfVar);
                zzamfVar.zzh(zzv);
                return zzb14;
            } else if (zzv2 == 1936679265) {
                zzakf zzb15 = zzb(1936679265, "TSOP", zzamfVar);
                zzamfVar.zzh(zzv);
                return zzb15;
            } else if (zzv2 == 1936679791) {
                zzakf zzb16 = zzb(1936679791, "TSOC", zzamfVar);
                zzamfVar.zzh(zzv);
                return zzb16;
            } else if (zzv2 == 1920233063) {
                zzajx zzc3 = zzc(1920233063, "ITUNESADVISORY", zzamfVar, false, false);
                zzamfVar.zzh(zzv);
                return zzc3;
            } else if (zzv2 == 1885823344) {
                zzajx zzc4 = zzc(1885823344, "ITUNESGAPLESS", zzamfVar, false, true);
                zzamfVar.zzh(zzv);
                return zzc4;
            } else if (zzv2 == 1936683886) {
                zzakf zzb17 = zzb(1936683886, "TVSHOWSORT", zzamfVar);
                zzamfVar.zzh(zzv);
                return zzb17;
            } else if (zzv2 == 1953919848) {
                zzakf zzb18 = zzb(1953919848, "TVSHOW", zzamfVar);
                zzamfVar.zzh(zzv);
                return zzb18;
            } else if (zzv2 == 757935405) {
                String str3 = null;
                String str4 = null;
                int i4 = -1;
                int i5 = -1;
                while (zzamfVar.zzg() < zzv) {
                    int zzg = zzamfVar.zzg();
                    int zzv6 = zzamfVar.zzv();
                    int zzv7 = zzamfVar.zzv();
                    zzamfVar.zzk(4);
                    if (zzv7 == 1835360622) {
                        str3 = zzamfVar.zzF(zzv6 - 12);
                    } else if (zzv7 == 1851878757) {
                        str4 = zzamfVar.zzF(zzv6 - 12);
                    } else {
                        if (zzv7 == 1684108385) {
                            i5 = zzv6;
                        }
                        if (zzv7 == 1684108385) {
                            i4 = zzg;
                        }
                        zzamfVar.zzk(zzv6 - 12);
                    }
                }
                zzajz zzajzVar = null;
                if (str3 != null) {
                    zzajzVar = null;
                    if (str4 != null) {
                        if (i4 == -1) {
                            zzajzVar = null;
                        } else {
                            zzamfVar.zzh(i4);
                            zzamfVar.zzk(16);
                            zzajzVar = new zzajz(str3, str4, zzamfVar.zzF(i5 - 16));
                        }
                    }
                }
                zzamfVar.zzh(zzv);
                return zzajzVar;
            }
            String zzf2 = zzqx.zzf(zzv2);
            if (zzf2.length() != 0) {
                "Skipped unknown metadata entry: ".concat(zzf2);
            } else {
                new String("Skipped unknown metadata entry: ");
            }
            zzamfVar.zzh(zzv);
            return null;
        } catch (Throwable th) {
            zzamfVar.zzh(zzv);
            throw th;
        }
    }

    private static zzakf zzb(int i, String str, zzamf zzamfVar) {
        int zzv = zzamfVar.zzv();
        if (zzamfVar.zzv() == 1684108385) {
            zzamfVar.zzk(8);
            return new zzakf(str, null, zzamfVar.zzF(zzv - 16));
        }
        String zzf = zzqx.zzf(i);
        if (zzf.length() != 0) {
            "Failed to parse text attribute: ".concat(zzf);
            return null;
        }
        new String("Failed to parse text attribute: ");
        return null;
    }

    private static zzajx zzc(int i, String str, zzamf zzamfVar, boolean z, boolean z2) {
        int zze = zze(zzamfVar);
        int i2 = zze;
        if (z2) {
            i2 = Math.min(1, zze);
        }
        if (i2 >= 0) {
            return z ? new zzakf(str, null, Integer.toString(i2)) : new zzajq("und", str, Integer.toString(i2));
        }
        String zzf = zzqx.zzf(i);
        if (zzf.length() != 0) {
            "Failed to parse uint8 attribute: ".concat(zzf);
            return null;
        }
        new String("Failed to parse uint8 attribute: ");
        return null;
    }

    private static zzakf zzd(int i, String str, zzamf zzamfVar) {
        int zzv = zzamfVar.zzv();
        if (zzamfVar.zzv() == 1684108385 && zzv >= 22) {
            zzamfVar.zzk(10);
            int zzo = zzamfVar.zzo();
            if (zzo > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(zzo);
                String sb2 = sb.toString();
                int zzo2 = zzamfVar.zzo();
                String str2 = sb2;
                if (zzo2 > 0) {
                    str2 = C22128a.m8614i(new StringBuilder(sb2.length() + 12), sb2, StringConstant.SLASH, zzo2);
                }
                return new zzakf(str, null, str2);
            }
        }
        String zzf = zzqx.zzf(i);
        if (zzf.length() != 0) {
            "Failed to parse index/count attribute: ".concat(zzf);
            return null;
        }
        new String("Failed to parse index/count attribute: ");
        return null;
    }

    private static int zze(zzamf zzamfVar) {
        zzamfVar.zzk(4);
        if (zzamfVar.zzv() == 1684108385) {
            zzamfVar.zzk(8);
            return zzamfVar.zzn();
        }
        return -1;
    }
}
