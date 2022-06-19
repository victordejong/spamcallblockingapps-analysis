package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzacb.class */
final class zzacb {
    public static final String[] zza = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};
    public static final /* synthetic */ int zzb = 0;

    /* JADX WARN: Finally extract failed */
    public static zzdc zza(zzfd zzfdVar) {
        zzzn zzznVar;
        zzzf zzzfVar;
        String str;
        zzaac zzaacVar;
        int zze = zzfdVar.zze() + zzfdVar.zzc();
        int zze2 = zzfdVar.zze();
        int i = (zze2 >> 24) & 255;
        try {
            if (i == 169 || i == 253) {
                int i2 = zze2 & 16777215;
                if (i2 == 6516084) {
                    int zze3 = zzfdVar.zze();
                    if (zzfdVar.zze() == 1684108385) {
                        zzfdVar.zzG(8);
                        String zzw = zzfdVar.zzw(zze3 - 16);
                        zzznVar = new zzzn("und", zzw, zzw);
                    } else {
                        String zzf = zzabn.zzf(zze2);
                        Log.w("MetadataUtil", zzf.length() != 0 ? "Failed to parse comment attribute: ".concat(zzf) : new String("Failed to parse comment attribute: "));
                        zzznVar = null;
                    }
                    zzfdVar.zzF(zze);
                    return zzznVar;
                } else if (i2 == 7233901 || i2 == 7631467) {
                    zzaac zze4 = zze(zze2, "TIT2", zzfdVar);
                    zzfdVar.zzF(zze);
                    return zze4;
                } else if (i2 == 6516589 || i2 == 7828084) {
                    zzaac zze5 = zze(zze2, "TCOM", zzfdVar);
                    zzfdVar.zzF(zze);
                    return zze5;
                } else if (i2 == 6578553) {
                    zzaac zze6 = zze(zze2, "TDRC", zzfdVar);
                    zzfdVar.zzF(zze);
                    return zze6;
                } else if (i2 == 4280916) {
                    zzaac zze7 = zze(zze2, "TPE1", zzfdVar);
                    zzfdVar.zzF(zze);
                    return zze7;
                } else if (i2 == 7630703) {
                    zzaac zze8 = zze(zze2, "TSSE", zzfdVar);
                    zzfdVar.zzF(zze);
                    return zze8;
                } else if (i2 == 6384738) {
                    zzaac zze9 = zze(zze2, "TALB", zzfdVar);
                    zzfdVar.zzF(zze);
                    return zze9;
                } else if (i2 == 7108978) {
                    zzaac zze10 = zze(zze2, "USLT", zzfdVar);
                    zzfdVar.zzF(zze);
                    return zze10;
                } else if (i2 == 6776174) {
                    zzaac zze11 = zze(zze2, "TCON", zzfdVar);
                    zzfdVar.zzF(zze);
                    return zze11;
                } else if (i2 == 6779504) {
                    zzaac zze12 = zze(zze2, "TIT1", zzfdVar);
                    zzfdVar.zzF(zze);
                    return zze12;
                }
            } else if (zze2 == 1735291493) {
                int zzb2 = zzb(zzfdVar);
                String str2 = (zzb2 <= 0 || zzb2 > 192) ? null : zza[zzb2 - 1];
                if (str2 != null) {
                    zzaacVar = new zzaac("TCON", null, str2);
                } else {
                    Log.w("MetadataUtil", "Failed to parse standard genre code");
                    zzaacVar = null;
                }
                zzfdVar.zzF(zze);
                return zzaacVar;
            } else if (zze2 == 1684632427) {
                zzaac zzd = zzd(1684632427, "TPOS", zzfdVar);
                zzfdVar.zzF(zze);
                return zzd;
            } else if (zze2 == 1953655662) {
                zzaac zzd2 = zzd(1953655662, "TRCK", zzfdVar);
                zzfdVar.zzF(zze);
                return zzd2;
            } else if (zze2 == 1953329263) {
                zzzu zzc = zzc(1953329263, "TBPM", zzfdVar, true, false);
                zzfdVar.zzF(zze);
                return zzc;
            } else if (zze2 == 1668311404) {
                zzzu zzc2 = zzc(1668311404, "TCMP", zzfdVar, true, true);
                zzfdVar.zzF(zze);
                return zzc2;
            } else if (zze2 == 1668249202) {
                int zze13 = zzfdVar.zze();
                if (zzfdVar.zze() == 1684108385) {
                    int zze14 = zzfdVar.zze() & 16777215;
                    if (zze14 == 13) {
                        str = "image/jpeg";
                    } else if (zze14 == 14) {
                        str = "image/png";
                        zze14 = 14;
                    } else {
                        str = null;
                    }
                    if (str == null) {
                        StringBuilder sb = new StringBuilder(41);
                        sb.append("Unrecognized cover art flags: ");
                        sb.append(zze14);
                        Log.w("MetadataUtil", sb.toString());
                        zzzfVar = null;
                    } else {
                        zzfdVar.zzG(4);
                        int i3 = zze13 - 16;
                        byte[] bArr = new byte[i3];
                        zzfdVar.zzB(bArr, 0, i3);
                        zzzfVar = new zzzf(str, null, 3, bArr);
                    }
                } else {
                    Log.w("MetadataUtil", "Failed to parse cover art attribute");
                    zzzfVar = null;
                }
                zzfdVar.zzF(zze);
                return zzzfVar;
            } else if (zze2 == 1631670868) {
                zzaac zze15 = zze(1631670868, "TPE2", zzfdVar);
                zzfdVar.zzF(zze);
                return zze15;
            } else if (zze2 == 1936682605) {
                zzaac zze16 = zze(1936682605, "TSOT", zzfdVar);
                zzfdVar.zzF(zze);
                return zze16;
            } else if (zze2 == 1936679276) {
                zzaac zze17 = zze(1936679276, "TSO2", zzfdVar);
                zzfdVar.zzF(zze);
                return zze17;
            } else if (zze2 == 1936679282) {
                zzaac zze18 = zze(1936679282, "TSOA", zzfdVar);
                zzfdVar.zzF(zze);
                return zze18;
            } else if (zze2 == 1936679265) {
                zzaac zze19 = zze(1936679265, "TSOP", zzfdVar);
                zzfdVar.zzF(zze);
                return zze19;
            } else if (zze2 == 1936679791) {
                zzaac zze20 = zze(1936679791, "TSOC", zzfdVar);
                zzfdVar.zzF(zze);
                return zze20;
            } else if (zze2 == 1920233063) {
                zzzu zzc3 = zzc(1920233063, "ITUNESADVISORY", zzfdVar, false, false);
                zzfdVar.zzF(zze);
                return zzc3;
            } else if (zze2 == 1885823344) {
                zzzu zzc4 = zzc(1885823344, "ITUNESGAPLESS", zzfdVar, false, true);
                zzfdVar.zzF(zze);
                return zzc4;
            } else if (zze2 == 1936683886) {
                zzaac zze21 = zze(1936683886, "TVSHOWSORT", zzfdVar);
                zzfdVar.zzF(zze);
                return zze21;
            } else if (zze2 == 1953919848) {
                zzaac zze22 = zze(1953919848, "TVSHOW", zzfdVar);
                zzfdVar.zzF(zze);
                return zze22;
            } else if (zze2 == 757935405) {
                String str3 = null;
                String str4 = null;
                int i4 = -1;
                int i5 = -1;
                while (zzfdVar.zzc() < zze) {
                    int zzc5 = zzfdVar.zzc();
                    int zze23 = zzfdVar.zze();
                    int zze24 = zzfdVar.zze();
                    zzfdVar.zzG(4);
                    if (zze24 == 1835360622) {
                        str3 = zzfdVar.zzw(zze23 - 12);
                    } else if (zze24 == 1851878757) {
                        str4 = zzfdVar.zzw(zze23 - 12);
                    } else {
                        if (zze24 == 1684108385) {
                            i5 = zze23;
                        }
                        if (zze24 == 1684108385) {
                            i4 = zzc5;
                        }
                        zzfdVar.zzG(zze23 - 12);
                    }
                }
                zzzw zzzwVar = null;
                if (str3 != null) {
                    zzzwVar = null;
                    if (str4 != null) {
                        if (i4 == -1) {
                            zzzwVar = null;
                        } else {
                            zzfdVar.zzF(i4);
                            zzfdVar.zzG(16);
                            zzzwVar = new zzzw(str3, str4, zzfdVar.zzw(i5 - 16));
                        }
                    }
                }
                zzfdVar.zzF(zze);
                return zzzwVar;
            }
            String zzf2 = zzabn.zzf(zze2);
            if (zzf2.length() != 0) {
                "Skipped unknown metadata entry: ".concat(zzf2);
            }
            zzfdVar.zzF(zze);
            return null;
        } catch (Throwable th) {
            zzfdVar.zzF(zze);
            throw th;
        }
    }

    private static int zzb(zzfd zzfdVar) {
        zzfdVar.zzG(4);
        if (zzfdVar.zze() == 1684108385) {
            zzfdVar.zzG(8);
            return zzfdVar.zzk();
        }
        Log.w("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    private static zzzu zzc(int i, String str, zzfd zzfdVar, boolean z, boolean z2) {
        int zzb2 = zzb(zzfdVar);
        int i2 = zzb2;
        if (z2) {
            i2 = Math.min(1, zzb2);
        }
        if (i2 >= 0) {
            return z ? new zzaac(str, null, Integer.toString(i2)) : new zzzn("und", str, Integer.toString(i2));
        }
        String zzf = zzabn.zzf(i);
        Log.w("MetadataUtil", zzf.length() != 0 ? "Failed to parse uint8 attribute: ".concat(zzf) : new String("Failed to parse uint8 attribute: "));
        return null;
    }

    private static zzaac zzd(int i, String str, zzfd zzfdVar) {
        int zze = zzfdVar.zze();
        if (zzfdVar.zze() == 1684108385 && zze >= 22) {
            zzfdVar.zzG(10);
            int zzo = zzfdVar.zzo();
            if (zzo > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(zzo);
                String sb2 = sb.toString();
                int zzo2 = zzfdVar.zzo();
                String str2 = sb2;
                if (zzo2 > 0) {
                    StringBuilder sb3 = new StringBuilder(sb2.length() + 12);
                    sb3.append(sb2);
                    sb3.append("/");
                    sb3.append(zzo2);
                    str2 = sb3.toString();
                }
                return new zzaac(str, null, str2);
            }
        }
        String zzf = zzabn.zzf(i);
        Log.w("MetadataUtil", zzf.length() != 0 ? "Failed to parse index/count attribute: ".concat(zzf) : new String("Failed to parse index/count attribute: "));
        return null;
    }

    private static zzaac zze(int i, String str, zzfd zzfdVar) {
        int zze = zzfdVar.zze();
        if (zzfdVar.zze() == 1684108385) {
            zzfdVar.zzG(8);
            return new zzaac(str, null, zzfdVar.zzw(zze - 16));
        }
        String zzf = zzabn.zzf(i);
        Log.w("MetadataUtil", zzf.length() != 0 ? "Failed to parse text attribute: ".concat(zzf) : new String("Failed to parse text attribute: "));
        return null;
    }
}
