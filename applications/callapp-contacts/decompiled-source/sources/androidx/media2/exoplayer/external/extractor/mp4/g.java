package androidx.media2.exoplayer.external.extractor.mp4;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.k;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.CommentFrame;
import androidx.media2.exoplayer.external.metadata.id3.Id3Frame;
import androidx.media2.exoplayer.external.metadata.id3.InternalFrame;
import androidx.media2.exoplayer.external.metadata.id3.TextInformationFrame;
import androidx.media2.exoplayer.external.util.j;
import androidx.media2.exoplayer.external.util.p;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f3356a = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    private g() {
    }

    public static Format a(int i, Format format, Metadata metadata, Metadata metadata2, k kVar) {
        Format format2;
        if (i == 1) {
            Format format3 = format;
            if (kVar.a()) {
                format3 = format.copyWithGaplessInfo(kVar.f3306a, kVar.f3307b);
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
                        format = format;
                        if (entry instanceof MdtaMetadataEntry) {
                            MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) entry;
                            format = format;
                            if (MdtaMetadataEntry.KEY_ANDROID_CAPTURE_FPS.equals(mdtaMetadataEntry.key)) {
                                format = format;
                                if (mdtaMetadataEntry.typeIndicator == 23) {
                                    format = format;
                                    try {
                                        format = format.copyWithFrameRate(ByteBuffer.wrap(mdtaMetadataEntry.value).asFloatBuffer().get()).copyWithMetadata(new Metadata(mdtaMetadataEntry));
                                    } catch (NumberFormatException e) {
                                        j.a("MetadataUtil", "Ignoring invalid framerate");
                                    }
                                }
                            }
                        }
                        i2++;
                    }
                }
            }
        }
        return format2;
    }

    public static MdtaMetadataEntry a(p pVar, int i, String str) {
        while (true) {
            int i2 = pVar.f4167b;
            if (i2 >= i) {
                return null;
            }
            int i3 = pVar.i();
            if (pVar.i() == 1684108385) {
                int i4 = pVar.i();
                int i5 = pVar.i();
                int i6 = i3 - 16;
                byte[] bArr = new byte[i6];
                pVar.a(bArr, 0, i6);
                return new MdtaMetadataEntry(str, bArr, i5, i4);
            }
            pVar.c(i2 + i3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0061 A[Catch: all -> 0x0330, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0330, blocks: (B:8:0x0039, B:10:0x0042, B:17:0x0061, B:18:0x0073, B:24:0x008f, B:29:0x00a8, B:34:0x00c1, B:39:0x00dc, B:44:0x00f7, B:46:0x0106, B:56:0x0133, B:58:0x0161, B:60:0x016b, B:61:0x018a, B:67:0x01a6, B:72:0x01bf, B:77:0x01d8, B:82:0x01f1, B:87:0x020a, B:92:0x0223, B:97:0x023c, B:102:0x0257, B:107:0x0272, B:112:0x028b, B:117:0x02a4, B:122:0x02c0, B:124:0x02cf, B:125:0x02f2, B:127:0x0303, B:128:0x0310, B:130:0x031f, B:145:0x035e, B:150:0x0377, B:155:0x0390, B:160:0x03a9, B:165:0x03c2, B:170:0x03db, B:175:0x03f4, B:178:0x0406, B:180:0x0417, B:181:0x0423, B:182:0x042e, B:182:0x042e, B:186:0x0438, B:189:0x044a), top: B:194:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0073 A[Catch: all -> 0x0330, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0330, blocks: (B:8:0x0039, B:10:0x0042, B:17:0x0061, B:18:0x0073, B:24:0x008f, B:29:0x00a8, B:34:0x00c1, B:39:0x00dc, B:44:0x00f7, B:46:0x0106, B:56:0x0133, B:58:0x0161, B:60:0x016b, B:61:0x018a, B:67:0x01a6, B:72:0x01bf, B:77:0x01d8, B:82:0x01f1, B:87:0x020a, B:92:0x0223, B:97:0x023c, B:102:0x0257, B:107:0x0272, B:112:0x028b, B:117:0x02a4, B:122:0x02c0, B:124:0x02cf, B:125:0x02f2, B:127:0x0303, B:128:0x0310, B:130:0x031f, B:145:0x035e, B:150:0x0377, B:155:0x0390, B:160:0x03a9, B:165:0x03c2, B:170:0x03db, B:175:0x03f4, B:178:0x0406, B:180:0x0417, B:181:0x0423, B:182:0x042e, B:182:0x042e, B:186:0x0438, B:189:0x044a), top: B:194:0x0025 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.media2.exoplayer.external.metadata.Metadata.Entry a(androidx.media2.exoplayer.external.util.p r7) {
        /*
            Method dump skipped, instructions count: 1124
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.g.a(androidx.media2.exoplayer.external.util.p):androidx.media2.exoplayer.external.metadata.Metadata$Entry");
    }

    private static Id3Frame a(int i, String str, p pVar, boolean z, boolean z2) {
        int b2 = b(pVar);
        int i2 = b2;
        if (z2) {
            i2 = Math.min(1, b2);
        }
        if (i2 >= 0) {
            return z ? new TextInformationFrame(str, null, Integer.toString(i2)) : new CommentFrame("und", str, Integer.toString(i2));
        }
        String valueOf = String.valueOf(a.b(i));
        j.a("MetadataUtil", valueOf.length() != 0 ? "Failed to parse uint8 attribute: ".concat(valueOf) : new String("Failed to parse uint8 attribute: "));
        return null;
    }

    private static Id3Frame a(p pVar, int i) {
        String str = null;
        String str2 = null;
        int i2 = -1;
        int i3 = -1;
        while (pVar.f4167b < i) {
            i2 = pVar.f4167b;
            int i4 = pVar.i();
            int i5 = pVar.i();
            pVar.d(4);
            if (i5 == 1835360622) {
                str = pVar.f(i4 - 12);
            } else if (i5 == 1851878757) {
                str2 = pVar.f(i4 - 12);
            } else {
                if (i5 == 1684108385) {
                    i3 = i4;
                }
                pVar.d(i4 - 12);
            }
        }
        if (str == null || str2 == null || i2 == -1) {
            return null;
        }
        pVar.c(i2);
        pVar.d(16);
        return new InternalFrame(str, str2, pVar.f(i3 - 16));
    }

    private static TextInformationFrame a(int i, String str, p pVar) {
        int i2 = pVar.i();
        if (pVar.i() == 1684108385) {
            pVar.d(8);
            return new TextInformationFrame(str, null, pVar.f(i2 - 16));
        }
        String valueOf = String.valueOf(a.b(i));
        j.a("MetadataUtil", valueOf.length() != 0 ? "Failed to parse text attribute: ".concat(valueOf) : new String("Failed to parse text attribute: "));
        return null;
    }

    private static int b(p pVar) {
        pVar.d(4);
        if (pVar.i() == 1684108385) {
            pVar.d(8);
            return pVar.c();
        }
        j.a("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    private static TextInformationFrame b(int i, String str, p pVar) {
        int i2 = pVar.i();
        if (pVar.i() == 1684108385 && i2 >= 22) {
            pVar.d(10);
            int d2 = pVar.d();
            if (d2 > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(d2);
                String sb2 = sb.toString();
                int d3 = pVar.d();
                String str2 = sb2;
                if (d3 > 0) {
                    String valueOf = String.valueOf(sb2);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 12);
                    sb3.append(valueOf);
                    sb3.append("/");
                    sb3.append(d3);
                    str2 = sb3.toString();
                }
                return new TextInformationFrame(str, null, str2);
            }
        }
        String valueOf2 = String.valueOf(a.b(i));
        j.a("MetadataUtil", valueOf2.length() != 0 ? "Failed to parse index/count attribute: ".concat(valueOf2) : new String("Failed to parse index/count attribute: "));
        return null;
    }
}
