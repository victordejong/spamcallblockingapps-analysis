package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.mp4.MdtaMetadataEntry;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.CommentFrame;
import androidx.media2.exoplayer.external.metadata.id3.Id3Frame;
import androidx.media2.exoplayer.external.metadata.id3.TextInformationFrame;
import com.tenor.android.core.constant.StringConstant;
import java.nio.ByteBuffer;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27182j;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.u.e */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/u/e.class */
public final class C27224e {

    /* renamed from: a */
    public static final String[] f76324a = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    /* renamed from: a */
    public static Format m681a(int i, Format format, Metadata metadata, Metadata metadata2, C27182j c27182j) {
        Format format2;
        if (i == 1) {
            Format format3 = format;
            if (c27182j.m747a()) {
                format3 = format.m42849c(c27182j.f76038a, c27182j.f76039b);
            }
            format2 = format3;
            if (metadata != null) {
                format2 = format3.m42851a(format3.f963l, metadata);
            }
        } else {
            format2 = format;
            if (i == 2) {
                format2 = format;
                if (metadata2 != null) {
                    int i2 = 0;
                    while (true) {
                        Metadata.Entry[] entryArr = metadata2.f991a;
                        format2 = format;
                        if (i2 >= entryArr.length) {
                            break;
                        }
                        Metadata.Entry entry = entryArr[i2];
                        Format format4 = format;
                        if (entry instanceof MdtaMetadataEntry) {
                            MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) entry;
                            format4 = format;
                            if ("com.android.capture.fps".equals(mdtaMetadataEntry.f987a)) {
                                format4 = format;
                                if (mdtaMetadataEntry.f990d == 23) {
                                    format4 = format;
                                    try {
                                        Format m42850b = format.m42850b(ByteBuffer.wrap(mdtaMetadataEntry.f988b).asFloatBuffer().get());
                                        format4 = m42850b.m42851a(m42850b.f963l, new Metadata(mdtaMetadataEntry));
                                    } catch (NumberFormatException e) {
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
    public static TextInformationFrame m680b(int i, String str, C27434m c27434m) {
        int m337d = c27434m.m337d();
        if (c27434m.m337d() == 1684108385 && m337d >= 22) {
            c27434m.m341A(10);
            int m321t = c27434m.m321t();
            if (m321t > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(m321t);
                String sb2 = sb.toString();
                int m321t2 = c27434m.m321t();
                String str2 = sb2;
                if (m321t2 > 0) {
                    String valueOf = String.valueOf(sb2);
                    StringBuilder sb3 = new StringBuilder(valueOf.length() + 12);
                    sb3.append(valueOf);
                    sb3.append(StringConstant.SLASH);
                    sb3.append(m321t2);
                    str2 = sb3.toString();
                }
                return new TextInformationFrame(str, (String) null, str2);
            }
        }
        String valueOf2 = String.valueOf(AbstractC27213a.m701a(i));
        if (valueOf2.length() != 0) {
            "Failed to parse index/count attribute: ".concat(valueOf2);
            return null;
        }
        new String("Failed to parse index/count attribute: ");
        return null;
    }

    /* renamed from: c */
    public static TextInformationFrame m679c(int i, String str, C27434m c27434m) {
        int m337d = c27434m.m337d();
        if (c27434m.m337d() == 1684108385) {
            c27434m.m341A(8);
            return new TextInformationFrame(str, (String) null, c27434m.m329l(m337d - 16));
        }
        String valueOf = String.valueOf(AbstractC27213a.m701a(i));
        if (valueOf.length() != 0) {
            "Failed to parse text attribute: ".concat(valueOf);
            return null;
        }
        new String("Failed to parse text attribute: ");
        return null;
    }

    /* renamed from: d */
    public static Id3Frame m678d(int i, String str, C27434m c27434m, boolean z, boolean z2) {
        int m677e = m677e(c27434m);
        int i2 = m677e;
        if (z2) {
            i2 = Math.min(1, m677e);
        }
        if (i2 >= 0) {
            return z ? new TextInformationFrame(str, (String) null, Integer.toString(i2)) : new CommentFrame("und", str, Integer.toString(i2));
        }
        String valueOf = String.valueOf(AbstractC27213a.m701a(i));
        if (valueOf.length() != 0) {
            "Failed to parse uint8 attribute: ".concat(valueOf);
            return null;
        }
        new String("Failed to parse uint8 attribute: ");
        return null;
    }

    /* renamed from: e */
    public static int m677e(C27434m c27434m) {
        c27434m.m341A(4);
        if (c27434m.m337d() == 1684108385) {
            c27434m.m341A(8);
            return c27434m.m326o();
        }
        return -1;
    }
}
