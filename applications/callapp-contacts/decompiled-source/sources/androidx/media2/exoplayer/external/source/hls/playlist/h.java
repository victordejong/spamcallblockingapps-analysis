package androidx.media2.exoplayer.external.source.hls.playlist;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.c;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.mp4.j;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.source.UnrecognizedInputFormatException;
import androidx.media2.exoplayer.external.source.hls.HlsTrackMetadataEntry;
import androidx.media2.exoplayer.external.source.hls.playlist.e;
import androidx.media2.exoplayer.external.upstream.u;
import androidx.media2.exoplayer.external.util.ab;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.m;
import io.objectbox.model.PropertyFlags;
import java.io.BufferedReader;
import java.io.Closeable;
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
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/h.class */
public final class h implements u.a<g> {
    private final e K;

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3714a = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f3715b = Pattern.compile("VIDEO=\"(.+?)\"");

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f3716c = Pattern.compile("AUDIO=\"(.+?)\"");

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f3717d = Pattern.compile("SUBTITLES=\"(.+?)\"");
    private static final Pattern e = Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");
    private static final Pattern f = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");
    private static final Pattern g = Pattern.compile("CHANNELS=\"(.+?)\"");
    private static final Pattern h = Pattern.compile("CODECS=\"(.+?)\"");
    private static final Pattern i = Pattern.compile("RESOLUTION=(\\d+x\\d+)");
    private static final Pattern j = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");
    private static final Pattern k = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");
    private static final Pattern l = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
    private static final Pattern m = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");
    private static final Pattern n = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    private static final Pattern o = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");
    private static final Pattern p = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");
    private static final Pattern q = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    private static final Pattern r = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    private static final Pattern s = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    private static final Pattern t = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");
    private static final Pattern u = Pattern.compile("KEYFORMAT=\"(.+?)\"");
    private static final Pattern v = Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");
    private static final Pattern w = Pattern.compile("URI=\"(.+?)\"");
    private static final Pattern x = Pattern.compile("IV=([^,.*]+)");
    private static final Pattern y = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    private static final Pattern z = Pattern.compile("LANGUAGE=\"(.+?)\"");
    private static final Pattern A = Pattern.compile("NAME=\"(.+?)\"");
    private static final Pattern B = Pattern.compile("GROUP-ID=\"(.+?)\"");
    private static final Pattern C = Pattern.compile("CHARACTERISTICS=\"(.+?)\"");
    private static final Pattern D = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    private static final Pattern E = b("AUTOSELECT");
    private static final Pattern F = b("DEFAULT");
    private static final Pattern G = b("FORCED");
    private static final Pattern H = Pattern.compile("VALUE=\"(.+?)\"");
    private static final Pattern I = Pattern.compile("IMPORT=\"(.+?)\"");
    private static final Pattern J = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/h$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final BufferedReader f3718a;

        /* renamed from: b  reason: collision with root package name */
        private final Queue<String> f3719b;

        /* renamed from: c  reason: collision with root package name */
        private String f3720c;

        public a(Queue<String> queue, BufferedReader bufferedReader) {
            this.f3719b = queue;
            this.f3718a = bufferedReader;
        }

        public final boolean a() throws IOException {
            String trim;
            if (this.f3720c != null) {
                return true;
            }
            if (!this.f3719b.isEmpty()) {
                this.f3720c = this.f3719b.poll();
                return true;
            }
            do {
                String readLine = this.f3718a.readLine();
                this.f3720c = readLine;
                if (readLine == null) {
                    return false;
                }
                trim = readLine.trim();
                this.f3720c = trim;
            } while (trim.isEmpty());
            return true;
        }

        public final String b() throws IOException {
            String str = null;
            if (a()) {
                str = this.f3720c;
                this.f3720c = null;
            }
            return str;
        }
    }

    public h() {
        this(e.f3694a);
    }

    public h(e eVar) {
        this.K = eVar;
    }

    private static int a(BufferedReader bufferedReader, boolean z2, int i2) throws IOException {
        while (i2 != -1 && Character.isWhitespace(i2) && (z2 || !ac.a(i2))) {
            i2 = bufferedReader.read();
        }
        return i2;
    }

    private static int a(String str, Pattern pattern) throws ParserException {
        return Integer.parseInt(a(str, pattern, Collections.emptyMap()));
    }

    private static DrmInitData.SchemeData a(String str, String str2, Map<String, String> map) throws ParserException {
        String a2 = a(str, v, "1", map);
        if ("urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed".equals(str2)) {
            String a3 = a(str, w, map);
            return new DrmInitData.SchemeData(c.f2961d, "video/mp4", Base64.decode(a3.substring(a3.indexOf(44)), 0));
        } else if ("com.widevine".equals(str2)) {
            return new DrmInitData.SchemeData(c.f2961d, "hls", ac.c(str));
        } else {
            if (!"com.microsoft.playready".equals(str2) || !"1".equals(a2)) {
                return null;
            }
            String a4 = a(str, w, map);
            return new DrmInitData.SchemeData(c.e, "video/mp4", j.a(c.e, Base64.decode(a4.substring(a4.indexOf(44)), 0)));
        }
    }

    private static e.b a(ArrayList<e.b> arrayList, String str) {
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            e.b bVar = arrayList.get(i2);
            if (str.equals(bVar.f3705d)) {
                return bVar;
            }
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static e a(a aVar, String str) throws IOException {
        int i2;
        char c2;
        String str2;
        int i3;
        int i4;
        float f2;
        String str3;
        int i5;
        int i6;
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
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            int i7 = -1;
            if (!aVar.a()) {
                break;
            }
            String b2 = aVar.b();
            if (b2.startsWith("#EXT")) {
                arrayList8.add(b2);
            }
            if (b2.startsWith("#EXT-X-DEFINE")) {
                hashMap2.put(a(b2, A, hashMap2), a(b2, H, hashMap2));
            } else if (b2.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                z2 = true;
            } else if (b2.startsWith("#EXT-X-MEDIA")) {
                arrayList6.add(b2);
            } else if (b2.startsWith("#EXT-X-SESSION-KEY")) {
                DrmInitData.SchemeData a2 = a(b2, a(b2, u, "identity", hashMap2), hashMap2);
                if (a2 != null) {
                    arrayList7.add(new DrmInitData(a(a(b2, t, hashMap2)), a2));
                }
            } else if (b2.startsWith("#EXT-X-STREAM-INF")) {
                boolean contains = b2.contains("CLOSED-CAPTIONS=NONE");
                int a3 = a(b2, f);
                String a4 = a(b2, f3714a, null, hashMap2);
                if (a4 != null) {
                    a3 = Integer.parseInt(a4);
                }
                String a5 = a(b2, h, null, hashMap2);
                String a6 = a(b2, i, null, hashMap2);
                if (a6 != null) {
                    String[] split = a6.split("x");
                    i6 = Integer.parseInt(split[0]);
                    int parseInt = Integer.parseInt(split[1]);
                    if (i6 <= 0 || parseInt <= 0) {
                        i6 = -1;
                    } else {
                        i7 = parseInt;
                    }
                } else {
                    i6 = -1;
                    i7 = -1;
                }
                String a7 = a(b2, j, null, hashMap2);
                float parseFloat = a7 != null ? Float.parseFloat(a7) : -1.0f;
                String a8 = a(b2, f3715b, null, hashMap2);
                String a9 = a(b2, f3716c, null, hashMap2);
                String a10 = a(b2, f3717d, null, hashMap2);
                String a11 = a(b2, e, null, hashMap2);
                Uri a12 = ab.a(str, a(aVar.b(), hashMap2));
                arrayList.add(new e.b(a12, Format.createVideoContainerFormat(Integer.toString(arrayList.size()), null, "application/x-mpegURL", null, a5, null, a3, i6, i7, parseFloat, null, 0, 0), a8, a9, a10, a11));
                ArrayList arrayList9 = (ArrayList) hashMap.get(a12);
                ArrayList arrayList10 = arrayList9;
                if (arrayList9 == null) {
                    arrayList10 = new ArrayList();
                    hashMap.put(a12, arrayList10);
                }
                arrayList10.add(new HlsTrackMetadataEntry.VariantInfo(a3, a8, a9, a10, a11));
                z3 |= contains;
            }
        }
        ArrayList arrayList11 = new ArrayList();
        HashSet hashSet = new HashSet();
        for (int i8 = 0; i8 < arrayList.size(); i8++) {
            e.b bVar = (e.b) arrayList.get(i8);
            if (hashSet.add(bVar.f3702a)) {
                androidx.media2.exoplayer.external.util.a.b(bVar.f3703b.metadata == null);
                arrayList11.add(new e.b(bVar.f3702a, bVar.f3703b.copyWithMetadata(new Metadata(new HlsTrackMetadataEntry(null, null, (List) hashMap.get(bVar.f3702a)))), bVar.f3704c, bVar.f3705d, bVar.e, bVar.f));
            }
        }
        Format format = null;
        List list = null;
        for (int i9 = 0; i9 < arrayList6.size(); i9++) {
            String str4 = (String) arrayList6.get(i9);
            String a13 = a(str4, B, hashMap2);
            String a14 = a(str4, A, hashMap2);
            String a15 = a(str4, w, null, hashMap2);
            Uri a16 = a15 == null ? null : ab.a(str, a15);
            String a17 = a(str4, z, null, hashMap2);
            boolean c3 = c(str4, F);
            int i10 = c3 ? 1 : 0;
            if (c(str4, G)) {
                i10 = (c3 ? 1 : 0) | 2;
            }
            int i11 = i10;
            if (c(str4, E)) {
                i11 = i10 | 4;
            }
            String a18 = a(str4, C, null, hashMap2);
            if (TextUtils.isEmpty(a18)) {
                i2 = 0;
            } else {
                String[] a19 = ac.a(a18, ",");
                int i12 = ac.a((Object[]) a19, (Object) "public.accessibility.describes-video") ? 512 : 0;
                int i13 = i12;
                if (ac.a((Object[]) a19, (Object) "public.accessibility.transcribes-spoken-dialog")) {
                    i13 = i12 | 4096;
                }
                i2 = i13;
                if (ac.a((Object[]) a19, (Object) "public.accessibility.describes-music-and-sound")) {
                    i2 = i13 | 1024;
                }
                if (ac.a((Object[]) a19, (Object) "public.easy-to-read")) {
                    i2 |= PropertyFlags.UNSIGNED;
                }
            }
            StringBuilder sb = new StringBuilder(String.valueOf(a13).length() + 1 + String.valueOf(a14).length());
            sb.append(a13);
            sb.append(":");
            sb.append(a14);
            String sb2 = sb.toString();
            Metadata metadata = new Metadata(new HlsTrackMetadataEntry(a13, a14, Collections.emptyList()));
            String a20 = a(str4, y, hashMap2);
            a20.hashCode();
            switch (a20.hashCode()) {
                case -959297733:
                    if (a20.equals("SUBTITLES")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -333210994:
                    if (a20.equals("CLOSED-CAPTIONS")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 62628790:
                    if (a20.equals("AUDIO")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 81665115:
                    if (a20.equals("VIDEO")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            switch (c2) {
                case 0:
                    arrayList4.add(new e.a(a16, Format.createTextContainerFormat(sb2, a14, "application/x-mpegURL", "text/vtt", null, -1, i11, i2, a17).copyWithMetadata(metadata), a13, a14));
                    break;
                case 1:
                    String a21 = a(str4, D, hashMap2);
                    if (a21.startsWith("CC")) {
                        i3 = Integer.parseInt(a21.substring(2));
                        str2 = "application/cea-608";
                    } else {
                        i3 = Integer.parseInt(a21.substring(7));
                        str2 = "application/cea-708";
                    }
                    List list2 = list;
                    if (list == null) {
                        list2 = new ArrayList();
                    }
                    list2.add(Format.createTextContainerFormat(sb2, a14, null, str2, null, -1, i11, i2, a17, i3));
                    list = list2;
                    break;
                case 2:
                    e.b a22 = a(arrayList, a13);
                    String a23 = a22 != null ? ac.a(a22.f3703b.codecs, 1) : null;
                    String f3 = a23 != null ? m.f(a23) : null;
                    String a24 = a(str4, g, null, hashMap2);
                    Format createAudioContainerFormat = Format.createAudioContainerFormat(sb2, a14, "application/x-mpegURL", f3, a23, null, -1, a24 != null ? Integer.parseInt(ac.b(a24, "/")[0]) : -1, -1, null, i11, i2, a17);
                    if (a16 == null) {
                        format = createAudioContainerFormat;
                        break;
                    } else {
                        arrayList3.add(new e.a(a16, createAudioContainerFormat.copyWithMetadata(metadata), a13, a14));
                        break;
                    }
                case 3:
                    e.b b3 = b(arrayList, a13);
                    if (b3 != null) {
                        Format format2 = b3.f3703b;
                        str3 = ac.a(format2.codecs, 2);
                        i5 = format2.width;
                        i4 = format2.height;
                        f2 = format2.frameRate;
                    } else {
                        str3 = null;
                        i5 = -1;
                        i4 = -1;
                        f2 = -1.0f;
                    }
                    Format copyWithMetadata = Format.createVideoContainerFormat(sb2, a14, "application/x-mpegURL", str3 != null ? m.f(str3) : null, str3, null, -1, i5, i4, f2, null, i11, i2).copyWithMetadata(metadata);
                    if (a16 != null) {
                        arrayList2.add(new e.a(a16, copyWithMetadata, a13, a14));
                        break;
                    } else {
                        break;
                    }
            }
        }
        if (z3) {
            list = Collections.emptyList();
        }
        return new e(str, arrayList8, arrayList11, arrayList2, arrayList3, arrayList4, arrayList5, format, list, z2, hashMap2, arrayList7);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v164, types: [long] */
    /* JADX WARN: Type inference failed for: r34v0 */
    /* JADX WARN: Type inference failed for: r34v1 */
    /* JADX WARN: Type inference failed for: r34v2 */
    /* JADX WARN: Type inference failed for: r34v3, types: [long] */
    /* JADX WARN: Type inference failed for: r40v3 */
    /* JADX WARN: Type inference failed for: r40v4 */
    /* JADX WARN: Type inference failed for: r49v0 */
    /* JADX WARN: Type inference failed for: r49v1 */
    /* JADX WARN: Type inference failed for: r49v2 */
    /* JADX WARN: Type inference failed for: r49v3 */
    /* JADX WARN: Type inference failed for: r53v13 */
    /* JADX WARN: Type inference failed for: r53v7, types: [long] */
    /* JADX WARN: Type inference failed for: r53v8 */
    /* JADX WARN: Type inference failed for: r53v9 */
    /* JADX WARN: Type inference failed for: r55v0 */
    /* JADX WARN: Type inference failed for: r55v1, types: [long] */
    /* JADX WARN: Type inference failed for: r55v2 */
    /* JADX WARN: Type inference failed for: r55v3, types: [long] */
    /* JADX WARN: Type inference failed for: r55v4, types: [long] */
    /* JADX WARN: Type inference failed for: r58v0 */
    /* JADX WARN: Type inference failed for: r58v1, types: [long] */
    /* JADX WARN: Type inference failed for: r58v2 */
    /* JADX WARN: Type inference failed for: r58v4 */
    /* JADX WARN: Type inference failed for: r58v6 */
    /* JADX WARN: Type inference failed for: r58v7 */
    /* JADX WARN: Type inference failed for: r58v8 */
    /* JADX WARN: Type inference failed for: r62v4 */
    /* JADX WARN: Type inference failed for: r62v8 */
    /* JADX WARN: Type inference failed for: r66v4 */
    /* JADX WARN: Unknown variable types count: 6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.media2.exoplayer.external.source.hls.playlist.f a(androidx.media2.exoplayer.external.source.hls.playlist.e r22, androidx.media2.exoplayer.external.source.hls.playlist.h.a r23, java.lang.String r24) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.hls.playlist.h.a(androidx.media2.exoplayer.external.source.hls.playlist.e, androidx.media2.exoplayer.external.source.hls.playlist.h$a, java.lang.String):androidx.media2.exoplayer.external.source.hls.playlist.f");
    }

    private static String a(String str) {
        return ("SAMPLE-AES-CENC".equals(str) || "SAMPLE-AES-CTR".equals(str)) ? "cenc" : "cbcs";
    }

    private static String a(String str, Map<String, String> map) {
        Matcher matcher = J.matcher(str);
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

    private static String a(String str, Pattern pattern, String str2, Map<String, String> map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = matcher.group(1);
        }
        return (map.isEmpty() || str2 == null) ? str2 : a(str2, map);
    }

    private static String a(String str, Pattern pattern, Map<String, String> map) throws ParserException {
        String a2 = a(str, pattern, null, map);
        if (a2 != null) {
            return a2;
        }
        String pattern2 = pattern.pattern();
        StringBuilder sb = new StringBuilder(String.valueOf(pattern2).length() + 19 + String.valueOf(str).length());
        sb.append("Couldn't match ");
        sb.append(pattern2);
        sb.append(" in ");
        sb.append(str);
        throw new ParserException(sb.toString());
    }

    private static boolean a(BufferedReader bufferedReader) throws IOException {
        int read = bufferedReader.read();
        int i2 = read;
        if (read == 239) {
            if (!(bufferedReader.read() == 187 && bufferedReader.read() == 191)) {
                return false;
            }
            i2 = bufferedReader.read();
        }
        int a2 = a(bufferedReader, true, i2);
        for (int i3 = 0; i3 < 7; i3++) {
            if (a2 != "#EXTM3U".charAt(i3)) {
                return false;
            }
            a2 = bufferedReader.read();
        }
        return ac.a(a(bufferedReader, false, a2));
    }

    private static double b(String str, Pattern pattern) throws ParserException {
        return Double.parseDouble(a(str, pattern, Collections.emptyMap()));
    }

    private static e.b b(ArrayList<e.b> arrayList, String str) {
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            e.b bVar = arrayList.get(i2);
            if (str.equals(bVar.f3704c)) {
                return bVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public g a(Uri uri, InputStream inputStream) throws IOException {
        String trim;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            if (a(bufferedReader)) {
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        trim = readLine.trim();
                        if (!trim.isEmpty()) {
                            if (!trim.startsWith("#EXT-X-STREAM-INF")) {
                                if (trim.startsWith("#EXT-X-TARGETDURATION") || trim.startsWith("#EXT-X-MEDIA-SEQUENCE") || trim.startsWith("#EXTINF") || trim.startsWith("#EXT-X-KEY") || trim.startsWith("#EXT-X-BYTERANGE") || trim.equals("#EXT-X-DISCONTINUITY") || trim.equals("#EXT-X-DISCONTINUITY-SEQUENCE") || trim.equals("#EXT-X-ENDLIST")) {
                                    break;
                                }
                                arrayDeque.add(trim);
                            } else {
                                arrayDeque.add(trim);
                                return a(new a(arrayDeque, bufferedReader), uri.toString());
                            }
                        }
                    } else {
                        ac.a((Closeable) bufferedReader);
                        throw new ParserException("Failed to parse the playlist, could not identify any tags.");
                    }
                }
                arrayDeque.add(trim);
                return a(this.K, new a(arrayDeque, bufferedReader), uri.toString());
            }
            throw new UnrecognizedInputFormatException("Input does not start with the #EXTM3U header.", uri);
        } finally {
            ac.a((Closeable) bufferedReader);
        }
    }

    private static Pattern b(String str) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 9);
        sb.append(str);
        sb.append("=(NO|YES");
        sb.append(")");
        return Pattern.compile(sb.toString());
    }

    private static boolean c(String str, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return matcher.group(1).equals("YES");
        }
        return false;
    }
}
