package androidx.media2.exoplayer.external.source.hls.playlist;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.mp4.PsshAtomUtil;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.source.UnrecognizedInputFormatException;
import androidx.media2.exoplayer.external.source.hls.HlsTrackMetadataEntry;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsMasterPlaylist;
import androidx.media2.exoplayer.external.upstream.ParsingLoadable;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.UriUtil;
import androidx.media2.exoplayer.external.util.Util;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser.class */
public final class HlsPlaylistParser implements ParsingLoadable.Parser<HlsPlaylist> {
    public static final String ATTR_CLOSED_CAPTIONS_NONE = "CLOSED-CAPTIONS=NONE";
    public static final String BOOLEAN_FALSE = "NO";
    public static final String BOOLEAN_TRUE = "YES";
    public static final String KEYFORMAT_IDENTITY = "identity";
    public static final String KEYFORMAT_PLAYREADY = "com.microsoft.playready";
    public static final String KEYFORMAT_WIDEVINE_PSSH_BINARY = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed";
    public static final String KEYFORMAT_WIDEVINE_PSSH_JSON = "com.widevine";
    public static final String METHOD_AES_128 = "AES-128";
    public static final String METHOD_NONE = "NONE";
    public static final String METHOD_SAMPLE_AES = "SAMPLE-AES";
    public static final String METHOD_SAMPLE_AES_CENC = "SAMPLE-AES-CENC";
    public static final String METHOD_SAMPLE_AES_CTR = "SAMPLE-AES-CTR";
    public static final String PLAYLIST_HEADER = "#EXTM3U";
    public static final String TAG_BYTERANGE = "#EXT-X-BYTERANGE";
    public static final String TAG_DEFINE = "#EXT-X-DEFINE";
    public static final String TAG_DISCONTINUITY = "#EXT-X-DISCONTINUITY";
    public static final String TAG_DISCONTINUITY_SEQUENCE = "#EXT-X-DISCONTINUITY-SEQUENCE";
    public static final String TAG_ENDLIST = "#EXT-X-ENDLIST";
    public static final String TAG_GAP = "#EXT-X-GAP";
    public static final String TAG_INDEPENDENT_SEGMENTS = "#EXT-X-INDEPENDENT-SEGMENTS";
    public static final String TAG_INIT_SEGMENT = "#EXT-X-MAP";
    public static final String TAG_KEY = "#EXT-X-KEY";
    public static final String TAG_MEDIA = "#EXT-X-MEDIA";
    public static final String TAG_MEDIA_DURATION = "#EXTINF";
    public static final String TAG_MEDIA_SEQUENCE = "#EXT-X-MEDIA-SEQUENCE";
    public static final String TAG_PLAYLIST_TYPE = "#EXT-X-PLAYLIST-TYPE";
    public static final String TAG_PREFIX = "#EXT";
    public static final String TAG_PROGRAM_DATE_TIME = "#EXT-X-PROGRAM-DATE-TIME";
    public static final String TAG_SESSION_KEY = "#EXT-X-SESSION-KEY";
    public static final String TAG_START = "#EXT-X-START";
    public static final String TAG_STREAM_INF = "#EXT-X-STREAM-INF";
    public static final String TAG_TARGET_DURATION = "#EXT-X-TARGETDURATION";
    public static final String TAG_VERSION = "#EXT-X-VERSION";
    public static final String TYPE_AUDIO = "AUDIO";
    public static final String TYPE_CLOSED_CAPTIONS = "CLOSED-CAPTIONS";
    public static final String TYPE_SUBTITLES = "SUBTITLES";
    public static final String TYPE_VIDEO = "VIDEO";
    public final HlsMasterPlaylist masterPlaylist;
    public static final Pattern REGEX_AVERAGE_BANDWIDTH = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");
    public static final Pattern REGEX_VIDEO = Pattern.compile("VIDEO=\"(.+?)\"");
    public static final Pattern REGEX_AUDIO = Pattern.compile("AUDIO=\"(.+?)\"");
    public static final Pattern REGEX_SUBTITLES = Pattern.compile("SUBTITLES=\"(.+?)\"");
    public static final Pattern REGEX_CLOSED_CAPTIONS = Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");
    public static final Pattern REGEX_BANDWIDTH = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");
    public static final Pattern REGEX_CHANNELS = Pattern.compile("CHANNELS=\"(.+?)\"");
    public static final Pattern REGEX_CODECS = Pattern.compile("CODECS=\"(.+?)\"");
    public static final Pattern REGEX_RESOLUTION = Pattern.compile("RESOLUTION=(\\d+x\\d+)");
    public static final Pattern REGEX_FRAME_RATE = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");
    public static final Pattern REGEX_TARGET_DURATION = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");
    public static final Pattern REGEX_VERSION = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
    public static final Pattern REGEX_PLAYLIST_TYPE = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");
    public static final Pattern REGEX_MEDIA_SEQUENCE = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    public static final Pattern REGEX_MEDIA_DURATION = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");
    public static final Pattern REGEX_MEDIA_TITLE = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");
    public static final Pattern REGEX_TIME_OFFSET = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    public static final Pattern REGEX_BYTERANGE = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    public static final Pattern REGEX_ATTR_BYTERANGE = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    public static final Pattern REGEX_METHOD = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");
    public static final Pattern REGEX_KEYFORMAT = Pattern.compile("KEYFORMAT=\"(.+?)\"");
    public static final Pattern REGEX_KEYFORMATVERSIONS = Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");
    public static final Pattern REGEX_URI = Pattern.compile("URI=\"(.+?)\"");
    public static final Pattern REGEX_IV = Pattern.compile("IV=([^,.*]+)");
    public static final Pattern REGEX_TYPE = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    public static final Pattern REGEX_LANGUAGE = Pattern.compile("LANGUAGE=\"(.+?)\"");
    public static final Pattern REGEX_NAME = Pattern.compile("NAME=\"(.+?)\"");
    public static final Pattern REGEX_GROUP_ID = Pattern.compile("GROUP-ID=\"(.+?)\"");
    public static final Pattern REGEX_CHARACTERISTICS = Pattern.compile("CHARACTERISTICS=\"(.+?)\"");
    public static final Pattern REGEX_INSTREAM_ID = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    public static final Pattern REGEX_AUTOSELECT = compileBooleanAttrPattern("AUTOSELECT");
    public static final Pattern REGEX_DEFAULT = compileBooleanAttrPattern("DEFAULT");
    public static final Pattern REGEX_FORCED = compileBooleanAttrPattern("FORCED");
    public static final Pattern REGEX_VALUE = Pattern.compile("VALUE=\"(.+?)\"");
    public static final Pattern REGEX_IMPORT = Pattern.compile("IMPORT=\"(.+?)\"");
    public static final Pattern REGEX_VARIABLE_REFERENCE = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator.class */
    public static class LineIterator {
        public final Queue<String> extraLines;
        public String next;
        public final BufferedReader reader;

        public LineIterator(Queue<String> queue, BufferedReader bufferedReader) {
            this.extraLines = queue;
            this.reader = bufferedReader;
        }

        public boolean hasNext() throws IOException {
            if (this.next != null) {
                return true;
            }
            if (!this.extraLines.isEmpty()) {
                this.next = this.extraLines.poll();
                return true;
            }
            do {
                String readLine = this.reader.readLine();
                this.next = readLine;
                if (readLine == null) {
                    return false;
                }
                this.next = this.next.trim();
            } while (this.next.isEmpty());
            return true;
        }

        public String next() throws IOException {
            String str;
            if (hasNext()) {
                str = this.next;
                this.next = null;
            } else {
                str = null;
            }
            return str;
        }
    }

    public HlsPlaylistParser() {
        this(HlsMasterPlaylist.EMPTY);
    }

    public HlsPlaylistParser(HlsMasterPlaylist hlsMasterPlaylist) {
        this.masterPlaylist = hlsMasterPlaylist;
    }

    public static boolean checkPlaylistHeader(BufferedReader bufferedReader) throws IOException {
        int read = bufferedReader.read();
        int i = read;
        if (read == 239) {
            if (!(bufferedReader.read() == 187 && bufferedReader.read() == 191)) {
                return false;
            }
            i = bufferedReader.read();
        }
        int skipIgnorableWhitespace = skipIgnorableWhitespace(bufferedReader, true, i);
        for (int i2 = 0; i2 < 7; i2++) {
            if (skipIgnorableWhitespace != PLAYLIST_HEADER.charAt(i2)) {
                return false;
            }
            skipIgnorableWhitespace = bufferedReader.read();
        }
        return Util.isLinebreak(skipIgnorableWhitespace(bufferedReader, false, skipIgnorableWhitespace));
    }

    public static Pattern compileBooleanAttrPattern(String str) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 9);
        sb.append(str);
        sb.append("=(");
        sb.append("NO");
        sb.append("|");
        sb.append("YES");
        sb.append(")");
        return Pattern.compile(sb.toString());
    }

    public static HlsMasterPlaylist.Variant getVariantWithAudioGroup(ArrayList<HlsMasterPlaylist.Variant> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            HlsMasterPlaylist.Variant variant = arrayList.get(i);
            if (str.equals(variant.audioGroupId)) {
                return variant;
            }
        }
        return null;
    }

    public static HlsMasterPlaylist.Variant getVariantWithVideoGroup(ArrayList<HlsMasterPlaylist.Variant> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            HlsMasterPlaylist.Variant variant = arrayList.get(i);
            if (str.equals(variant.videoGroupId)) {
                return variant;
            }
        }
        return null;
    }

    public static int parseChannelsAttribute(String str, Map<String, String> map) {
        String parseOptionalStringAttr = parseOptionalStringAttr(str, REGEX_CHANNELS, map);
        return parseOptionalStringAttr != null ? Integer.parseInt(Util.splitAtFirst(parseOptionalStringAttr, "/")[0]) : -1;
    }

    public static double parseDoubleAttr(String str, Pattern pattern) throws ParserException {
        return Double.parseDouble(parseStringAttr(str, pattern, Collections.emptyMap()));
    }

    @Nullable
    public static DrmInitData.SchemeData parseDrmSchemeData(String str, String str2, Map<String, String> map) throws ParserException {
        String parseOptionalStringAttr = parseOptionalStringAttr(str, REGEX_KEYFORMATVERSIONS, "1", map);
        if (KEYFORMAT_WIDEVINE_PSSH_BINARY.equals(str2)) {
            String parseStringAttr = parseStringAttr(str, REGEX_URI, map);
            return new DrmInitData.SchemeData(C0463C.WIDEVINE_UUID, MimeTypes.VIDEO_MP4, Base64.decode(parseStringAttr.substring(parseStringAttr.indexOf(44)), 0));
        } else if (KEYFORMAT_WIDEVINE_PSSH_JSON.equals(str2)) {
            return new DrmInitData.SchemeData(C0463C.WIDEVINE_UUID, "hls", Util.getUtf8Bytes(str));
        } else {
            if (!KEYFORMAT_PLAYREADY.equals(str2) || !"1".equals(parseOptionalStringAttr)) {
                return null;
            }
            String parseStringAttr2 = parseStringAttr(str, REGEX_URI, map);
            return new DrmInitData.SchemeData(C0463C.PLAYREADY_UUID, MimeTypes.VIDEO_MP4, PsshAtomUtil.buildPsshAtom(C0463C.PLAYREADY_UUID, Base64.decode(parseStringAttr2.substring(parseStringAttr2.indexOf(44)), 0)));
        }
    }

    public static String parseEncryptionScheme(String str) {
        return (METHOD_SAMPLE_AES_CENC.equals(str) || METHOD_SAMPLE_AES_CTR.equals(str)) ? "cenc" : C0463C.CENC_TYPE_cbcs;
    }

    public static int parseIntAttr(String str, Pattern pattern) throws ParserException {
        return Integer.parseInt(parseStringAttr(str, pattern, Collections.emptyMap()));
    }

    public static long parseLongAttr(String str, Pattern pattern) throws ParserException {
        return Long.parseLong(parseStringAttr(str, pattern, Collections.emptyMap()));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static HlsMasterPlaylist parseMasterPlaylist(LineIterator lineIterator, String str) throws IOException {
        char c;
        float f;
        String str2;
        int i;
        int i2;
        String str3;
        int i3;
        int i4;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        boolean z = false;
        boolean z2 = false;
        while (true) {
            int i5 = -1;
            if (!lineIterator.hasNext()) {
                break;
            }
            String next = lineIterator.next();
            if (next.startsWith(TAG_PREFIX)) {
                arrayList8.add(next);
            }
            if (next.startsWith(TAG_DEFINE)) {
                hashMap2.put(parseStringAttr(next, REGEX_NAME, hashMap2), parseStringAttr(next, REGEX_VALUE, hashMap2));
            } else if (next.equals(TAG_INDEPENDENT_SEGMENTS)) {
                z2 = true;
            } else if (next.startsWith(TAG_MEDIA)) {
                arrayList6.add(next);
            } else if (next.startsWith(TAG_SESSION_KEY)) {
                DrmInitData.SchemeData parseDrmSchemeData = parseDrmSchemeData(next, parseOptionalStringAttr(next, REGEX_KEYFORMAT, KEYFORMAT_IDENTITY, hashMap2), hashMap2);
                if (parseDrmSchemeData != null) {
                    arrayList7.add(new DrmInitData(parseEncryptionScheme(parseStringAttr(next, REGEX_METHOD, hashMap2)), parseDrmSchemeData));
                }
            } else if (next.startsWith(TAG_STREAM_INF)) {
                boolean contains = next.contains(ATTR_CLOSED_CAPTIONS_NONE);
                int parseIntAttr = parseIntAttr(next, REGEX_BANDWIDTH);
                String parseOptionalStringAttr = parseOptionalStringAttr(next, REGEX_AVERAGE_BANDWIDTH, hashMap2);
                if (parseOptionalStringAttr != null) {
                    parseIntAttr = Integer.parseInt(parseOptionalStringAttr);
                }
                String parseOptionalStringAttr2 = parseOptionalStringAttr(next, REGEX_CODECS, hashMap2);
                String parseOptionalStringAttr3 = parseOptionalStringAttr(next, REGEX_RESOLUTION, hashMap2);
                if (parseOptionalStringAttr3 != null) {
                    String[] split = parseOptionalStringAttr3.split("x");
                    int parseInt = Integer.parseInt(split[0]);
                    i4 = Integer.parseInt(split[1]);
                    if (parseInt <= 0 || i4 <= 0) {
                        i4 = -1;
                    } else {
                        i5 = parseInt;
                    }
                } else {
                    i5 = -1;
                    i4 = -1;
                }
                String parseOptionalStringAttr4 = parseOptionalStringAttr(next, REGEX_FRAME_RATE, hashMap2);
                float parseFloat = parseOptionalStringAttr4 != null ? Float.parseFloat(parseOptionalStringAttr4) : -1.0f;
                String parseOptionalStringAttr5 = parseOptionalStringAttr(next, REGEX_VIDEO, hashMap2);
                String parseOptionalStringAttr6 = parseOptionalStringAttr(next, REGEX_AUDIO, hashMap2);
                String parseOptionalStringAttr7 = parseOptionalStringAttr(next, REGEX_SUBTITLES, hashMap2);
                String parseOptionalStringAttr8 = parseOptionalStringAttr(next, REGEX_CLOSED_CAPTIONS, hashMap2);
                Uri resolveToUri = UriUtil.resolveToUri(str, replaceVariableReferences(lineIterator.next(), hashMap2));
                arrayList.add(new HlsMasterPlaylist.Variant(resolveToUri, Format.createVideoContainerFormat(Integer.toString(arrayList.size()), null, MimeTypes.APPLICATION_M3U8, null, parseOptionalStringAttr2, parseIntAttr, i5, i4, parseFloat, null, 0, 0), parseOptionalStringAttr5, parseOptionalStringAttr6, parseOptionalStringAttr7, parseOptionalStringAttr8));
                ArrayList arrayList9 = (ArrayList) hashMap.get(resolveToUri);
                ArrayList arrayList10 = arrayList9;
                if (arrayList9 == null) {
                    arrayList10 = new ArrayList();
                    hashMap.put(resolveToUri, arrayList10);
                }
                arrayList10.add(new HlsTrackMetadataEntry.VariantInfo(parseIntAttr, parseOptionalStringAttr5, parseOptionalStringAttr6, parseOptionalStringAttr7, parseOptionalStringAttr8));
                z |= contains;
            }
        }
        ArrayList arrayList11 = new ArrayList();
        HashSet hashSet = new HashSet();
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            HlsMasterPlaylist.Variant variant = (HlsMasterPlaylist.Variant) arrayList.get(i6);
            if (hashSet.add(variant.url)) {
                Assertions.checkState(variant.format.metadata == null);
                arrayList11.add(variant.copyWithFormat(variant.format.copyWithMetadata(new Metadata(new HlsTrackMetadataEntry(null, null, (List) hashMap.get(variant.url))))));
            }
        }
        Format format = null;
        List list = null;
        for (int i7 = 0; i7 < arrayList6.size(); i7++) {
            String str4 = (String) arrayList6.get(i7);
            String parseStringAttr = parseStringAttr(str4, REGEX_GROUP_ID, hashMap2);
            String parseStringAttr2 = parseStringAttr(str4, REGEX_NAME, hashMap2);
            String parseOptionalStringAttr9 = parseOptionalStringAttr(str4, REGEX_URI, hashMap2);
            Uri resolveToUri2 = parseOptionalStringAttr9 == null ? null : UriUtil.resolveToUri(str, parseOptionalStringAttr9);
            String parseOptionalStringAttr10 = parseOptionalStringAttr(str4, REGEX_LANGUAGE, hashMap2);
            int parseSelectionFlags = parseSelectionFlags(str4);
            int parseRoleFlags = parseRoleFlags(str4, hashMap2);
            StringBuilder sb = new StringBuilder(String.valueOf(parseStringAttr).length() + 1 + String.valueOf(parseStringAttr2).length());
            sb.append(parseStringAttr);
            sb.append(":");
            sb.append(parseStringAttr2);
            String sb2 = sb.toString();
            Metadata metadata = new Metadata(new HlsTrackMetadataEntry(parseStringAttr, parseStringAttr2, Collections.emptyList()));
            String parseStringAttr3 = parseStringAttr(str4, REGEX_TYPE, hashMap2);
            switch (parseStringAttr3.hashCode()) {
                case -959297733:
                    if (parseStringAttr3.equals(TYPE_SUBTITLES)) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -333210994:
                    if (parseStringAttr3.equals(TYPE_CLOSED_CAPTIONS)) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 62628790:
                    if (parseStringAttr3.equals(TYPE_AUDIO)) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 81665115:
                    if (parseStringAttr3.equals("VIDEO")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            if (c == 0) {
                HlsMasterPlaylist.Variant variantWithVideoGroup = getVariantWithVideoGroup(arrayList, parseStringAttr);
                if (variantWithVideoGroup != null) {
                    Format format2 = variantWithVideoGroup.format;
                    str2 = Util.getCodecsOfType(format2.codecs, 2);
                    i = format2.width;
                    i2 = format2.height;
                    f = format2.frameRate;
                } else {
                    str2 = null;
                    i = -1;
                    i2 = -1;
                    f = -1.0f;
                }
                Format copyWithMetadata = Format.createVideoContainerFormat(sb2, parseStringAttr2, MimeTypes.APPLICATION_M3U8, str2 != null ? MimeTypes.getMediaMimeType(str2) : null, str2, -1, i, i2, f, null, parseSelectionFlags, parseRoleFlags).copyWithMetadata(metadata);
                if (resolveToUri2 != null) {
                    arrayList2.add(new HlsMasterPlaylist.Rendition(resolveToUri2, copyWithMetadata, parseStringAttr, parseStringAttr2));
                }
            } else if (c == 1) {
                HlsMasterPlaylist.Variant variantWithAudioGroup = getVariantWithAudioGroup(arrayList, parseStringAttr);
                String codecsOfType = variantWithAudioGroup != null ? Util.getCodecsOfType(variantWithAudioGroup.format.codecs, 1) : null;
                Format createAudioContainerFormat = Format.createAudioContainerFormat(sb2, parseStringAttr2, MimeTypes.APPLICATION_M3U8, codecsOfType != null ? MimeTypes.getMediaMimeType(codecsOfType) : null, codecsOfType, -1, parseChannelsAttribute(str4, hashMap2), -1, null, parseSelectionFlags, parseRoleFlags, parseOptionalStringAttr10);
                if (resolveToUri2 == null) {
                    format = createAudioContainerFormat;
                } else {
                    arrayList3.add(new HlsMasterPlaylist.Rendition(resolveToUri2, createAudioContainerFormat.copyWithMetadata(metadata), parseStringAttr, parseStringAttr2));
                }
            } else if (c == 2) {
                arrayList4.add(new HlsMasterPlaylist.Rendition(resolveToUri2, Format.createTextContainerFormat(sb2, parseStringAttr2, MimeTypes.APPLICATION_M3U8, "text/vtt", null, -1, parseSelectionFlags, parseRoleFlags, parseOptionalStringAttr10).copyWithMetadata(metadata), parseStringAttr, parseStringAttr2));
            } else if (c == 3) {
                String parseStringAttr4 = parseStringAttr(str4, REGEX_INSTREAM_ID, hashMap2);
                if (parseStringAttr4.startsWith("CC")) {
                    i3 = Integer.parseInt(parseStringAttr4.substring(2));
                    str3 = MimeTypes.APPLICATION_CEA608;
                } else {
                    i3 = Integer.parseInt(parseStringAttr4.substring(7));
                    str3 = MimeTypes.APPLICATION_CEA708;
                }
                List list2 = list;
                if (list == null) {
                    list2 = new ArrayList();
                }
                list2.add(Format.createTextContainerFormat(sb2, parseStringAttr2, null, str3, null, -1, parseSelectionFlags, parseRoleFlags, parseOptionalStringAttr10, i3));
                list = list2;
            }
        }
        if (z) {
            list = Collections.emptyList();
        }
        return new HlsMasterPlaylist(str, arrayList8, arrayList11, arrayList2, arrayList3, arrayList4, arrayList5, format, list, z2, hashMap2, arrayList7);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v247, types: [long] */
    /* JADX WARN: Type inference failed for: r33v1 */
    /* JADX WARN: Type inference failed for: r33v4 */
    /* JADX WARN: Type inference failed for: r40v0 */
    /* JADX WARN: Type inference failed for: r40v1 */
    /* JADX WARN: Type inference failed for: r40v2, types: [long] */
    /* JADX WARN: Type inference failed for: r40v3 */
    /* JADX WARN: Type inference failed for: r40v4 */
    /* JADX WARN: Type inference failed for: r40v5 */
    /* JADX WARN: Type inference failed for: r43v0 */
    /* JADX WARN: Type inference failed for: r43v1 */
    /* JADX WARN: Type inference failed for: r43v2, types: [long] */
    /* JADX WARN: Type inference failed for: r43v3 */
    /* JADX WARN: Type inference failed for: r43v4 */
    /* JADX WARN: Type inference failed for: r43v5 */
    /* JADX WARN: Type inference failed for: r48v10 */
    /* JADX WARN: Type inference failed for: r48v29 */
    /* JADX WARN: Type inference failed for: r48v8, types: [long] */
    /* JADX WARN: Type inference failed for: r48v9 */
    /* JADX WARN: Type inference failed for: r50v0 */
    /* JADX WARN: Type inference failed for: r50v1 */
    /* JADX WARN: Type inference failed for: r50v2, types: [long] */
    /* JADX WARN: Type inference failed for: r50v3 */
    /* JADX WARN: Type inference failed for: r50v4 */
    /* JADX WARN: Type inference failed for: r50v7, types: [long] */
    /* JADX WARN: Type inference failed for: r50v8 */
    /* JADX WARN: Type inference failed for: r50v9 */
    /* JADX WARN: Type inference failed for: r58v12 */
    /* JADX WARN: Type inference failed for: r58v13 */
    /* JADX WARN: Type inference failed for: r58v14 */
    /* JADX WARN: Type inference failed for: r58v15 */
    /* JADX WARN: Type inference failed for: r58v16 */
    /* JADX WARN: Type inference failed for: r58v17 */
    /* JADX WARN: Type inference failed for: r58v18 */
    /* JADX WARN: Type inference failed for: r58v19 */
    /* JADX WARN: Type inference failed for: r58v20 */
    /* JADX WARN: Type inference failed for: r58v21 */
    /* JADX WARN: Type inference failed for: r58v22 */
    /* JADX WARN: Type inference failed for: r58v6 */
    /* JADX WARN: Type inference failed for: r58v7 */
    /* JADX WARN: Type inference failed for: r58v8 */
    /* JADX WARN: Type inference failed for: r61v0 */
    /* JADX WARN: Type inference failed for: r61v1, types: [long] */
    /* JADX WARN: Type inference failed for: r61v2 */
    /* JADX WARN: Type inference failed for: r61v3 */
    /* JADX WARN: Type inference failed for: r66v13 */
    /* JADX WARN: Type inference failed for: r68v0 */
    /* JADX WARN: Type inference failed for: r68v1 */
    /* JADX WARN: Type inference failed for: r68v10 */
    /* JADX WARN: Type inference failed for: r68v11 */
    /* JADX WARN: Type inference failed for: r68v12 */
    /* JADX WARN: Type inference failed for: r68v13 */
    /* JADX WARN: Type inference failed for: r68v2 */
    /* JADX WARN: Type inference failed for: r68v4 */
    /* JADX WARN: Type inference failed for: r68v5 */
    /* JADX WARN: Type inference failed for: r68v6 */
    /* JADX WARN: Type inference failed for: r68v7 */
    /* JADX WARN: Type inference failed for: r68v8 */
    /* JADX WARN: Type inference failed for: r68v9 */
    /* JADX WARN: Type inference failed for: r72v0 */
    /* JADX WARN: Type inference failed for: r72v1, types: [long] */
    /* JADX WARN: Type inference failed for: r72v10 */
    /* JADX WARN: Type inference failed for: r72v11 */
    /* JADX WARN: Type inference failed for: r72v12 */
    /* JADX WARN: Type inference failed for: r72v13 */
    /* JADX WARN: Type inference failed for: r72v2 */
    /* JADX WARN: Type inference failed for: r72v3 */
    /* JADX WARN: Type inference failed for: r72v4 */
    /* JADX WARN: Type inference failed for: r72v5 */
    /* JADX WARN: Type inference failed for: r72v6 */
    /* JADX WARN: Type inference failed for: r72v7 */
    /* JADX WARN: Type inference failed for: r72v8 */
    /* JADX WARN: Type inference failed for: r72v9 */
    /* JADX WARN: Type inference failed for: r75v0 */
    /* JADX WARN: Type inference failed for: r75v1 */
    /* JADX WARN: Type inference failed for: r75v10 */
    /* JADX WARN: Type inference failed for: r75v11 */
    /* JADX WARN: Type inference failed for: r75v12 */
    /* JADX WARN: Type inference failed for: r75v2 */
    /* JADX WARN: Type inference failed for: r75v3 */
    /* JADX WARN: Type inference failed for: r75v4 */
    /* JADX WARN: Type inference failed for: r75v5 */
    /* JADX WARN: Type inference failed for: r75v6 */
    /* JADX WARN: Type inference failed for: r75v7 */
    /* JADX WARN: Type inference failed for: r75v8 */
    /* JADX WARN: Type inference failed for: r75v9 */
    /* JADX WARN: Type inference failed for: r78v0 */
    /* JADX WARN: Type inference failed for: r78v1 */
    /* JADX WARN: Type inference failed for: r78v10 */
    /* JADX WARN: Type inference failed for: r78v11 */
    /* JADX WARN: Type inference failed for: r78v13 */
    /* JADX WARN: Type inference failed for: r78v2 */
    /* JADX WARN: Type inference failed for: r78v3 */
    /* JADX WARN: Type inference failed for: r78v4 */
    /* JADX WARN: Type inference failed for: r78v5 */
    /* JADX WARN: Type inference failed for: r78v6 */
    /* JADX WARN: Type inference failed for: r78v7 */
    /* JADX WARN: Type inference failed for: r78v8 */
    /* JADX WARN: Type inference failed for: r78v9 */
    /* JADX WARN: Unknown variable types count: 8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.media2.exoplayer.external.source.hls.playlist.HlsMediaPlaylist parseMediaPlaylist(androidx.media2.exoplayer.external.source.hls.playlist.HlsMasterPlaylist r22, androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistParser.LineIterator r23, java.lang.String r24) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2008
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistParser.parseMediaPlaylist(androidx.media2.exoplayer.external.source.hls.playlist.HlsMasterPlaylist, androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistParser$LineIterator, java.lang.String):androidx.media2.exoplayer.external.source.hls.playlist.HlsMediaPlaylist");
    }

    public static boolean parseOptionalBooleanAttribute(String str, Pattern pattern, boolean z) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? matcher.group(1).equals("YES") : z;
    }

    public static String parseOptionalStringAttr(String str, Pattern pattern, String str2, Map<String, String> map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = matcher.group(1);
        }
        String str3 = str2;
        if (!map.isEmpty()) {
            str3 = str2 == null ? str2 : replaceVariableReferences(str2, map);
        }
        return str3;
    }

    @Nullable
    public static String parseOptionalStringAttr(String str, Pattern pattern, Map<String, String> map) {
        return parseOptionalStringAttr(str, pattern, null, map);
    }

    public static int parseRoleFlags(String str, Map<String, String> map) {
        String parseOptionalStringAttr = parseOptionalStringAttr(str, REGEX_CHARACTERISTICS, map);
        int i = 0;
        if (TextUtils.isEmpty(parseOptionalStringAttr)) {
            return 0;
        }
        String[] split = Util.split(parseOptionalStringAttr, ",");
        if (Util.contains(split, "public.accessibility.describes-video")) {
            i = 512;
        }
        int i2 = i;
        if (Util.contains(split, "public.accessibility.transcribes-spoken-dialog")) {
            i2 = i | 4096;
        }
        int i3 = i2;
        if (Util.contains(split, "public.accessibility.describes-music-and-sound")) {
            i3 = i2 | 1024;
        }
        int i4 = i3;
        if (Util.contains(split, "public.easy-to-read")) {
            i4 = i3 | 8192;
        }
        return i4;
    }

    public static int parseSelectionFlags(String str) {
        int i = parseOptionalBooleanAttribute(str, REGEX_DEFAULT, false) ? 1 : 0;
        int i2 = i;
        if (parseOptionalBooleanAttribute(str, REGEX_FORCED, false)) {
            i2 = i | 2;
        }
        int i3 = i2;
        if (parseOptionalBooleanAttribute(str, REGEX_AUTOSELECT, false)) {
            i3 = i2 | 4;
        }
        return i3;
    }

    public static String parseStringAttr(String str, Pattern pattern, Map<String, String> map) throws ParserException {
        String parseOptionalStringAttr = parseOptionalStringAttr(str, pattern, map);
        if (parseOptionalStringAttr != null) {
            return parseOptionalStringAttr;
        }
        String pattern2 = pattern.pattern();
        StringBuilder sb = new StringBuilder(String.valueOf(pattern2).length() + 19 + String.valueOf(str).length());
        sb.append("Couldn't match ");
        sb.append(pattern2);
        sb.append(" in ");
        sb.append(str);
        throw new ParserException(sb.toString());
    }

    public static String replaceVariableReferences(String str, Map<String, String> map) {
        Matcher matcher = REGEX_VARIABLE_REFERENCE.matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String group = matcher.group(1);
            if (map.containsKey(group)) {
                matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement(map.get(group)));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    public static int skipIgnorableWhitespace(BufferedReader bufferedReader, boolean z, int i) throws IOException {
        while (i != -1 && Character.isWhitespace(i) && (z || !Util.isLinebreak(i))) {
            i = bufferedReader.read();
        }
        return i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.media2.exoplayer.external.upstream.ParsingLoadable.Parser
    public HlsPlaylist parse(Uri uri, InputStream inputStream) throws IOException {
        String trim;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            if (checkPlaylistHeader(bufferedReader)) {
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        trim = readLine.trim();
                        if (!trim.isEmpty()) {
                            if (!trim.startsWith(TAG_STREAM_INF)) {
                                if (trim.startsWith(TAG_TARGET_DURATION) || trim.startsWith(TAG_MEDIA_SEQUENCE) || trim.startsWith(TAG_MEDIA_DURATION) || trim.startsWith(TAG_KEY) || trim.startsWith(TAG_BYTERANGE) || trim.equals(TAG_DISCONTINUITY) || trim.equals(TAG_DISCONTINUITY_SEQUENCE) || trim.equals(TAG_ENDLIST)) {
                                    break;
                                }
                                arrayDeque.add(trim);
                            } else {
                                arrayDeque.add(trim);
                                return parseMasterPlaylist(new LineIterator(arrayDeque, bufferedReader), uri.toString());
                            }
                        }
                    } else {
                        Util.closeQuietly(bufferedReader);
                        throw new ParserException("Failed to parse the playlist, could not identify any tags.");
                    }
                }
                arrayDeque.add(trim);
                return parseMediaPlaylist(this.masterPlaylist, new LineIterator(arrayDeque, bufferedReader), uri.toString());
            }
            throw new UnrecognizedInputFormatException("Input does not start with the #EXTM3U header.", uri);
        } finally {
            Util.closeQuietly(bufferedReader);
        }
    }
}
