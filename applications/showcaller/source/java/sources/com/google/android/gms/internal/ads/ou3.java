package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ou3.class */
final class ou3 {

    /* renamed from: a */
    static final String[] f27737a = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};

    /* renamed from: b */
    public static final /* synthetic */ int f27738b = 0;

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static zzaiu m12500a(C6694la c6694la) {
        zzajq zzajqVar;
        zzaji zzajiVar;
        String str;
        zzakf zzakfVar;
        int m13636o = c6694la.m13636o() + c6694la.m13655D();
        int m13655D = c6694la.m13655D();
        int i = (m13655D >> 24) & 255;
        try {
            if (i == 169 || i == 253) {
                int i2 = m13655D & 16777215;
                if (i2 == 6516084) {
                    int m13655D2 = c6694la.m13655D();
                    if (c6694la.m13655D() == 1684108385) {
                        c6694la.m13632s(8);
                        String m13645f = c6694la.m13645f(m13655D2 - 16);
                        zzajqVar = new zzajq("und", m13645f, m13645f);
                    } else {
                        String m8182b = zt3.m8182b(m13655D);
                        Log.w("MetadataUtil", m8182b.length() != 0 ? "Failed to parse comment attribute: ".concat(m8182b) : new String("Failed to parse comment attribute: "));
                        zzajqVar = null;
                    }
                    c6694la.m13635p(m13636o);
                    return zzajqVar;
                } else if (i2 == 7233901 || i2 == 7631467) {
                    zzakf m12499b = m12499b(m13655D, "TIT2", c6694la);
                    c6694la.m13635p(m13636o);
                    return m12499b;
                } else if (i2 == 6516589 || i2 == 7828084) {
                    zzakf m12499b2 = m12499b(m13655D, "TCOM", c6694la);
                    c6694la.m13635p(m13636o);
                    return m12499b2;
                } else if (i2 == 6578553) {
                    zzakf m12499b3 = m12499b(m13655D, "TDRC", c6694la);
                    c6694la.m13635p(m13636o);
                    return m12499b3;
                } else if (i2 == 4280916) {
                    zzakf m12499b4 = m12499b(m13655D, "TPE1", c6694la);
                    c6694la.m13635p(m13636o);
                    return m12499b4;
                } else if (i2 == 7630703) {
                    zzakf m12499b5 = m12499b(m13655D, "TSSE", c6694la);
                    c6694la.m13635p(m13636o);
                    return m12499b5;
                } else if (i2 == 6384738) {
                    zzakf m12499b6 = m12499b(m13655D, "TALB", c6694la);
                    c6694la.m13635p(m13636o);
                    return m12499b6;
                } else if (i2 == 7108978) {
                    zzakf m12499b7 = m12499b(m13655D, "USLT", c6694la);
                    c6694la.m13635p(m13636o);
                    return m12499b7;
                } else if (i2 == 6776174) {
                    zzakf m12499b8 = m12499b(m13655D, "TCON", c6694la);
                    c6694la.m13635p(m13636o);
                    return m12499b8;
                } else if (i2 == 6779504) {
                    zzakf m12499b9 = m12499b(m13655D, "TIT1", c6694la);
                    c6694la.m13635p(m13636o);
                    return m12499b9;
                }
            } else if (m13655D == 1735291493) {
                int m12496e = m12496e(c6694la);
                String str2 = (m12496e <= 0 || m12496e > 192) ? null : f27737a[m12496e - 1];
                if (str2 != null) {
                    zzakfVar = new zzakf("TCON", null, str2);
                } else {
                    Log.w("MetadataUtil", "Failed to parse standard genre code");
                    zzakfVar = null;
                }
                c6694la.m13635p(m13636o);
                return zzakfVar;
            } else if (m13655D == 1684632427) {
                zzakf m12497d = m12497d(1684632427, "TPOS", c6694la);
                c6694la.m13635p(m13636o);
                return m12497d;
            } else if (m13655D == 1953655662) {
                zzakf m12497d2 = m12497d(1953655662, "TRCK", c6694la);
                c6694la.m13635p(m13636o);
                return m12497d2;
            } else if (m13655D == 1953329263) {
                zzajx m12498c = m12498c(1953329263, "TBPM", c6694la, true, false);
                c6694la.m13635p(m13636o);
                return m12498c;
            } else if (m13655D == 1668311404) {
                zzajx m12498c2 = m12498c(1668311404, "TCMP", c6694la, true, true);
                c6694la.m13635p(m13636o);
                return m12498c2;
            } else if (m13655D == 1668249202) {
                int m13655D3 = c6694la.m13655D();
                if (c6694la.m13655D() == 1684108385) {
                    int m13655D4 = c6694la.m13655D() & 16777215;
                    if (m13655D4 == 13) {
                        str = "image/jpeg";
                    } else if (m13655D4 == 14) {
                        str = "image/png";
                        m13655D4 = 14;
                    } else {
                        str = null;
                    }
                    if (str == null) {
                        StringBuilder sb = new StringBuilder(41);
                        sb.append("Unrecognized cover art flags: ");
                        sb.append(m13655D4);
                        Log.w("MetadataUtil", sb.toString());
                        zzajiVar = null;
                    } else {
                        c6694la.m13632s(4);
                        int i3 = m13655D3 - 16;
                        byte[] bArr = new byte[i3];
                        c6694la.m13630u(bArr, 0, i3);
                        zzajiVar = new zzaji(str, null, 3, bArr);
                    }
                } else {
                    Log.w("MetadataUtil", "Failed to parse cover art attribute");
                    zzajiVar = null;
                }
                c6694la.m13635p(m13636o);
                return zzajiVar;
            } else if (m13655D == 1631670868) {
                zzakf m12499b10 = m12499b(1631670868, "TPE2", c6694la);
                c6694la.m13635p(m13636o);
                return m12499b10;
            } else if (m13655D == 1936682605) {
                zzakf m12499b11 = m12499b(1936682605, "TSOT", c6694la);
                c6694la.m13635p(m13636o);
                return m12499b11;
            } else if (m13655D == 1936679276) {
                zzakf m12499b12 = m12499b(1936679276, "TSO2", c6694la);
                c6694la.m13635p(m13636o);
                return m12499b12;
            } else if (m13655D == 1936679282) {
                zzakf m12499b13 = m12499b(1936679282, "TSOA", c6694la);
                c6694la.m13635p(m13636o);
                return m12499b13;
            } else if (m13655D == 1936679265) {
                zzakf m12499b14 = m12499b(1936679265, "TSOP", c6694la);
                c6694la.m13635p(m13636o);
                return m12499b14;
            } else if (m13655D == 1936679791) {
                zzakf m12499b15 = m12499b(1936679791, "TSOC", c6694la);
                c6694la.m13635p(m13636o);
                return m12499b15;
            } else if (m13655D == 1920233063) {
                zzajx m12498c3 = m12498c(1920233063, "ITUNESADVISORY", c6694la, false, false);
                c6694la.m13635p(m13636o);
                return m12498c3;
            } else if (m13655D == 1885823344) {
                zzajx m12498c4 = m12498c(1885823344, "ITUNESGAPLESS", c6694la, false, true);
                c6694la.m13635p(m13636o);
                return m12498c4;
            } else if (m13655D == 1936683886) {
                zzakf m12499b16 = m12499b(1936683886, "TVSHOWSORT", c6694la);
                c6694la.m13635p(m13636o);
                return m12499b16;
            } else if (m13655D == 1953919848) {
                zzakf m12499b17 = m12499b(1953919848, "TVSHOW", c6694la);
                c6694la.m13635p(m13636o);
                return m12499b17;
            } else if (m13655D == 757935405) {
                String str3 = null;
                String str4 = null;
                int i4 = -1;
                int i5 = -1;
                while (c6694la.m13636o() < m13636o) {
                    int m13636o2 = c6694la.m13636o();
                    int m13655D5 = c6694la.m13655D();
                    int m13655D6 = c6694la.m13655D();
                    c6694la.m13632s(4);
                    if (m13655D6 == 1835360622) {
                        str3 = c6694la.m13645f(m13655D5 - 12);
                    } else if (m13655D6 == 1851878757) {
                        str4 = c6694la.m13645f(m13655D5 - 12);
                    } else {
                        if (m13655D6 == 1684108385) {
                            i5 = m13655D5;
                        }
                        if (m13655D6 == 1684108385) {
                            i4 = m13636o2;
                        }
                        c6694la.m13632s(m13655D5 - 12);
                    }
                }
                zzajz zzajzVar = null;
                if (str3 != null) {
                    zzajzVar = null;
                    if (str4 != null) {
                        if (i4 == -1) {
                            zzajzVar = null;
                        } else {
                            c6694la.m13635p(i4);
                            c6694la.m13632s(16);
                            zzajzVar = new zzajz(str3, str4, c6694la.m13645f(i5 - 16));
                        }
                    }
                }
                c6694la.m13635p(m13636o);
                return zzajzVar;
            }
            String m8182b2 = zt3.m8182b(m13655D);
            Log.d("MetadataUtil", m8182b2.length() != 0 ? "Skipped unknown metadata entry: ".concat(m8182b2) : new String("Skipped unknown metadata entry: "));
            c6694la.m13635p(m13636o);
            return null;
        } catch (Throwable th) {
            c6694la.m13635p(m13636o);
            throw th;
        }
    }

    /* renamed from: b */
    private static zzakf m12499b(int i, String str, C6694la c6694la) {
        int m13655D = c6694la.m13655D();
        if (c6694la.m13655D() == 1684108385) {
            c6694la.m13632s(8);
            return new zzakf(str, null, c6694la.m13645f(m13655D - 16));
        }
        String m8182b = zt3.m8182b(i);
        Log.w("MetadataUtil", m8182b.length() != 0 ? "Failed to parse text attribute: ".concat(m8182b) : new String("Failed to parse text attribute: "));
        return null;
    }

    /* renamed from: c */
    private static zzajx m12498c(int i, String str, C6694la c6694la, boolean z, boolean z2) {
        int m12496e = m12496e(c6694la);
        int i2 = m12496e;
        if (z2) {
            i2 = Math.min(1, m12496e);
        }
        if (i2 >= 0) {
            return z ? new zzakf(str, null, Integer.toString(i2)) : new zzajq("und", str, Integer.toString(i2));
        }
        String m8182b = zt3.m8182b(i);
        Log.w("MetadataUtil", m8182b.length() != 0 ? "Failed to parse uint8 attribute: ".concat(m8182b) : new String("Failed to parse uint8 attribute: "));
        return null;
    }

    /* renamed from: d */
    private static zzakf m12497d(int i, String str, C6694la c6694la) {
        int m13655D = c6694la.m13655D();
        if (c6694la.m13655D() == 1684108385 && m13655D >= 22) {
            c6694la.m13632s(10);
            int m13628w = c6694la.m13628w();
            if (m13628w > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(m13628w);
                String sb2 = sb.toString();
                int m13628w2 = c6694la.m13628w();
                String str2 = sb2;
                if (m13628w2 > 0) {
                    StringBuilder sb3 = new StringBuilder(sb2.length() + 12);
                    sb3.append(sb2);
                    sb3.append("/");
                    sb3.append(m13628w2);
                    str2 = sb3.toString();
                }
                return new zzakf(str, null, str2);
            }
        }
        String m8182b = zt3.m8182b(i);
        Log.w("MetadataUtil", m8182b.length() != 0 ? "Failed to parse index/count attribute: ".concat(m8182b) : new String("Failed to parse index/count attribute: "));
        return null;
    }

    /* renamed from: e */
    private static int m12496e(C6694la c6694la) {
        c6694la.m13632s(4);
        if (c6694la.m13655D() == 1684108385) {
            c6694la.m13632s(8);
            return c6694la.m13629v();
        }
        Log.w("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }
}
