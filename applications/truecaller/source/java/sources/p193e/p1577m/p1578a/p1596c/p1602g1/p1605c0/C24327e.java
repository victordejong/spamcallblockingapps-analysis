package p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.tenor.android.core.constant.StringConstant;
import java.nio.ByteBuffer;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24414m;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.c0.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/c0/e.class */
public final class C24327e {

    /* renamed from: a */
    public static final String[] f67588a = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};

    /* renamed from: a */
    public static Format m5245a(int i, Format format, Metadata metadata, Metadata metadata2, C24414m c24414m) {
        Format format2;
        if (i == 1) {
            int i2 = c24414m.f68099a;
            Format format3 = format;
            if ((i2 == -1 || c24414m.f68100b == -1) ? false : true) {
                format3 = format.m39257c(i2, c24414m.f68100b);
            }
            format2 = format3;
            if (metadata != null) {
                format2 = format3.m39259a(format3.f4850l, metadata);
            }
        } else {
            format2 = format;
            if (i == 2) {
                format2 = format;
                if (metadata2 != null) {
                    int i3 = 0;
                    while (true) {
                        Metadata.Entry[] entryArr = metadata2.f4888a;
                        format2 = format;
                        if (i3 >= entryArr.length) {
                            break;
                        }
                        Metadata.Entry entry = entryArr[i3];
                        Format format4 = format;
                        if (entry instanceof MdtaMetadataEntry) {
                            MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) entry;
                            format4 = format;
                            if ("com.android.capture.fps".equals(mdtaMetadataEntry.f4884a)) {
                                format4 = format;
                                if (mdtaMetadataEntry.f4887d == 23) {
                                    format4 = format;
                                    try {
                                        Format m39258b = format.m39258b(ByteBuffer.wrap(mdtaMetadataEntry.f4885b).asFloatBuffer().get());
                                        format4 = m39258b.m39259a(m39258b.f4850l, new Metadata(mdtaMetadataEntry));
                                    } catch (NumberFormatException e) {
                                    }
                                }
                            }
                        }
                        i3++;
                        format = format4;
                    }
                }
            }
        }
        return format2;
    }

    /* renamed from: b */
    public static TextInformationFrame m5244b(int i, String str, C24798t c24798t) {
        int m4541e = c24798t.m4541e();
        if (c24798t.m4541e() == 1684108385 && m4541e >= 22) {
            c24798t.m4546D(10);
            int m4524v = c24798t.m4524v();
            if (m4524v > 0) {
                String m8611i2 = C22128a.m8611i2("", m4524v);
                int m4524v2 = c24798t.m4524v();
                String str2 = m8611i2;
                if (m4524v2 > 0) {
                    str2 = m8611i2 + StringConstant.SLASH + m4524v2;
                }
                return new TextInformationFrame(str, null, str2);
            }
        }
        AbstractC24316a.m5266a(i);
        return null;
    }

    /* renamed from: c */
    public static TextInformationFrame m5243c(int i, String str, C24798t c24798t) {
        int m4541e = c24798t.m4541e();
        if (c24798t.m4541e() == 1684108385) {
            c24798t.m4546D(8);
            return new TextInformationFrame(str, null, c24798t.m4533m(m4541e - 16));
        }
        AbstractC24316a.m5266a(i);
        return null;
    }

    /* renamed from: d */
    public static Id3Frame m5242d(int i, String str, C24798t c24798t, boolean z, boolean z2) {
        int m5241e = m5241e(c24798t);
        int i2 = m5241e;
        if (z2) {
            i2 = Math.min(1, m5241e);
        }
        if (i2 >= 0) {
            return z ? new TextInformationFrame(str, null, Integer.toString(i2)) : new CommentFrame("und", str, Integer.toString(i2));
        }
        AbstractC24316a.m5266a(i);
        return null;
    }

    /* renamed from: e */
    public static int m5241e(C24798t c24798t) {
        c24798t.m4546D(4);
        if (c24798t.m4541e() == 1684108385) {
            c24798t.m4546D(8);
            return c24798t.m4529q();
        }
        return -1;
    }
}
