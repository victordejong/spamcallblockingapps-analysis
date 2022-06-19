package androidx.media2.exoplayer.external.extractor.mp4;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.C1603k;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.CommentFrame;
import androidx.media2.exoplayer.external.metadata.id3.Id3Frame;
import androidx.media2.exoplayer.external.metadata.id3.InternalFrame;
import androidx.media2.exoplayer.external.metadata.id3.TextInformationFrame;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2018p;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import java.nio.ByteBuffer;
/* renamed from: androidx.media2.exoplayer.external.extractor.mp4.g */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/g.class */
public final class C1625g {

    /* renamed from: a */
    private static final String[] f6425a = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    private C1625g() {
    }

    /* renamed from: a */
    public static Format m42537a(int i, Format format, Metadata metadata, Metadata metadata2, C1603k c1603k) {
        Format format2;
        if (i == 1) {
            Format format3 = format;
            if (c1603k.m42599a()) {
                format3 = format.copyWithGaplessInfo(c1603k.f6316a, c1603k.f6317b);
            }
            format2 = format3;
            if (metadata != null) {
                format2 = format3.copyWithMetadata(metadata);
            }
        } else {
            format2 = format;
            if (i == 2) {
                format2 = format;
                if (metadata2 != null) {
                    int i2 = 0;
                    while (true) {
                        format2 = format;
                        if (i2 >= metadata2.length()) {
                            break;
                        }
                        Metadata.Entry entry = metadata2.get(i2);
                        Format format4 = format;
                        if (entry instanceof MdtaMetadataEntry) {
                            MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) entry;
                            format4 = format;
                            if (MdtaMetadataEntry.KEY_ANDROID_CAPTURE_FPS.equals(mdtaMetadataEntry.key)) {
                                format4 = format;
                                if (mdtaMetadataEntry.typeIndicator == 23) {
                                    format4 = format;
                                    try {
                                        format4 = format.copyWithFrameRate(ByteBuffer.wrap(mdtaMetadataEntry.value).asFloatBuffer().get()).copyWithMetadata(new Metadata(mdtaMetadataEntry));
                                    } catch (NumberFormatException e) {
                                        C2009j.m41584a("MetadataUtil", "Ignoring invalid framerate");
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

    /* renamed from: a */
    public static MdtaMetadataEntry m42532a(C2018p c2018p, int i, String str) {
        while (true) {
            int i2 = c2018p.f8132b;
            if (i2 < i) {
                int m41524i = c2018p.m41524i();
                if (c2018p.m41524i() == 1684108385) {
                    int m41524i2 = c2018p.m41524i();
                    int m41524i3 = c2018p.m41524i();
                    int i3 = m41524i - 16;
                    byte[] bArr = new byte[i3];
                    c2018p.m41537a(bArr, 0, i3);
                    return new MdtaMetadataEntry(str, bArr, m41524i3, m41524i2);
                }
                c2018p.m41533c(i2 + m41524i);
            } else {
                return null;
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0061 A[Catch: all -> 0x0330, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0330, blocks: (B:8:0x0039, B:10:0x0042, B:17:0x0061, B:18:0x0073, B:24:0x008f, B:29:0x00a8, B:34:0x00c1, B:39:0x00dc, B:44:0x00f7, B:46:0x0106, B:56:0x0133, B:58:0x0161, B:60:0x016b, B:61:0x018a, B:67:0x01a6, B:72:0x01bf, B:77:0x01d8, B:82:0x01f1, B:87:0x020a, B:92:0x0223, B:97:0x023c, B:102:0x0257, B:107:0x0272, B:112:0x028b, B:117:0x02a4, B:122:0x02c0, B:124:0x02cf, B:125:0x02f2, B:127:0x0303, B:128:0x0310, B:130:0x031f, B:145:0x035e, B:150:0x0377, B:155:0x0390, B:160:0x03a9, B:165:0x03c2, B:170:0x03db, B:175:0x03f4, B:178:0x0406, B:180:0x0417, B:181:0x0423, B:182:0x042e, B:182:0x042e, B:186:0x0438, B:189:0x044a), top: B:194:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0073 A[Catch: all -> 0x0330, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0330, blocks: (B:8:0x0039, B:10:0x0042, B:17:0x0061, B:18:0x0073, B:24:0x008f, B:29:0x00a8, B:34:0x00c1, B:39:0x00dc, B:44:0x00f7, B:46:0x0106, B:56:0x0133, B:58:0x0161, B:60:0x016b, B:61:0x018a, B:67:0x01a6, B:72:0x01bf, B:77:0x01d8, B:82:0x01f1, B:87:0x020a, B:92:0x0223, B:97:0x023c, B:102:0x0257, B:107:0x0272, B:112:0x028b, B:117:0x02a4, B:122:0x02c0, B:124:0x02cf, B:125:0x02f2, B:127:0x0303, B:128:0x0310, B:130:0x031f, B:145:0x035e, B:150:0x0377, B:155:0x0390, B:160:0x03a9, B:165:0x03c2, B:170:0x03db, B:175:0x03f4, B:178:0x0406, B:180:0x0417, B:181:0x0423, B:182:0x042e, B:182:0x042e, B:186:0x0438, B:189:0x044a), top: B:194:0x0025 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.media2.exoplayer.external.metadata.Metadata.Entry m42534a(androidx.media2.exoplayer.external.util.C2018p r7) {
        /*
            Method dump skipped, instructions count: 1124
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.C1625g.m42534a(androidx.media2.exoplayer.external.util.p):androidx.media2.exoplayer.external.metadata.Metadata$Entry");
    }

    /* renamed from: a */
    private static Id3Frame m42535a(int i, String str, C2018p c2018p, boolean z, boolean z2) {
        int m42530b = m42530b(c2018p);
        int i2 = m42530b;
        if (z2) {
            i2 = Math.min(1, m42530b);
        }
        if (i2 >= 0) {
            return z ? new TextInformationFrame(str, null, Integer.toString(i2)) : new CommentFrame("und", str, Integer.toString(i2));
        }
        String valueOf = String.valueOf(AbstractC1607a.m42592b(i));
        C2009j.m41584a("MetadataUtil", valueOf.length() != 0 ? "Failed to parse uint8 attribute: ".concat(valueOf) : new String("Failed to parse uint8 attribute: "));
        return null;
    }

    /* renamed from: a */
    private static Id3Frame m42533a(C2018p c2018p, int i) {
        String str = null;
        String str2 = null;
        int i2 = -1;
        int i3 = -1;
        while (c2018p.f8132b < i) {
            int i4 = c2018p.f8132b;
            int m41524i = c2018p.m41524i();
            int m41524i2 = c2018p.m41524i();
            c2018p.m41531d(4);
            if (m41524i2 == 1835360622) {
                str = c2018p.m41527f(m41524i - 12);
            } else if (m41524i2 == 1851878757) {
                str2 = c2018p.m41527f(m41524i - 12);
            } else {
                if (m41524i2 == 1684108385) {
                    i2 = i4;
                    i3 = m41524i;
                }
                c2018p.m41531d(m41524i - 12);
            }
        }
        if (str == null || str2 == null || i2 == -1) {
            return null;
        }
        c2018p.m41533c(i2);
        c2018p.m41531d(16);
        return new InternalFrame(str, str2, c2018p.m41527f(i3 - 16));
    }

    /* renamed from: a */
    private static TextInformationFrame m42536a(int i, String str, C2018p c2018p) {
        int m41524i = c2018p.m41524i();
        if (c2018p.m41524i() == 1684108385) {
            c2018p.m41531d(8);
            return new TextInformationFrame(str, null, c2018p.m41527f(m41524i - 16));
        }
        String valueOf = String.valueOf(AbstractC1607a.m42592b(i));
        C2009j.m41584a("MetadataUtil", valueOf.length() != 0 ? "Failed to parse text attribute: ".concat(valueOf) : new String("Failed to parse text attribute: "));
        return null;
    }

    /* renamed from: b */
    private static int m42530b(C2018p c2018p) {
        c2018p.m41531d(4);
        if (c2018p.m41524i() == 1684108385) {
            c2018p.m41531d(8);
            return c2018p.m41534c();
        }
        C2009j.m41584a("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    /* renamed from: b */
    private static TextInformationFrame m42531b(int i, String str, C2018p c2018p) {
        int m41524i = c2018p.m41524i();
        if (c2018p.m41524i() == 1684108385 && m41524i >= 22) {
            c2018p.m41531d(10);
            int m41532d = c2018p.m41532d();
            if (m41532d > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(m41532d);
                String sb2 = sb.toString();
                int m41532d2 = c2018p.m41532d();
                String str2 = sb2;
                if (m41532d2 > 0) {
                    String valueOf = String.valueOf(sb2);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 12);
                    sb3.append(valueOf);
                    sb3.append("/");
                    sb3.append(m41532d2);
                    str2 = sb3.toString();
                }
                return new TextInformationFrame(str, null, str2);
            }
        }
        String valueOf2 = String.valueOf(AbstractC1607a.m42592b(i));
        C2009j.m41584a("MetadataUtil", valueOf2.length() != 0 ? "Failed to parse index/count attribute: ".concat(valueOf2) : new String("Failed to parse index/count attribute: "));
        return null;
    }
}
