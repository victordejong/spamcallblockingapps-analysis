package com.google.android.exoplayer2.extractor.f;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.r;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.u;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    static final String[] f21055a = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};

    private f() {
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0061 A[Catch: all -> 0x0305, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0305, blocks: (B:8:0x0039, B:10:0x0042, B:17:0x0061, B:18:0x0073, B:24:0x008f, B:29:0x00a8, B:34:0x00c1, B:39:0x00dc, B:44:0x00f7, B:46:0x0106, B:56:0x0133, B:58:0x014a, B:60:0x0154, B:61:0x0173, B:67:0x018f, B:72:0x01a8, B:77:0x01c1, B:82:0x01da, B:87:0x01f3, B:92:0x020c, B:97:0x0225, B:102:0x0240, B:107:0x025b, B:112:0x0274, B:117:0x028d, B:122:0x02a9, B:124:0x02b8, B:125:0x02db, B:140:0x0333, B:145:0x034c, B:150:0x0365, B:155:0x037e, B:160:0x0397, B:165:0x03b0, B:170:0x03c9, B:173:0x03db, B:176:0x03fc, B:179:0x040e), top: B:184:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0073 A[Catch: all -> 0x0305, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0305, blocks: (B:8:0x0039, B:10:0x0042, B:17:0x0061, B:18:0x0073, B:24:0x008f, B:29:0x00a8, B:34:0x00c1, B:39:0x00dc, B:44:0x00f7, B:46:0x0106, B:56:0x0133, B:58:0x014a, B:60:0x0154, B:61:0x0173, B:67:0x018f, B:72:0x01a8, B:77:0x01c1, B:82:0x01da, B:87:0x01f3, B:92:0x020c, B:97:0x0225, B:102:0x0240, B:107:0x025b, B:112:0x0274, B:117:0x028d, B:122:0x02a9, B:124:0x02b8, B:125:0x02db, B:140:0x0333, B:145:0x034c, B:150:0x0365, B:155:0x037e, B:160:0x0397, B:165:0x03b0, B:170:0x03c9, B:173:0x03db, B:176:0x03fc, B:179:0x040e), top: B:184:0x0025 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.metadata.Metadata.Entry a(com.google.android.exoplayer2.util.u r7) {
        /*
            Method dump skipped, instructions count: 1064
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.f.f.a(com.google.android.exoplayer2.util.u):com.google.android.exoplayer2.metadata.Metadata$Entry");
    }

    private static Id3Frame a(int i, String str, u uVar, boolean z, boolean z2) {
        int b2 = b(uVar);
        int i2 = b2;
        if (z2) {
            i2 = Math.min(1, b2);
        }
        if (i2 >= 0) {
            return z ? new TextInformationFrame(str, null, Integer.toString(i2)) : new CommentFrame("und", str, Integer.toString(i2));
        }
        n.a("MetadataUtil", "Failed to parse uint8 attribute: " + a.b(i));
        return null;
    }

    private static Id3Frame a(u uVar, int i) {
        String str = null;
        String str2 = null;
        int i2 = -1;
        int i3 = -1;
        while (uVar.f22336b < i) {
            i2 = uVar.f22336b;
            int j = uVar.j();
            int j2 = uVar.j();
            uVar.e(4);
            if (j2 == 1835360622) {
                str = uVar.g(j - 12);
            } else if (j2 == 1851878757) {
                str2 = uVar.g(j - 12);
            } else {
                if (j2 == 1684108385) {
                    i3 = j;
                }
                uVar.e(j - 12);
            }
        }
        if (str == null || str2 == null || i2 == -1) {
            return null;
        }
        uVar.d(i2);
        uVar.e(16);
        return new InternalFrame(str, str2, uVar.g(i3 - 16));
    }

    private static TextInformationFrame a(int i, String str, u uVar) {
        int j = uVar.j();
        if (uVar.j() == 1684108385) {
            uVar.e(8);
            return new TextInformationFrame(str, null, uVar.g(j - 16));
        }
        n.a("MetadataUtil", "Failed to parse text attribute: " + a.b(i));
        return null;
    }

    public static MdtaMetadataEntry a(u uVar, int i, String str) {
        while (true) {
            int i2 = uVar.f22336b;
            if (i2 >= i) {
                return null;
            }
            int j = uVar.j();
            if (uVar.j() == 1684108385) {
                int j2 = uVar.j();
                int j3 = uVar.j();
                int i3 = j - 16;
                byte[] bArr = new byte[i3];
                uVar.a(bArr, 0, i3);
                return new MdtaMetadataEntry(str, bArr, j3, j2);
            }
            uVar.d(i2 + j);
        }
    }

    public static void a(int i, r rVar, Format.a aVar) {
        if (i == 1 && rVar.a()) {
            aVar.A = rVar.f21321a;
            aVar.B = rVar.f21322b;
        }
    }

    public static void a(int i, Metadata metadata, Metadata metadata2, Format.a aVar, Metadata... metadataArr) {
        int i2;
        metadata = new Metadata(new Metadata.Entry[0]);
        if (i == 1) {
            if (metadata != null) {
                i2 = 0;
            }
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
            i2 = 0;
        }
        while (i2 < 2) {
            metadata = metadata.copyWithAppendedEntriesFrom(metadataArr[i2]);
            i2++;
        }
        if (metadata.length() > 0) {
            aVar.i = metadata;
        }
    }

    private static int b(u uVar) {
        uVar.e(4);
        if (uVar.j() == 1684108385) {
            uVar.e(8);
            return uVar.c();
        }
        n.a("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    private static TextInformationFrame b(int i, String str, u uVar) {
        int j = uVar.j();
        if (uVar.j() == 1684108385 && j >= 22) {
            uVar.e(10);
            int d2 = uVar.d();
            if (d2 > 0) {
                String valueOf = String.valueOf(d2);
                int d3 = uVar.d();
                String str2 = valueOf;
                if (d3 > 0) {
                    str2 = valueOf + "/" + d3;
                }
                return new TextInformationFrame(str, null, str2);
            }
        }
        n.a("MetadataUtil", "Failed to parse index/count attribute: " + a.b(i));
        return null;
    }
}
