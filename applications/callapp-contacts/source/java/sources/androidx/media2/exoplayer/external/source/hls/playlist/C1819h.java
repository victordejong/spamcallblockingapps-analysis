package androidx.media2.exoplayer.external.source.hls.playlist;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import androidx.media2.exoplayer.external.C1446c;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.mp4.C1629j;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.source.UnrecognizedInputFormatException;
import androidx.media2.exoplayer.external.source.hls.HlsTrackMetadataEntry;
import androidx.media2.exoplayer.external.source.hls.playlist.C1813e;
import androidx.media2.exoplayer.external.source.hls.playlist.C1816f;
import androidx.media2.exoplayer.external.upstream.C1987u;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1995ab;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2012m;
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
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: androidx.media2.exoplayer.external.source.hls.playlist.h */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/h.class */
public final class C1819h implements C1987u.AbstractC1988a<AbstractC1818g> {

    /* renamed from: K */
    private final C1813e f7309K;

    /* renamed from: a */
    private static final Pattern f7283a = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");

    /* renamed from: b */
    private static final Pattern f7284b = Pattern.compile("VIDEO=\"(.+?)\"");

    /* renamed from: c */
    private static final Pattern f7285c = Pattern.compile("AUDIO=\"(.+?)\"");

    /* renamed from: d */
    private static final Pattern f7286d = Pattern.compile("SUBTITLES=\"(.+?)\"");

    /* renamed from: e */
    private static final Pattern f7287e = Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");

    /* renamed from: f */
    private static final Pattern f7288f = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");

    /* renamed from: g */
    private static final Pattern f7289g = Pattern.compile("CHANNELS=\"(.+?)\"");

    /* renamed from: h */
    private static final Pattern f7290h = Pattern.compile("CODECS=\"(.+?)\"");

    /* renamed from: i */
    private static final Pattern f7291i = Pattern.compile("RESOLUTION=(\\d+x\\d+)");

    /* renamed from: j */
    private static final Pattern f7292j = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");

    /* renamed from: k */
    private static final Pattern f7293k = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");

    /* renamed from: l */
    private static final Pattern f7294l = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");

    /* renamed from: m */
    private static final Pattern f7295m = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");

    /* renamed from: n */
    private static final Pattern f7296n = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");

    /* renamed from: o */
    private static final Pattern f7297o = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");

    /* renamed from: p */
    private static final Pattern f7298p = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");

    /* renamed from: q */
    private static final Pattern f7299q = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");

    /* renamed from: r */
    private static final Pattern f7300r = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");

    /* renamed from: s */
    private static final Pattern f7301s = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");

    /* renamed from: t */
    private static final Pattern f7302t = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");

    /* renamed from: u */
    private static final Pattern f7303u = Pattern.compile("KEYFORMAT=\"(.+?)\"");

    /* renamed from: v */
    private static final Pattern f7304v = Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");

    /* renamed from: w */
    private static final Pattern f7305w = Pattern.compile("URI=\"(.+?)\"");

    /* renamed from: x */
    private static final Pattern f7306x = Pattern.compile("IV=([^,.*]+)");

    /* renamed from: y */
    private static final Pattern f7307y = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");

    /* renamed from: z */
    private static final Pattern f7308z = Pattern.compile("LANGUAGE=\"(.+?)\"");

    /* renamed from: A */
    private static final Pattern f7273A = Pattern.compile("NAME=\"(.+?)\"");

    /* renamed from: B */
    private static final Pattern f7274B = Pattern.compile("GROUP-ID=\"(.+?)\"");

    /* renamed from: C */
    private static final Pattern f7275C = Pattern.compile("CHARACTERISTICS=\"(.+?)\"");

    /* renamed from: D */
    private static final Pattern f7276D = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");

    /* renamed from: E */
    private static final Pattern f7277E = m42132b("AUTOSELECT");

    /* renamed from: F */
    private static final Pattern f7278F = m42132b("DEFAULT");

    /* renamed from: G */
    private static final Pattern f7279G = m42132b("FORCED");

    /* renamed from: H */
    private static final Pattern f7280H = Pattern.compile("VALUE=\"(.+?)\"");

    /* renamed from: I */
    private static final Pattern f7281I = Pattern.compile("IMPORT=\"(.+?)\"");

    /* renamed from: J */
    private static final Pattern f7282J = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");

    /* renamed from: androidx.media2.exoplayer.external.source.hls.playlist.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/h$a.class */
    public static final class C1820a {

        /* renamed from: a */
        private final BufferedReader f7310a;

        /* renamed from: b */
        private final Queue<String> f7311b;

        /* renamed from: c */
        private String f7312c;

        public C1820a(Queue<String> queue, BufferedReader bufferedReader) {
            this.f7311b = queue;
            this.f7310a = bufferedReader;
        }

        /* renamed from: a */
        public final boolean m42128a() throws IOException {
            String trim;
            if (this.f7312c != null) {
                return true;
            }
            if (!this.f7311b.isEmpty()) {
                this.f7312c = this.f7311b.poll();
                return true;
            }
            do {
                String readLine = this.f7310a.readLine();
                this.f7312c = readLine;
                if (readLine == null) {
                    return false;
                }
                trim = readLine.trim();
                this.f7312c = trim;
            } while (trim.isEmpty());
            return true;
        }

        /* renamed from: b */
        public final String m42127b() throws IOException {
            String str = null;
            if (m42128a()) {
                str = this.f7312c;
                this.f7312c = null;
            }
            return str;
        }
    }

    public C1819h() {
        this(C1813e.f7224a);
    }

    public C1819h(C1813e c1813e) {
        this.f7309K = c1813e;
    }

    /* renamed from: a */
    private static int m42141a(BufferedReader bufferedReader, boolean z, int i) throws IOException {
        while (i != -1 && Character.isWhitespace(i) && (z || !C1996ac.m41676a(i))) {
            i = bufferedReader.read();
        }
        return i;
    }

    /* renamed from: a */
    private static int m42137a(String str, Pattern pattern) throws ParserException {
        return Integer.parseInt(m42135a(str, pattern, Collections.emptyMap()));
    }

    /* renamed from: a */
    private static DrmInitData.SchemeData m42139a(String str, String str2, Map<String, String> map) throws ParserException {
        String m42136a = m42136a(str, f7304v, "1", map);
        if ("urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed".equals(str2)) {
            String m42135a = m42135a(str, f7305w, map);
            return new DrmInitData.SchemeData(C1446c.f5517d, "video/mp4", Base64.decode(m42135a.substring(m42135a.indexOf(44)), 0));
        } else if ("com.widevine".equals(str2)) {
            return new DrmInitData.SchemeData(C1446c.f5517d, "hls", C1996ac.m41623c(str));
        } else {
            if (!"com.microsoft.playready".equals(str2) || !"1".equals(m42136a)) {
                return null;
            }
            String m42135a2 = m42135a(str, f7305w, map);
            return new DrmInitData.SchemeData(C1446c.f5518e, "video/mp4", C1629j.m42520a(C1446c.f5518e, Base64.decode(m42135a2.substring(m42135a2.indexOf(44)), 0)));
        }
    }

    /* renamed from: a */
    private static C1813e.C1815b m42134a(ArrayList<C1813e.C1815b> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            C1813e.C1815b c1815b = arrayList.get(i);
            if (str.equals(c1815b.f7242d)) {
                return c1815b;
            }
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    private static C1813e m42143a(C1820a c1820a, String str) throws IOException {
        int i;
        boolean z;
        String str2;
        int i2;
        int i3;
        float f;
        String str3;
        int i4;
        int i5;
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
            int i6 = -1;
            if (!c1820a.m42128a()) {
                break;
            }
            String m42127b = c1820a.m42127b();
            if (m42127b.startsWith("#EXT")) {
                arrayList8.add(m42127b);
            }
            if (m42127b.startsWith("#EXT-X-DEFINE")) {
                hashMap2.put(m42135a(m42127b, f7273A, hashMap2), m42135a(m42127b, f7280H, hashMap2));
            } else if (m42127b.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                z2 = true;
            } else if (m42127b.startsWith("#EXT-X-MEDIA")) {
                arrayList6.add(m42127b);
            } else if (m42127b.startsWith("#EXT-X-SESSION-KEY")) {
                DrmInitData.SchemeData m42139a = m42139a(m42127b, m42136a(m42127b, f7303u, "identity", hashMap2), hashMap2);
                if (m42139a != null) {
                    arrayList7.add(new DrmInitData(m42140a(m42135a(m42127b, f7302t, hashMap2)), m42139a));
                }
            } else if (m42127b.startsWith("#EXT-X-STREAM-INF")) {
                boolean contains = m42127b.contains("CLOSED-CAPTIONS=NONE");
                int m42137a = m42137a(m42127b, f7288f);
                String m42136a = m42136a(m42127b, f7283a, null, hashMap2);
                if (m42136a != null) {
                    m42137a = Integer.parseInt(m42136a);
                }
                String m42136a2 = m42136a(m42127b, f7290h, null, hashMap2);
                String m42136a3 = m42136a(m42127b, f7291i, null, hashMap2);
                if (m42136a3 != null) {
                    String[] split = m42136a3.split("x");
                    i5 = Integer.parseInt(split[0]);
                    int parseInt = Integer.parseInt(split[1]);
                    if (i5 <= 0 || parseInt <= 0) {
                        i5 = -1;
                    } else {
                        i6 = parseInt;
                    }
                } else {
                    i5 = -1;
                    i6 = -1;
                }
                String m42136a4 = m42136a(m42127b, f7292j, null, hashMap2);
                float parseFloat = m42136a4 != null ? Float.parseFloat(m42136a4) : -1.0f;
                String m42136a5 = m42136a(m42127b, f7284b, null, hashMap2);
                String m42136a6 = m42136a(m42127b, f7285c, null, hashMap2);
                String m42136a7 = m42136a(m42127b, f7286d, null, hashMap2);
                String m42136a8 = m42136a(m42127b, f7287e, null, hashMap2);
                Uri m41681a = C1995ab.m41681a(str, m42138a(c1820a.m42127b(), hashMap2));
                arrayList.add(new C1813e.C1815b(m41681a, Format.createVideoContainerFormat(Integer.toString(arrayList.size()), null, "application/x-mpegURL", null, m42136a2, null, m42137a, i5, i6, parseFloat, null, 0, 0), m42136a5, m42136a6, m42136a7, m42136a8));
                ArrayList arrayList9 = (ArrayList) hashMap.get(m41681a);
                ArrayList arrayList10 = arrayList9;
                if (arrayList9 == null) {
                    arrayList10 = new ArrayList();
                    hashMap.put(m41681a, arrayList10);
                }
                arrayList10.add(new HlsTrackMetadataEntry.VariantInfo(m42137a, m42136a5, m42136a6, m42136a7, m42136a8));
                z3 |= contains;
            }
        }
        ArrayList arrayList11 = new ArrayList();
        HashSet hashSet = new HashSet();
        for (int i7 = 0; i7 < arrayList.size(); i7++) {
            C1813e.C1815b c1815b = (C1813e.C1815b) arrayList.get(i7);
            if (hashSet.add(c1815b.f7239a)) {
                C1993a.m41686b(c1815b.f7240b.metadata == null);
                arrayList11.add(new C1813e.C1815b(c1815b.f7239a, c1815b.f7240b.copyWithMetadata(new Metadata(new HlsTrackMetadataEntry(null, null, (List) hashMap.get(c1815b.f7239a)))), c1815b.f7241c, c1815b.f7242d, c1815b.f7243e, c1815b.f7244f));
            }
        }
        Format format = null;
        ArrayList arrayList12 = null;
        boolean z4 = z3;
        for (int i8 = 0; i8 < arrayList6.size(); i8++) {
            String str4 = (String) arrayList6.get(i8);
            String m42135a = m42135a(str4, f7274B, hashMap2);
            String m42135a2 = m42135a(str4, f7273A, hashMap2);
            String m42136a9 = m42136a(str4, f7305w, null, hashMap2);
            Uri m41681a2 = m42136a9 == null ? null : C1995ab.m41681a(str, m42136a9);
            String m42136a10 = m42136a(str4, f7308z, null, hashMap2);
            boolean m42129c = m42129c(str4, f7278F);
            boolean z5 = m42129c;
            if (m42129c(str4, f7279G)) {
                z5 = m42129c | true;
            }
            boolean z6 = z5;
            if (m42129c(str4, f7277E)) {
                z6 = z5 | true;
            }
            String m42136a11 = m42136a(str4, f7275C, null, hashMap2);
            if (TextUtils.isEmpty(m42136a11)) {
                i = 0;
            } else {
                String[] m41654a = C1996ac.m41654a(m42136a11, ",");
                int i9 = C1996ac.m41641a((Object[]) m41654a, (Object) "public.accessibility.describes-video") ? 512 : 0;
                int i10 = i9;
                if (C1996ac.m41641a((Object[]) m41654a, (Object) "public.accessibility.transcribes-spoken-dialog")) {
                    i10 = i9 | 4096;
                }
                i = i10;
                if (C1996ac.m41641a((Object[]) m41654a, (Object) "public.accessibility.describes-music-and-sound")) {
                    i = i10 | 1024;
                }
                if (C1996ac.m41641a((Object[]) m41654a, (Object) "public.easy-to-read")) {
                    i |= PropertyFlags.UNSIGNED;
                }
            }
            StringBuilder sb = new StringBuilder(String.valueOf(m42135a).length() + 1 + String.valueOf(m42135a2).length());
            sb.append(m42135a);
            sb.append(":");
            sb.append(m42135a2);
            String sb2 = sb.toString();
            Metadata metadata = new Metadata(new HlsTrackMetadataEntry(m42135a, m42135a2, Collections.emptyList()));
            String m42135a3 = m42135a(str4, f7307y, hashMap2);
            m42135a3.hashCode();
            switch (m42135a3.hashCode()) {
                case -959297733:
                    if (m42135a3.equals("SUBTITLES")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case -333210994:
                    if (m42135a3.equals("CLOSED-CAPTIONS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 62628790:
                    if (m42135a3.equals("AUDIO")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 81665115:
                    if (m42135a3.equals("VIDEO")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                default:
                    z = true;
                    break;
            }
            switch (z) {
                case false:
                    arrayList4.add(new C1813e.C1814a(m41681a2, Format.createTextContainerFormat(sb2, m42135a2, "application/x-mpegURL", "text/vtt", null, -1, z6 ? 1 : 0, i, m42136a10).copyWithMetadata(metadata), m42135a, m42135a2));
                    break;
                case true:
                    String m42135a4 = m42135a(str4, f7276D, hashMap2);
                    if (m42135a4.startsWith("CC")) {
                        i2 = Integer.parseInt(m42135a4.substring(2));
                        str2 = "application/cea-608";
                    } else {
                        i2 = Integer.parseInt(m42135a4.substring(7));
                        str2 = "application/cea-708";
                    }
                    ArrayList arrayList13 = arrayList12;
                    if (arrayList12 == null) {
                        arrayList13 = new ArrayList();
                    }
                    arrayList13.add(Format.createTextContainerFormat(sb2, m42135a2, null, str2, null, -1, z6 ? 1 : 0, i, m42136a10, i2));
                    arrayList12 = arrayList13;
                    break;
                case true:
                    C1813e.C1815b m42134a = m42134a(arrayList, m42135a);
                    String m41656a = m42134a != null ? C1996ac.m41656a(m42134a.f7240b.codecs, 1) : null;
                    String m41569f = m41656a != null ? C2012m.m41569f(m41656a) : null;
                    String m42136a12 = m42136a(str4, f7289g, null, hashMap2);
                    Format createAudioContainerFormat = Format.createAudioContainerFormat(sb2, m42135a2, "application/x-mpegURL", m41569f, m41656a, null, -1, m42136a12 != null ? Integer.parseInt(C1996ac.m41630b(m42136a12, "/")[0]) : -1, -1, null, z6 ? 1 : 0, i, m42136a10);
                    if (m41681a2 == null) {
                        format = createAudioContainerFormat;
                        break;
                    } else {
                        arrayList3.add(new C1813e.C1814a(m41681a2, createAudioContainerFormat.copyWithMetadata(metadata), m42135a, m42135a2));
                        break;
                    }
                case true:
                    C1813e.C1815b m42130b = m42130b(arrayList, m42135a);
                    if (m42130b != null) {
                        Format format2 = m42130b.f7240b;
                        str3 = C1996ac.m41656a(format2.codecs, 2);
                        i4 = format2.width;
                        i3 = format2.height;
                        f = format2.frameRate;
                    } else {
                        str3 = null;
                        i4 = -1;
                        i3 = -1;
                        f = -1.0f;
                    }
                    Format copyWithMetadata = Format.createVideoContainerFormat(sb2, m42135a2, "application/x-mpegURL", str3 != null ? C2012m.m41569f(str3) : null, str3, null, -1, i4, i3, f, null, z6 ? 1 : 0, i).copyWithMetadata(metadata);
                    if (m41681a2 != null) {
                        arrayList2.add(new C1813e.C1814a(m41681a2, copyWithMetadata, m42135a, m42135a2));
                        break;
                    } else {
                        break;
                    }
            }
        }
        ArrayList arrayList14 = arrayList12;
        if (z4) {
            arrayList14 = Collections.emptyList();
        }
        return new C1813e(str, arrayList8, arrayList11, arrayList2, arrayList3, arrayList4, arrayList5, format, arrayList14, z2, hashMap2, arrayList7);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v114, types: [long] */
    /* JADX WARN: Type inference failed for: r0v164, types: [long] */
    /* JADX WARN: Type inference failed for: r0v170, types: [long] */
    /* JADX WARN: Type inference failed for: r0v188, types: [long] */
    /* JADX WARN: Type inference failed for: r0v208, types: [long] */
    /* JADX WARN: Type inference failed for: r0v214, types: [long] */
    /* JADX WARN: Type inference failed for: r0v219, types: [long] */
    /* JADX WARN: Type inference failed for: r0v226, types: [androidx.media2.exoplayer.external.drm.DrmInitData] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1, types: [androidx.media2.exoplayer.external.drm.DrmInitData] */
    /* renamed from: a */
    private static C1816f m42144a(C1813e c1813e, C1820a c1820a, String str) throws IOException {
        String str2;
        String str3;
        boolean z = c1813e.f7272p;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        TreeMap treeMap = new TreeMap();
        String str4 = null;
        char c = 1;
        char c2 = 1;
        String str5 = "";
        String str6 = null;
        String str7 = null;
        DrmInitData drmInitData = null;
        String str8 = null;
        String str9 = null;
        C1816f.C1817a c1817a = null;
        boolean z2 = false;
        int i = 0;
        int i2 = 0;
        char c3 = 0;
        int i3 = 0;
        char c4 = 0;
        int i4 = 1;
        boolean z3 = false;
        char c5 = 0;
        char c6 = 0;
        boolean z4 = false;
        char c7 = 65535;
        char c8 = 0;
        char c9 = 0;
        while (c1820a.m42128a()) {
            String m42127b = c1820a.m42127b();
            if (m42127b.startsWith("#EXT")) {
                arrayList2.add(m42127b);
            }
            if (m42127b.startsWith("#EXT-X-PLAYLIST-TYPE")) {
                String m42135a = m42135a(m42127b, f7295m, hashMap);
                if ("VOD".equals(m42135a)) {
                    i = 1;
                } else if ("EVENT".equals(m42135a)) {
                    i = 2;
                }
            } else if (m42127b.startsWith("#EXT-X-START")) {
                c = (long) (m42131b(m42127b, f7299q) * 1000000.0d);
            } else if (m42127b.startsWith("#EXT-X-MAP")) {
                String m42135a2 = m42135a(m42127b, f7305w, hashMap);
                String m42136a = m42136a(m42127b, f7301s, str4, hashMap);
                if (m42136a != null) {
                    String[] split = m42136a.split("@");
                    c7 = Long.parseLong(split[0]);
                    if (split.length > 1) {
                        c5 = Long.parseLong(split[1]);
                    }
                }
                if (str6 != null && str9 == null) {
                    throw new ParserException("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.");
                }
                c1817a = new C1816f.C1817a(m42135a2, c5, c7, str6, str9);
                c5 = 0;
                c7 = 65535;
            } else if (m42127b.startsWith("#EXT-X-TARGETDURATION")) {
                c2 = 1000000 * m42137a(m42127b, f7293k);
            } else if (m42127b.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                c6 = Long.parseLong(m42135a(m42127b, f7296n, Collections.emptyMap()));
                c4 = c6;
            } else if (m42127b.startsWith("#EXT-X-VERSION")) {
                i4 = m42137a(m42127b, f7294l);
            } else if (m42127b.startsWith("#EXT-X-DEFINE")) {
                String m42136a2 = m42136a(m42127b, f7281I, str4, hashMap);
                if (m42136a2 != null) {
                    String str10 = c1813e.f7233j.get(m42136a2);
                    if (str10 != null) {
                        hashMap.put(m42136a2, str10);
                    }
                } else {
                    hashMap.put(m42135a(m42127b, f7273A, hashMap), m42135a(m42127b, f7280H, hashMap));
                }
            } else if (m42127b.startsWith("#EXTINF")) {
                c9 = (long) (m42131b(m42127b, f7297o) * 1000000.0d);
                str5 = m42136a(m42127b, f7298p, "", hashMap);
            } else if (m42127b.startsWith("#EXT-X-KEY")) {
                String m42135a3 = m42135a(m42127b, f7302t, hashMap);
                String m42136a3 = m42136a(m42127b, f7303u, "identity", hashMap);
                if ("NONE".equals(m42135a3)) {
                    treeMap.clear();
                    str6 = str4;
                    str8 = str6;
                    str9 = str8;
                } else {
                    String m42136a4 = m42136a(m42127b, f7306x, str4, hashMap);
                    if ("identity".equals(m42136a3)) {
                        str2 = str7;
                        str3 = str8;
                        if ("AES-128".equals(m42135a3)) {
                            str6 = m42135a(m42127b, f7305w, hashMap);
                            str9 = m42136a4;
                        }
                    } else {
                        String str11 = str7;
                        if (str7 == null) {
                            str11 = m42140a(m42135a3);
                        }
                        DrmInitData.SchemeData m42139a = m42139a(m42127b, m42136a3, hashMap);
                        str2 = str11;
                        str3 = str8;
                        if (m42139a != null) {
                            treeMap.put(m42136a3, m42139a);
                            str3 = str4;
                            str2 = str11;
                        }
                    }
                    str6 = str4;
                    str7 = str2;
                    str8 = str3;
                    str9 = m42136a4;
                }
            } else if (m42127b.startsWith("#EXT-X-BYTERANGE")) {
                String[] split2 = m42135a(m42127b, f7300r, hashMap).split("@");
                ?? parseLong = Long.parseLong(split2[0]);
                c7 = parseLong;
                if (split2.length > 1) {
                    c5 = Long.parseLong(split2[1]);
                    c7 = parseLong;
                }
            } else if (m42127b.startsWith("#EXT-X-DISCONTINUITY-SEQUENCE")) {
                i3 = Integer.parseInt(m42127b.substring(m42127b.indexOf(58) + 1));
                z2 = true;
            } else if (m42127b.equals("#EXT-X-DISCONTINUITY")) {
                i2++;
            } else if (m42127b.startsWith("#EXT-X-PROGRAM-DATE-TIME")) {
                if (c3 == 0) {
                    c3 = C1446c.m42893b(C1996ac.m41616f(m42127b.substring(m42127b.indexOf(58) + 1))) - c8;
                }
            } else if (m42127b.equals("#EXT-X-GAP")) {
                z4 = true;
            } else if (m42127b.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                z = true;
            } else if (m42127b.equals("#EXT-X-ENDLIST")) {
                z3 = true;
            } else if (!m42127b.startsWith("#")) {
                String hexString = str6 == null ? str4 : str9 != null ? str9 : Long.toHexString(c6);
                int i5 = (c7 > (-1L) ? 1 : (c7 == (-1L) ? 0 : -1));
                if (i5 == 0) {
                    c5 = 0;
                }
                if (str8 == null && !treeMap.isEmpty()) {
                    DrmInitData.SchemeData[] schemeDataArr = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                    str8 = new DrmInitData(str7, schemeDataArr);
                    if (drmInitData == null) {
                        DrmInitData.SchemeData[] schemeDataArr2 = new DrmInitData.SchemeData[schemeDataArr.length];
                        for (int i6 = 0; i6 < schemeDataArr.length; i6++) {
                            schemeDataArr2[i6] = schemeDataArr[i6].copyWithData(null);
                        }
                        str4 = null;
                        drmInitData = new DrmInitData(str7, schemeDataArr2);
                    } else {
                        str4 = null;
                    }
                }
                arrayList.add(new C1816f.C1817a(m42138a(m42127b, hashMap), c1817a, str5, c9, i2, c8, str8, str6, hexString, c5, c7, z4));
                c8 += c9;
                char c10 = c5;
                if (i5 != 0) {
                    c10 = c5 + c7;
                }
                c5 = c10;
                c7 = 65535;
                c6++;
                str5 = "";
                z4 = false;
                c9 = 0;
            }
        }
        return new C1816f(i, str, arrayList2, c, c3, z2, i3, c4, i4, c2, z, z3, c3 != 0, drmInitData, arrayList);
    }

    /* renamed from: a */
    private static String m42140a(String str) {
        return ("SAMPLE-AES-CENC".equals(str) || "SAMPLE-AES-CTR".equals(str)) ? "cenc" : "cbcs";
    }

    /* renamed from: a */
    private static String m42138a(String str, Map<String, String> map) {
        Matcher matcher = f7282J.matcher(str);
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

    /* renamed from: a */
    private static String m42136a(String str, Pattern pattern, String str2, Map<String, String> map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = matcher.group(1);
        }
        return (map.isEmpty() || str2 == null) ? str2 : m42138a(str2, map);
    }

    /* renamed from: a */
    private static String m42135a(String str, Pattern pattern, Map<String, String> map) throws ParserException {
        String m42136a = m42136a(str, pattern, null, map);
        if (m42136a != null) {
            return m42136a;
        }
        String pattern2 = pattern.pattern();
        StringBuilder sb = new StringBuilder(String.valueOf(pattern2).length() + 19 + String.valueOf(str).length());
        sb.append("Couldn't match ");
        sb.append(pattern2);
        sb.append(" in ");
        sb.append(str);
        throw new ParserException(sb.toString());
    }

    /* renamed from: a */
    private static boolean m42142a(BufferedReader bufferedReader) throws IOException {
        int read = bufferedReader.read();
        int i = read;
        if (read == 239) {
            if (bufferedReader.read() != 187 || bufferedReader.read() != 191) {
                return false;
            }
            i = bufferedReader.read();
        }
        int m42141a = m42141a(bufferedReader, true, i);
        for (int i2 = 0; i2 < 7; i2++) {
            if (m42141a != "#EXTM3U".charAt(i2)) {
                return false;
            }
            m42141a = bufferedReader.read();
        }
        return C1996ac.m41676a(m42141a(bufferedReader, false, m42141a));
    }

    /* renamed from: b */
    private static double m42131b(String str, Pattern pattern) throws ParserException {
        return Double.parseDouble(m42135a(str, pattern, Collections.emptyMap()));
    }

    /* renamed from: b */
    private static C1813e.C1815b m42130b(ArrayList<C1813e.C1815b> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            C1813e.C1815b c1815b = arrayList.get(i);
            if (str.equals(c1815b.f7241c)) {
                return c1815b;
            }
        }
        return null;
    }

    /* renamed from: b */
    public AbstractC1818g mo41698a(Uri uri, InputStream inputStream) throws IOException {
        String trim;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            if (!m42142a(bufferedReader)) {
                throw new UnrecognizedInputFormatException("Input does not start with the #EXTM3U header.", uri);
            }
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    C1996ac.m41660a((Closeable) bufferedReader);
                    throw new ParserException("Failed to parse the playlist, could not identify any tags.");
                }
                trim = readLine.trim();
                if (!trim.isEmpty()) {
                    if (!trim.startsWith("#EXT-X-STREAM-INF")) {
                        if (trim.startsWith("#EXT-X-TARGETDURATION") || trim.startsWith("#EXT-X-MEDIA-SEQUENCE") || trim.startsWith("#EXTINF") || trim.startsWith("#EXT-X-KEY") || trim.startsWith("#EXT-X-BYTERANGE") || trim.equals("#EXT-X-DISCONTINUITY") || trim.equals("#EXT-X-DISCONTINUITY-SEQUENCE") || trim.equals("#EXT-X-ENDLIST")) {
                            break;
                        }
                        arrayDeque.add(trim);
                    } else {
                        arrayDeque.add(trim);
                        return m42143a(new C1820a(arrayDeque, bufferedReader), uri.toString());
                    }
                }
            }
            arrayDeque.add(trim);
            return m42144a(this.f7309K, new C1820a(arrayDeque, bufferedReader), uri.toString());
        } finally {
            C1996ac.m41660a((Closeable) bufferedReader);
        }
    }

    /* renamed from: b */
    private static Pattern m42132b(String str) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 9);
        sb.append(str);
        sb.append("=(NO|YES");
        sb.append(")");
        return Pattern.compile(sb.toString());
    }

    /* renamed from: c */
    private static boolean m42129c(String str, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return matcher.group(1).equals("YES");
        }
        return false;
    }
}
