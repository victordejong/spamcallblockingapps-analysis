package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.p243c1.C4988p;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5536v;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.extractor.mp4.h */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/h.class */
public final class C5079h {

    /* renamed from: a */
    static final String[] f15853a = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};

    /* renamed from: a */
    public static Format m20634a(int i, Format format, Metadata metadata, Metadata metadata2, C4988p c4988p) {
        Format format2;
        if (i == 1) {
            Format format3 = format;
            if (c4988p.m20975a()) {
                format3 = format.m21748g(c4988p.f15500b, c4988p.f15501c);
            }
            format2 = format3;
            if (metadata != null) {
                format2 = format3.m21745j(metadata);
            }
        } else {
            format2 = format;
            if (i == 2) {
                format2 = format;
                if (metadata2 != null) {
                    int i2 = 0;
                    while (true) {
                        format2 = format;
                        if (i2 >= metadata2.m20392d()) {
                            break;
                        }
                        Metadata.Entry m20393c = metadata2.m20393c(i2);
                        Format format4 = format;
                        if (m20393c instanceof MdtaMetadataEntry) {
                            MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) m20393c;
                            format4 = format;
                            if ("com.android.capture.fps".equals(mdtaMetadataEntry.f15757d)) {
                                format4 = format;
                                if (mdtaMetadataEntry.f15760g == 23) {
                                    format4 = format;
                                    try {
                                        format4 = format.m21749f(ByteBuffer.wrap(mdtaMetadataEntry.f15758e).asFloatBuffer().get()).m21745j(new Metadata(mdtaMetadataEntry));
                                    } catch (NumberFormatException e) {
                                        C5526o.m18742f("MetadataUtil", "Ignoring invalid framerate");
                                    }
                                }
                            }
                        }
                        i2++;
                        format = format4;
                    }
                }
            }
        }
        return format2;
    }

    /* renamed from: b */
    private static CommentFrame m20633b(int i, C5536v c5536v) {
        int m18668k = c5536v.m18668k();
        if (c5536v.m18668k() == 1684108385) {
            c5536v.m18679N(8);
            String m18658u = c5536v.m18658u(m18668k - 16);
            return new CommentFrame("und", m18658u, m18658u);
        }
        C5526o.m18742f("MetadataUtil", "Failed to parse comment attribute: " + AbstractC5062c.m20720a(i));
        return null;
    }

    /* renamed from: c */
    private static ApicFrame m20632c(C5536v c5536v) {
        int m18668k = c5536v.m18668k();
        if (c5536v.m18668k() != 1684108385) {
            C5526o.m18742f("MetadataUtil", "Failed to parse cover art attribute");
            return null;
        }
        int m20719b = AbstractC5062c.m20719b(c5536v.m18668k());
        String str = m20719b == 13 ? "image/jpeg" : m20719b == 14 ? "image/png" : null;
        if (str == null) {
            C5526o.m18742f("MetadataUtil", "Unrecognized cover art flags: " + m20719b);
            return null;
        }
        c5536v.m18679N(4);
        int i = m18668k - 16;
        byte[] bArr = new byte[i];
        c5536v.m18671h(bArr, 0, i);
        return new ApicFrame(str, null, 3, bArr);
    }

    /* renamed from: d */
    public static Metadata.Entry m20631d(C5536v c5536v) {
        int m18676c = c5536v.m18676c() + c5536v.m18668k();
        int m18668k = c5536v.m18668k();
        int i = (m18668k >> 24) & 255;
        try {
            if (i == 169 || i == 253) {
                int i2 = 16777215 & m18668k;
                if (i2 == 6516084) {
                    return m20633b(m18668k, c5536v);
                }
                if (i2 == 7233901 || i2 == 7631467) {
                    return m20626i(m18668k, "TIT2", c5536v);
                }
                if (i2 == 6516589 || i2 == 7828084) {
                    return m20626i(m18668k, "TCOM", c5536v);
                }
                if (i2 == 6578553) {
                    return m20626i(m18668k, "TDRC", c5536v);
                }
                if (i2 == 4280916) {
                    return m20626i(m18668k, "TPE1", c5536v);
                }
                if (i2 == 7630703) {
                    return m20626i(m18668k, "TSSE", c5536v);
                }
                if (i2 == 6384738) {
                    return m20626i(m18668k, "TALB", c5536v);
                }
                if (i2 == 7108978) {
                    return m20626i(m18668k, "USLT", c5536v);
                }
                if (i2 == 6776174) {
                    return m20626i(m18668k, "TCON", c5536v);
                }
                if (i2 == 6779504) {
                    return m20626i(m18668k, "TIT1", c5536v);
                }
            } else if (m18668k == 1735291493) {
                return m20627h(c5536v);
            } else {
                if (m18668k == 1684632427) {
                    return m20630e(m18668k, "TPOS", c5536v);
                }
                if (m18668k == 1953655662) {
                    return m20630e(m18668k, "TRCK", c5536v);
                }
                if (m18668k == 1953329263) {
                    return m20625j(m18668k, "TBPM", c5536v, true, false);
                }
                if (m18668k == 1668311404) {
                    return m20625j(m18668k, "TCMP", c5536v, true, true);
                }
                if (m18668k == 1668249202) {
                    return m20632c(c5536v);
                }
                if (m18668k == 1631670868) {
                    return m20626i(m18668k, "TPE2", c5536v);
                }
                if (m18668k == 1936682605) {
                    return m20626i(m18668k, "TSOT", c5536v);
                }
                if (m18668k == 1936679276) {
                    return m20626i(m18668k, "TSO2", c5536v);
                }
                if (m18668k == 1936679282) {
                    return m20626i(m18668k, "TSOA", c5536v);
                }
                if (m18668k == 1936679265) {
                    return m20626i(m18668k, "TSOP", c5536v);
                }
                if (m18668k == 1936679791) {
                    return m20626i(m18668k, "TSOC", c5536v);
                }
                if (m18668k == 1920233063) {
                    return m20625j(m18668k, "ITUNESADVISORY", c5536v, false, false);
                }
                if (m18668k == 1885823344) {
                    return m20625j(m18668k, "ITUNESGAPLESS", c5536v, false, true);
                }
                if (m18668k == 1936683886) {
                    return m20626i(m18668k, "TVSHOWSORT", c5536v);
                }
                if (m18668k == 1953919848) {
                    return m20626i(m18668k, "TVSHOW", c5536v);
                }
                if (m18668k == 757935405) {
                    return m20629f(c5536v, m18676c);
                }
            }
            C5526o.m18746b("MetadataUtil", "Skipped unknown metadata entry: " + AbstractC5062c.m20720a(m18668k));
            c5536v.m18680M(m18676c);
            return null;
        } finally {
            c5536v.m18680M(m18676c);
        }
    }

    /* renamed from: e */
    private static TextInformationFrame m20630e(int i, String str, C5536v c5536v) {
        int m18668k = c5536v.m18668k();
        if (c5536v.m18668k() == 1684108385 && m18668k >= 22) {
            c5536v.m18679N(10);
            int m18687F = c5536v.m18687F();
            if (m18687F > 0) {
                String str2 = "" + m18687F;
                int m18687F2 = c5536v.m18687F();
                String str3 = str2;
                if (m18687F2 > 0) {
                    str3 = str2 + "/" + m18687F2;
                }
                return new TextInformationFrame(str, null, str3);
            }
        }
        C5526o.m18742f("MetadataUtil", "Failed to parse index/count attribute: " + AbstractC5062c.m20720a(i));
        return null;
    }

    /* renamed from: f */
    private static Id3Frame m20629f(C5536v c5536v, int i) {
        String str = null;
        String str2 = null;
        int i2 = -1;
        int i3 = -1;
        while (c5536v.m18676c() < i) {
            int m18676c = c5536v.m18676c();
            int m18668k = c5536v.m18668k();
            int m18668k2 = c5536v.m18668k();
            c5536v.m18679N(4);
            if (m18668k2 == 1835360622) {
                str = c5536v.m18658u(m18668k - 12);
            } else if (m18668k2 == 1851878757) {
                str2 = c5536v.m18658u(m18668k - 12);
            } else {
                if (m18668k2 == 1684108385) {
                    i2 = m18676c;
                    i3 = m18668k;
                }
                c5536v.m18679N(m18668k - 12);
            }
        }
        if (str == null || str2 == null || i2 == -1) {
            return null;
        }
        c5536v.m18680M(i2);
        c5536v.m18679N(16);
        return new InternalFrame(str, str2, c5536v.m18658u(i3 - 16));
    }

    /* renamed from: g */
    public static MdtaMetadataEntry m20628g(C5536v c5536v, int i, String str) {
        while (true) {
            int m18676c = c5536v.m18676c();
            if (m18676c < i) {
                int m18668k = c5536v.m18668k();
                if (c5536v.m18668k() == 1684108385) {
                    int m18668k2 = c5536v.m18668k();
                    int m18668k3 = c5536v.m18668k();
                    int i2 = m18668k - 16;
                    byte[] bArr = new byte[i2];
                    c5536v.m18671h(bArr, 0, i2);
                    return new MdtaMetadataEntry(str, bArr, m18668k3, m18668k2);
                }
                c5536v.m18680M(m18676c + m18668k);
            } else {
                return null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002f  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.exoplayer2.metadata.id3.TextInformationFrame m20627h(com.google.android.exoplayer2.util.C5536v r6) {
        /*
            r0 = r6
            int r0 = m20624k(r0)
            r7 = r0
            r0 = r7
            if (r0 <= 0) goto L1c
            java.lang.String[] r0 = com.google.android.exoplayer2.extractor.mp4.C5079h.f15853a
            r6 = r0
            r0 = r7
            r1 = r6
            int r1 = r1.length
            if (r0 > r1) goto L1c
            r0 = r6
            r1 = r7
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            r6 = r0
            goto L1e
        L1c:
            r0 = 0
            r6 = r0
        L1e:
            r0 = r6
            if (r0 == 0) goto L2f
            com.google.android.exoplayer2.metadata.id3.TextInformationFrame r0 = new com.google.android.exoplayer2.metadata.id3.TextInformationFrame
            r1 = r0
            java.lang.String r2 = "TCON"
            r3 = 0
            r4 = r6
            r1.<init>(r2, r3, r4)
            return r0
        L2f:
            java.lang.String r0 = "MetadataUtil"
            java.lang.String r1 = "Failed to parse standard genre code"
            com.google.android.exoplayer2.util.C5526o.m18742f(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.C5079h.m20627h(com.google.android.exoplayer2.util.v):com.google.android.exoplayer2.metadata.id3.TextInformationFrame");
    }

    /* renamed from: i */
    private static TextInformationFrame m20626i(int i, String str, C5536v c5536v) {
        int m18668k = c5536v.m18668k();
        if (c5536v.m18668k() == 1684108385) {
            c5536v.m18679N(8);
            return new TextInformationFrame(str, null, c5536v.m18658u(m18668k - 16));
        }
        C5526o.m18742f("MetadataUtil", "Failed to parse text attribute: " + AbstractC5062c.m20720a(i));
        return null;
    }

    /* renamed from: j */
    private static Id3Frame m20625j(int i, String str, C5536v c5536v, boolean z, boolean z2) {
        int m20624k = m20624k(c5536v);
        int i2 = m20624k;
        if (z2) {
            i2 = Math.min(1, m20624k);
        }
        if (i2 >= 0) {
            return z ? new TextInformationFrame(str, null, Integer.toString(i2)) : new CommentFrame("und", str, Integer.toString(i2));
        }
        C5526o.m18742f("MetadataUtil", "Failed to parse uint8 attribute: " + AbstractC5062c.m20720a(i));
        return null;
    }

    /* renamed from: k */
    private static int m20624k(C5536v c5536v) {
        c5536v.m18679N(4);
        if (c5536v.m18668k() == 1684108385) {
            c5536v.m18679N(8);
            return c5536v.m18653z();
        }
        C5526o.m18742f("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }
}
