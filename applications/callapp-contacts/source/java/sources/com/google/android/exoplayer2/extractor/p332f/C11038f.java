package com.google.android.exoplayer2.extractor.p332f;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.C11142r;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11628u;
/* renamed from: com.google.android.exoplayer2.extractor.f.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/f.class */
public final class C11038f {

    /* renamed from: a */
    static final String[] f35885a = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};

    private C11038f() {
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0061 A[Catch: all -> 0x0305, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0305, blocks: (B:8:0x0039, B:10:0x0042, B:17:0x0061, B:18:0x0073, B:24:0x008f, B:29:0x00a8, B:34:0x00c1, B:39:0x00dc, B:44:0x00f7, B:46:0x0106, B:56:0x0133, B:58:0x014a, B:60:0x0154, B:61:0x0173, B:67:0x018f, B:72:0x01a8, B:77:0x01c1, B:82:0x01da, B:87:0x01f3, B:92:0x020c, B:97:0x0225, B:102:0x0240, B:107:0x025b, B:112:0x0274, B:117:0x028d, B:122:0x02a9, B:124:0x02b8, B:125:0x02db, B:140:0x0333, B:145:0x034c, B:150:0x0365, B:155:0x037e, B:160:0x0397, B:165:0x03b0, B:170:0x03c9, B:173:0x03db, B:176:0x03fc, B:179:0x040e), top: B:184:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0073 A[Catch: all -> 0x0305, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0305, blocks: (B:8:0x0039, B:10:0x0042, B:17:0x0061, B:18:0x0073, B:24:0x008f, B:29:0x00a8, B:34:0x00c1, B:39:0x00dc, B:44:0x00f7, B:46:0x0106, B:56:0x0133, B:58:0x014a, B:60:0x0154, B:61:0x0173, B:67:0x018f, B:72:0x01a8, B:77:0x01c1, B:82:0x01da, B:87:0x01f3, B:92:0x020c, B:97:0x0225, B:102:0x0240, B:107:0x025b, B:112:0x0274, B:117:0x028d, B:122:0x02a9, B:124:0x02b8, B:125:0x02db, B:140:0x0333, B:145:0x034c, B:150:0x0365, B:155:0x037e, B:160:0x0397, B:165:0x03b0, B:170:0x03c9, B:173:0x03db, B:176:0x03fc, B:179:0x040e), top: B:184:0x0025 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.metadata.Metadata.Entry m21622a(com.google.android.exoplayer2.util.C11628u r7) {
        /*
            Method dump skipped, instructions count: 1064
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p332f.C11038f.m21622a(com.google.android.exoplayer2.util.u):com.google.android.exoplayer2.metadata.Metadata$Entry");
    }

    /* renamed from: a */
    private static Id3Frame m21623a(int i, String str, C11628u c11628u, boolean z, boolean z2) {
        int m21618b = m21618b(c11628u);
        int i2 = m21618b;
        if (z2) {
            i2 = Math.min(1, m21618b);
        }
        if (i2 >= 0) {
            return z ? new TextInformationFrame(str, null, Integer.toString(i2)) : new CommentFrame("und", str, Integer.toString(i2));
        }
        C11617n.m19863a("MetadataUtil", "Failed to parse uint8 attribute: " + AbstractC11021a.m21684b(i));
        return null;
    }

    /* renamed from: a */
    private static Id3Frame m21621a(C11628u c11628u, int i) {
        String str = null;
        String str2 = null;
        int i2 = -1;
        int i3 = -1;
        while (c11628u.f38734b < i) {
            int i4 = c11628u.f38734b;
            int m19792j = c11628u.m19792j();
            int m19792j2 = c11628u.m19792j();
            c11628u.m19799e(4);
            if (m19792j2 == 1835360622) {
                str = c11628u.m19795g(m19792j - 12);
            } else if (m19792j2 == 1851878757) {
                str2 = c11628u.m19795g(m19792j - 12);
            } else {
                if (m19792j2 == 1684108385) {
                    i2 = i4;
                    i3 = m19792j;
                }
                c11628u.m19799e(m19792j - 12);
            }
        }
        if (str == null || str2 == null || i2 == -1) {
            return null;
        }
        c11628u.m19801d(i2);
        c11628u.m19799e(16);
        return new InternalFrame(str, str2, c11628u.m19795g(i3 - 16));
    }

    /* renamed from: a */
    private static TextInformationFrame m21624a(int i, String str, C11628u c11628u) {
        int m19792j = c11628u.m19792j();
        if (c11628u.m19792j() == 1684108385) {
            c11628u.m19799e(8);
            return new TextInformationFrame(str, null, c11628u.m19795g(m19792j - 16));
        }
        C11617n.m19863a("MetadataUtil", "Failed to parse text attribute: " + AbstractC11021a.m21684b(i));
        return null;
    }

    /* renamed from: a */
    public static MdtaMetadataEntry m21620a(C11628u c11628u, int i, String str) {
        while (true) {
            int i2 = c11628u.f38734b;
            if (i2 < i) {
                int m19792j = c11628u.m19792j();
                if (c11628u.m19792j() == 1684108385) {
                    int m19792j2 = c11628u.m19792j();
                    int m19792j3 = c11628u.m19792j();
                    int i3 = m19792j - 16;
                    byte[] bArr = new byte[i3];
                    c11628u.m19807a(bArr, 0, i3);
                    return new MdtaMetadataEntry(str, bArr, m19792j3, m19792j2);
                }
                c11628u.m19801d(i2 + m19792j);
            } else {
                return null;
            }
        }
    }

    /* renamed from: a */
    public static void m21626a(int i, C11142r c11142r, Format.C10828a c10828a) {
        if (i != 1 || !c11142r.m21393a()) {
            return;
        }
        c10828a.f34778A = c11142r.f36494a;
        c10828a.f34779B = c11142r.f36495b;
    }

    /* renamed from: a */
    public static void m21625a(int i, Metadata metadata, Metadata metadata2, Format.C10828a c10828a, Metadata... metadataArr) {
        int i2;
        Metadata metadata3 = new Metadata(new Metadata.Entry[0]);
        if (i == 1) {
            if (metadata != null) {
                i2 = 0;
            }
            metadata = metadata3;
            i2 = 0;
        } else {
            if (i == 2 && metadata2 != null) {
                for (int i3 = 0; i3 < metadata2.length(); i3++) {
                    Metadata.Entry entry = metadata2.get(i3);
                    if (entry instanceof MdtaMetadataEntry) {
                        MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) entry;
                        if (MdtaMetadataEntry.KEY_ANDROID_CAPTURE_FPS.equals(mdtaMetadataEntry.key)) {
                            metadata = new Metadata(mdtaMetadataEntry);
                            i2 = 0;
                            break;
                        }
                    }
                }
            }
            metadata = metadata3;
            i2 = 0;
        }
        while (i2 < 2) {
            metadata = metadata.copyWithAppendedEntriesFrom(metadataArr[i2]);
            i2++;
        }
        if (metadata.length() > 0) {
            c10828a.f34790i = metadata;
        }
    }

    /* renamed from: b */
    private static int m21618b(C11628u c11628u) {
        c11628u.m19799e(4);
        if (c11628u.m19792j() == 1684108385) {
            c11628u.m19799e(8);
            return c11628u.m19804c();
        }
        C11617n.m19863a("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    /* renamed from: b */
    private static TextInformationFrame m21619b(int i, String str, C11628u c11628u) {
        int m19792j = c11628u.m19792j();
        if (c11628u.m19792j() == 1684108385 && m19792j >= 22) {
            c11628u.m19799e(10);
            int m19802d = c11628u.m19802d();
            if (m19802d > 0) {
                String valueOf = String.valueOf(m19802d);
                int m19802d2 = c11628u.m19802d();
                String str2 = valueOf;
                if (m19802d2 > 0) {
                    str2 = valueOf + "/" + m19802d2;
                }
                return new TextInformationFrame(str, null, str2);
            }
        }
        C11617n.m19863a("MetadataUtil", "Failed to parse index/count attribute: " + AbstractC11021a.m21684b(i));
        return null;
    }
}
