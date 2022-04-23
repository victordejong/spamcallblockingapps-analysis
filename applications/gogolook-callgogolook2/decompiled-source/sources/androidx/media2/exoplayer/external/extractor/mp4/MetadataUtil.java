package androidx.media2.exoplayer.external.extractor.mp4;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.GaplessInfoHolder;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.ApicFrame;
import androidx.media2.exoplayer.external.metadata.id3.CommentFrame;
import androidx.media2.exoplayer.external.metadata.id3.Id3Frame;
import androidx.media2.exoplayer.external.metadata.id3.InternalFrame;
import androidx.media2.exoplayer.external.metadata.id3.TextInformationFrame;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.nio.ByteBuffer;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/MetadataUtil.class */
public final class MetadataUtil {
    public static final String LANGUAGE_UNDEFINED = "und";
    public static final String MDTA_KEY_ANDROID_CAPTURE_FPS = "com.android.capture.fps";
    public static final int MDTA_TYPE_INDICATOR_FLOAT = 23;
    public static final int PICTURE_TYPE_FRONT_COVER = 3;
    public static final int SHORT_TYPE_ALBUM = 6384738;
    public static final int SHORT_TYPE_ARTIST = 4280916;
    public static final int SHORT_TYPE_COMMENT = 6516084;
    public static final int SHORT_TYPE_COMPOSER_1 = 6516589;
    public static final int SHORT_TYPE_COMPOSER_2 = 7828084;
    public static final int SHORT_TYPE_ENCODER = 7630703;
    public static final int SHORT_TYPE_GENRE = 6776174;
    public static final int SHORT_TYPE_LYRICS = 7108978;
    public static final int SHORT_TYPE_NAME_1 = 7233901;
    public static final int SHORT_TYPE_NAME_2 = 7631467;
    public static final int SHORT_TYPE_YEAR = 6578553;
    public static final String[] STANDARD_GENRES = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};
    public static final String TAG = "MetadataUtil";
    public static final int TYPE_ALBUM_ARTIST = 1631670868;
    public static final int TYPE_COMPILATION = 1668311404;
    public static final int TYPE_COVER_ART = 1668249202;
    public static final int TYPE_DISK_NUMBER = 1684632427;
    public static final int TYPE_GAPLESS_ALBUM = 1885823344;
    public static final int TYPE_GENRE = 1735291493;
    public static final int TYPE_GROUPING = 6779504;
    public static final int TYPE_INTERNAL = 757935405;
    public static final int TYPE_RATING = 1920233063;
    public static final int TYPE_SORT_ALBUM = 1936679276;
    public static final int TYPE_SORT_ALBUM_ARTIST = 1936679265;
    public static final int TYPE_SORT_ARTIST = 1936679282;
    public static final int TYPE_SORT_COMPOSER = 1936679791;
    public static final int TYPE_SORT_TRACK_NAME = 1936682605;
    public static final int TYPE_TEMPO = 1953329263;
    public static final int TYPE_TOP_BYTE_COPYRIGHT = 169;
    public static final int TYPE_TOP_BYTE_REPLACEMENT = 253;
    public static final int TYPE_TRACK_NUMBER = 1953655662;
    public static final int TYPE_TV_SHOW = 1953919848;
    public static final int TYPE_TV_SORT_SHOW = 1936683886;

    public static Format getFormatWithMetadata(int i, Format format, @Nullable Metadata metadata, @Nullable Metadata metadata2, GaplessInfoHolder gaplessInfoHolder) {
        Format format2;
        if (i == 1) {
            Format format3 = format;
            if (gaplessInfoHolder.hasGaplessInfo()) {
                format3 = format.copyWithGaplessInfo(gaplessInfoHolder.encoderDelay, gaplessInfoHolder.encoderPadding);
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
                    for (int i2 = 0; i2 < metadata2.length(); i2++) {
                        Metadata.Entry entry = metadata2.get(i2);
                        format = format;
                        if (entry instanceof MdtaMetadataEntry) {
                            MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) entry;
                            format = format;
                            if (MDTA_KEY_ANDROID_CAPTURE_FPS.equals(mdtaMetadataEntry.key)) {
                                format = format;
                                if (mdtaMetadataEntry.typeIndicator == 23) {
                                    format = format;
                                    try {
                                        format = format.copyWithFrameRate(ByteBuffer.wrap(mdtaMetadataEntry.value).asFloatBuffer().get()).copyWithMetadata(new Metadata(mdtaMetadataEntry));
                                    } catch (NumberFormatException e) {
                                        Log.m37483w(TAG, "Ignoring invalid framerate");
                                    }
                                }
                            }
                        }
                    }
                    format2 = format;
                }
            }
        }
        return format2;
    }

    @Nullable
    public static CommentFrame parseCommentAttribute(int i, ParsableByteArray parsableByteArray) {
        int readInt = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == 1684108385) {
            parsableByteArray.skipBytes(8);
            String readNullTerminatedString = parsableByteArray.readNullTerminatedString(readInt - 16);
            return new CommentFrame("und", readNullTerminatedString, readNullTerminatedString);
        }
        String valueOf = String.valueOf(Atom.getAtomTypeString(i));
        Log.m37483w(TAG, valueOf.length() != 0 ? "Failed to parse comment attribute: ".concat(valueOf) : new String("Failed to parse comment attribute: "));
        return null;
    }

    @Nullable
    public static ApicFrame parseCoverArt(ParsableByteArray parsableByteArray) {
        int readInt = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == 1684108385) {
            int parseFullAtomFlags = Atom.parseFullAtomFlags(parsableByteArray.readInt());
            String str = parseFullAtomFlags == 13 ? "image/jpeg" : parseFullAtomFlags == 14 ? "image/png" : null;
            if (str == null) {
                StringBuilder sb = new StringBuilder(41);
                sb.append("Unrecognized cover art flags: ");
                sb.append(parseFullAtomFlags);
                Log.m37483w(TAG, sb.toString());
                return null;
            }
            parsableByteArray.skipBytes(4);
            byte[] bArr = new byte[readInt - 16];
            parsableByteArray.readBytes(bArr, 0, bArr.length);
            return new ApicFrame(str, null, 3, bArr);
        }
        Log.m37483w(TAG, "Failed to parse cover art attribute");
        return null;
    }

    @Nullable
    public static Metadata.Entry parseIlstElement(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition() + parsableByteArray.readInt();
        int readInt = parsableByteArray.readInt();
        int i = (readInt >> 24) & 255;
        try {
            if (i == 169 || i == 253) {
                int i2 = 16777215 & readInt;
                if (i2 == 6516084) {
                    return parseCommentAttribute(readInt, parsableByteArray);
                }
                if (i2 == 7233901 || i2 == 7631467) {
                    return parseTextAttribute(readInt, "TIT2", parsableByteArray);
                }
                if (i2 == 6516589 || i2 == 7828084) {
                    return parseTextAttribute(readInt, "TCOM", parsableByteArray);
                }
                if (i2 == 6578553) {
                    return parseTextAttribute(readInt, "TDRC", parsableByteArray);
                }
                if (i2 == 4280916) {
                    return parseTextAttribute(readInt, "TPE1", parsableByteArray);
                }
                if (i2 == 7630703) {
                    return parseTextAttribute(readInt, "TSSE", parsableByteArray);
                }
                if (i2 == 6384738) {
                    return parseTextAttribute(readInt, "TALB", parsableByteArray);
                }
                if (i2 == 7108978) {
                    return parseTextAttribute(readInt, "USLT", parsableByteArray);
                }
                if (i2 == 6776174) {
                    return parseTextAttribute(readInt, "TCON", parsableByteArray);
                }
                if (i2 == 6779504) {
                    return parseTextAttribute(readInt, "TIT1", parsableByteArray);
                }
            } else if (readInt == 1735291493) {
                return parseStandardGenreAttribute(parsableByteArray);
            } else {
                if (readInt == 1684632427) {
                    return parseIndexAndCountAttribute(readInt, "TPOS", parsableByteArray);
                }
                if (readInt == 1953655662) {
                    return parseIndexAndCountAttribute(readInt, "TRCK", parsableByteArray);
                }
                if (readInt == 1953329263) {
                    return parseUint8Attribute(readInt, "TBPM", parsableByteArray, true, false);
                }
                if (readInt == 1668311404) {
                    return parseUint8Attribute(readInt, "TCMP", parsableByteArray, true, true);
                }
                if (readInt == 1668249202) {
                    return parseCoverArt(parsableByteArray);
                }
                if (readInt == 1631670868) {
                    return parseTextAttribute(readInt, "TPE2", parsableByteArray);
                }
                if (readInt == 1936682605) {
                    return parseTextAttribute(readInt, "TSOT", parsableByteArray);
                }
                if (readInt == 1936679276) {
                    return parseTextAttribute(readInt, "TSO2", parsableByteArray);
                }
                if (readInt == 1936679282) {
                    return parseTextAttribute(readInt, "TSOA", parsableByteArray);
                }
                if (readInt == 1936679265) {
                    return parseTextAttribute(readInt, "TSOP", parsableByteArray);
                }
                if (readInt == 1936679791) {
                    return parseTextAttribute(readInt, "TSOC", parsableByteArray);
                }
                if (readInt == 1920233063) {
                    return parseUint8Attribute(readInt, "ITUNESADVISORY", parsableByteArray, false, false);
                }
                if (readInt == 1885823344) {
                    return parseUint8Attribute(readInt, "ITUNESGAPLESS", parsableByteArray, false, true);
                }
                if (readInt == 1936683886) {
                    return parseTextAttribute(readInt, "TVSHOWSORT", parsableByteArray);
                }
                if (readInt == 1953919848) {
                    return parseTextAttribute(readInt, "TVSHOW", parsableByteArray);
                }
                if (readInt == 757935405) {
                    return parseInternalAttribute(parsableByteArray, position);
                }
            }
            String valueOf = String.valueOf(Atom.getAtomTypeString(readInt));
            Log.m37489d(TAG, valueOf.length() != 0 ? "Skipped unknown metadata entry: ".concat(valueOf) : new String("Skipped unknown metadata entry: "));
            parsableByteArray.setPosition(position);
            return null;
        } finally {
            parsableByteArray.setPosition(position);
        }
    }

    @Nullable
    public static TextInformationFrame parseIndexAndCountAttribute(int i, String str, ParsableByteArray parsableByteArray) {
        int readInt = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == 1684108385 && readInt >= 22) {
            parsableByteArray.skipBytes(10);
            int readUnsignedShort = parsableByteArray.readUnsignedShort();
            if (readUnsignedShort > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(readUnsignedShort);
                String sb2 = sb.toString();
                int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
                String str2 = sb2;
                if (readUnsignedShort2 > 0) {
                    String valueOf = String.valueOf(sb2);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 12);
                    sb3.append(valueOf);
                    sb3.append("/");
                    sb3.append(readUnsignedShort2);
                    str2 = sb3.toString();
                }
                return new TextInformationFrame(str, null, str2);
            }
        }
        String valueOf2 = String.valueOf(Atom.getAtomTypeString(i));
        Log.m37483w(TAG, valueOf2.length() != 0 ? "Failed to parse index/count attribute: ".concat(valueOf2) : new String("Failed to parse index/count attribute: "));
        return null;
    }

    @Nullable
    public static Id3Frame parseInternalAttribute(ParsableByteArray parsableByteArray, int i) {
        String str = null;
        String str2 = null;
        int i2 = -1;
        int i3 = -1;
        while (parsableByteArray.getPosition() < i) {
            i2 = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            int readInt2 = parsableByteArray.readInt();
            parsableByteArray.skipBytes(4);
            if (readInt2 == 1835360622) {
                str = parsableByteArray.readNullTerminatedString(readInt - 12);
            } else if (readInt2 == 1851878757) {
                str2 = parsableByteArray.readNullTerminatedString(readInt - 12);
            } else {
                if (readInt2 == 1684108385) {
                    i3 = readInt;
                }
                parsableByteArray.skipBytes(readInt - 12);
            }
        }
        if (str == null || str2 == null || i2 == -1) {
            return null;
        }
        parsableByteArray.setPosition(i2);
        parsableByteArray.skipBytes(16);
        return new InternalFrame(str, str2, parsableByteArray.readNullTerminatedString(i3 - 16));
    }

    @Nullable
    public static MdtaMetadataEntry parseMdtaMetadataEntryFromIlst(ParsableByteArray parsableByteArray, int i, String str) {
        while (true) {
            int position = parsableByteArray.getPosition();
            if (position >= i) {
                return null;
            }
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1684108385) {
                int readInt2 = parsableByteArray.readInt();
                int readInt3 = parsableByteArray.readInt();
                int i2 = readInt - 16;
                byte[] bArr = new byte[i2];
                parsableByteArray.readBytes(bArr, 0, i2);
                return new MdtaMetadataEntry(str, bArr, readInt3, readInt2);
            }
            parsableByteArray.setPosition(position + readInt);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002f  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.media2.exoplayer.external.metadata.id3.TextInformationFrame parseStandardGenreAttribute(androidx.media2.exoplayer.external.util.ParsableByteArray r6) {
        /*
            r0 = r6
            int r0 = parseUint8AttributeValue(r0)
            r7 = r0
            r0 = r7
            if (r0 <= 0) goto L_0x001c
            java.lang.String[] r0 = androidx.media2.exoplayer.external.extractor.mp4.MetadataUtil.STANDARD_GENRES
            r6 = r0
            r0 = r7
            r1 = r6
            int r1 = r1.length
            if (r0 > r1) goto L_0x001c
            r0 = r6
            r1 = r7
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            r6 = r0
            goto L_0x001e
        L_0x001c:
            r0 = 0
            r6 = r0
        L_0x001e:
            r0 = r6
            if (r0 == 0) goto L_0x002f
            androidx.media2.exoplayer.external.metadata.id3.TextInformationFrame r0 = new androidx.media2.exoplayer.external.metadata.id3.TextInformationFrame
            r1 = r0
            java.lang.String r2 = "TCON"
            r3 = 0
            r4 = r6
            r1.<init>(r2, r3, r4)
            return r0
        L_0x002f:
            java.lang.String r0 = "MetadataUtil"
            java.lang.String r1 = "Failed to parse standard genre code"
            androidx.media2.exoplayer.external.util.Log.m37483w(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.MetadataUtil.parseStandardGenreAttribute(androidx.media2.exoplayer.external.util.ParsableByteArray):androidx.media2.exoplayer.external.metadata.id3.TextInformationFrame");
    }

    @Nullable
    public static TextInformationFrame parseTextAttribute(int i, String str, ParsableByteArray parsableByteArray) {
        int readInt = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == 1684108385) {
            parsableByteArray.skipBytes(8);
            return new TextInformationFrame(str, null, parsableByteArray.readNullTerminatedString(readInt - 16));
        }
        String valueOf = String.valueOf(Atom.getAtomTypeString(i));
        Log.m37483w(TAG, valueOf.length() != 0 ? "Failed to parse text attribute: ".concat(valueOf) : new String("Failed to parse text attribute: "));
        return null;
    }

    @Nullable
    public static Id3Frame parseUint8Attribute(int i, String str, ParsableByteArray parsableByteArray, boolean z, boolean z2) {
        int parseUint8AttributeValue = parseUint8AttributeValue(parsableByteArray);
        int i2 = parseUint8AttributeValue;
        if (z2) {
            i2 = Math.min(1, parseUint8AttributeValue);
        }
        if (i2 >= 0) {
            return z ? new TextInformationFrame(str, null, Integer.toString(i2)) : new CommentFrame("und", str, Integer.toString(i2));
        }
        String valueOf = String.valueOf(Atom.getAtomTypeString(i));
        Log.m37483w(TAG, valueOf.length() != 0 ? "Failed to parse uint8 attribute: ".concat(valueOf) : new String("Failed to parse uint8 attribute: "));
        return null;
    }

    public static int parseUint8AttributeValue(ParsableByteArray parsableByteArray) {
        parsableByteArray.skipBytes(4);
        if (parsableByteArray.readInt() == 1684108385) {
            parsableByteArray.skipBytes(8);
            return parsableByteArray.readUnsignedByte();
        }
        Log.m37483w(TAG, "Failed to parse uint8 attribute value");
        return -1;
    }
}
