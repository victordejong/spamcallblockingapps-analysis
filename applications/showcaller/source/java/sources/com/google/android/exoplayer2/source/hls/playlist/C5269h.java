package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.google.android.exoplayer2.C5543v;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.mp4.C5082j;
import com.google.android.exoplayer2.source.UnrecognizedInputFormatException;
import com.google.android.exoplayer2.source.hls.playlist.C5263e;
import com.google.android.exoplayer2.source.hls.playlist.C5266f;
import com.google.android.exoplayer2.upstream.C5494v;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.TreeMap;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* renamed from: com.google.android.exoplayer2.source.hls.playlist.h */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/h.class */
public final class C5269h implements C5494v.AbstractC5495a<AbstractC5268g> {

    /* renamed from: K */
    private final C5263e f16727K;

    /* renamed from: a */
    private static final Pattern f16701a = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");

    /* renamed from: b */
    private static final Pattern f16702b = Pattern.compile("VIDEO=\"(.+?)\"");

    /* renamed from: c */
    private static final Pattern f16703c = Pattern.compile("AUDIO=\"(.+?)\"");

    /* renamed from: d */
    private static final Pattern f16704d = Pattern.compile("SUBTITLES=\"(.+?)\"");

    /* renamed from: e */
    private static final Pattern f16705e = Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");

    /* renamed from: f */
    private static final Pattern f16706f = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");

    /* renamed from: g */
    private static final Pattern f16707g = Pattern.compile("CHANNELS=\"(.+?)\"");

    /* renamed from: h */
    private static final Pattern f16708h = Pattern.compile("CODECS=\"(.+?)\"");

    /* renamed from: i */
    private static final Pattern f16709i = Pattern.compile("RESOLUTION=(\\d+x\\d+)");

    /* renamed from: j */
    private static final Pattern f16710j = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");

    /* renamed from: k */
    private static final Pattern f16711k = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");

    /* renamed from: l */
    private static final Pattern f16712l = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");

    /* renamed from: m */
    private static final Pattern f16713m = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");

    /* renamed from: n */
    private static final Pattern f16714n = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");

    /* renamed from: o */
    private static final Pattern f16715o = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");

    /* renamed from: p */
    private static final Pattern f16716p = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");

    /* renamed from: q */
    private static final Pattern f16717q = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");

    /* renamed from: r */
    private static final Pattern f16718r = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");

    /* renamed from: s */
    private static final Pattern f16719s = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");

    /* renamed from: t */
    private static final Pattern f16720t = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");

    /* renamed from: u */
    private static final Pattern f16721u = Pattern.compile("KEYFORMAT=\"(.+?)\"");

    /* renamed from: v */
    private static final Pattern f16722v = Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");

    /* renamed from: w */
    private static final Pattern f16723w = Pattern.compile("URI=\"(.+?)\"");

    /* renamed from: x */
    private static final Pattern f16724x = Pattern.compile("IV=([^,.*]+)");

    /* renamed from: y */
    private static final Pattern f16725y = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");

    /* renamed from: z */
    private static final Pattern f16726z = Pattern.compile("LANGUAGE=\"(.+?)\"");

    /* renamed from: A */
    private static final Pattern f16691A = Pattern.compile("NAME=\"(.+?)\"");

    /* renamed from: B */
    private static final Pattern f16692B = Pattern.compile("GROUP-ID=\"(.+?)\"");

    /* renamed from: C */
    private static final Pattern f16693C = Pattern.compile("CHARACTERISTICS=\"(.+?)\"");

    /* renamed from: D */
    private static final Pattern f16694D = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");

    /* renamed from: E */
    private static final Pattern f16695E = m19899c("AUTOSELECT");

    /* renamed from: F */
    private static final Pattern f16696F = m19899c("DEFAULT");

    /* renamed from: G */
    private static final Pattern f16697G = m19899c("FORCED");

    /* renamed from: H */
    private static final Pattern f16698H = Pattern.compile("VALUE=\"(.+?)\"");

    /* renamed from: I */
    private static final Pattern f16699I = Pattern.compile("IMPORT=\"(.+?)\"");

    /* renamed from: J */
    private static final Pattern f16700J = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");

    /* renamed from: com.google.android.exoplayer2.source.hls.playlist.h$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/h$a.class */
    public static class C5270a {

        /* renamed from: a */
        private final BufferedReader f16728a;

        /* renamed from: b */
        private final Queue<String> f16729b;

        /* renamed from: c */
        private String f16730c;

        public C5270a(Queue<String> queue, BufferedReader bufferedReader) {
            this.f16729b = queue;
            this.f16728a = bufferedReader;
        }

        @EnsuresNonNullIf(expression = {"next"}, result = true)
        /* renamed from: a */
        public boolean m19879a() {
            String trim;
            if (this.f16730c != null) {
                return true;
            }
            if (!this.f16729b.isEmpty()) {
                this.f16730c = (String) C5508e.m18911e(this.f16729b.poll());
                return true;
            }
            do {
                String readLine = this.f16728a.readLine();
                this.f16730c = readLine;
                if (readLine == null) {
                    return false;
                }
                trim = readLine.trim();
                this.f16730c = trim;
            } while (trim.isEmpty());
            return true;
        }

        /* renamed from: b */
        public String m19878b() {
            if (m19879a()) {
                String str = this.f16730c;
                this.f16730c = null;
                return str;
            }
            throw new NoSuchElementException();
        }
    }

    public C5269h() {
        this(C5263e.f16642d);
    }

    public C5269h(C5263e c5263e) {
        this.f16727K = c5263e;
    }

    /* renamed from: b */
    private static boolean m19900b(BufferedReader bufferedReader) {
        int read = bufferedReader.read();
        int i = read;
        if (read == 239) {
            if (bufferedReader.read() != 187 || bufferedReader.read() != 191) {
                return false;
            }
            i = bufferedReader.read();
        }
        int m19880v = m19880v(bufferedReader, true, i);
        for (int i2 = 0; i2 < 7; i2++) {
            if (m19880v != "#EXTM3U".charAt(i2)) {
                return false;
            }
            m19880v = bufferedReader.read();
        }
        return C5515h0.m18850V(m19880v(bufferedReader, false, m19880v));
    }

    /* renamed from: c */
    private static Pattern m19899c(String str) {
        return Pattern.compile(str + "=(NO|YES)");
    }

    /* renamed from: d */
    private static C5263e.C5265b m19898d(ArrayList<C5263e.C5265b> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            C5263e.C5265b c5265b = arrayList.get(i);
            if (str.equals(c5265b.f16660d)) {
                return c5265b;
            }
        }
        return null;
    }

    /* renamed from: e */
    private static C5263e.C5265b m19897e(ArrayList<C5263e.C5265b> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            C5263e.C5265b c5265b = arrayList.get(i);
            if (str.equals(c5265b.f16659c)) {
                return c5265b;
            }
        }
        return null;
    }

    /* renamed from: g */
    private static double m19895g(String str, Pattern pattern) {
        return Double.parseDouble(m19882t(str, pattern, Collections.emptyMap()));
    }

    /* renamed from: h */
    private static DrmInitData.SchemeData m19894h(String str, String str2, Map<String, String> map) {
        String m19886p = m19886p(str, f16722v, "1", map);
        if ("urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed".equals(str2)) {
            String m19882t = m19882t(str, f16723w, map);
            return new DrmInitData.SchemeData(C5543v.f17963d, "video/mp4", Base64.decode(m19882t.substring(m19882t.indexOf(44)), 0));
        } else if ("com.widevine".equals(str2)) {
            return new DrmInitData.SchemeData(C5543v.f17963d, "hls", C5515h0.m18854R(str));
        } else {
            if (!"com.microsoft.playready".equals(str2) || !"1".equals(m19886p)) {
                return null;
            }
            String m19882t2 = m19882t(str, f16723w, map);
            byte[] decode = Base64.decode(m19882t2.substring(m19882t2.indexOf(44)), 0);
            UUID uuid = C5543v.f17964e;
            return new DrmInitData.SchemeData(uuid, "video/mp4", C5082j.m20603a(uuid, decode));
        }
    }

    /* renamed from: i */
    private static String m19893i(String str) {
        return ("SAMPLE-AES-CENC".equals(str) || "SAMPLE-AES-CTR".equals(str)) ? "cenc" : "cbcs";
    }

    /* renamed from: j */
    private static int m19892j(String str, Pattern pattern) {
        return Integer.parseInt(m19882t(str, pattern, Collections.emptyMap()));
    }

    /* renamed from: k */
    private static long m19891k(String str, Pattern pattern) {
        return Long.parseLong(m19882t(str, pattern, Collections.emptyMap()));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0181, code lost:
        if (r0 <= 0) goto L30;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.exoplayer2.source.hls.playlist.C5263e m19890l(com.google.android.exoplayer2.source.hls.playlist.C5269h.C5270a r18, java.lang.String r19) {
        /*
            Method dump skipped, instructions count: 1705
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.playlist.C5269h.m19890l(com.google.android.exoplayer2.source.hls.playlist.h$a, java.lang.String):com.google.android.exoplayer2.source.hls.playlist.e");
    }

    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v141, types: [long] */
    /* JADX WARN: Type inference failed for: r0v247, types: [long] */
    /* JADX WARN: Type inference failed for: r0v267, types: [long] */
    /* JADX WARN: Type inference failed for: r0v326, types: [long] */
    /* JADX WARN: Type inference failed for: r0v353, types: [long] */
    /* JADX WARN: Type inference failed for: r0v361, types: [long] */
    /* JADX WARN: Type inference failed for: r0v369, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* renamed from: m */
    private static C5266f m19889m(C5263e c5263e, C5270a c5270a, String str) {
        char m19892j;
        char c;
        int i;
        String str2;
        DrmInitData drmInitData;
        char c2;
        String str3;
        int i2;
        char c3;
        int i3;
        char c4;
        String str4;
        String str5;
        boolean z;
        DrmInitData drmInitData2;
        boolean z2 = c5263e.f16690c;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        TreeMap treeMap = new TreeMap();
        char c5 = 1;
        char c6 = 1;
        String str6 = "";
        boolean z3 = false;
        int i4 = 0;
        String str7 = null;
        String str8 = null;
        char c7 = 0;
        int i5 = 0;
        char c8 = 0;
        int i6 = 1;
        boolean z4 = false;
        DrmInitData drmInitData3 = null;
        char c9 = 0;
        char c10 = 0;
        DrmInitData drmInitData4 = null;
        String str9 = null;
        int i7 = 0;
        char c11 = 0;
        C5266f.C5267a c5267a = null;
        while (true) {
            char c12 = 65535;
            boolean z5 = false;
            char c13 = 0;
            String str10 = str6;
            while (c5270a.m19879a()) {
                String m19878b = c5270a.m19878b();
                if (m19878b.startsWith("#EXT")) {
                    arrayList2.add(m19878b);
                }
                if (m19878b.startsWith("#EXT-X-PLAYLIST-TYPE")) {
                    String m19882t = m19882t(m19878b, f16713m, hashMap);
                    if ("VOD".equals(m19882t)) {
                        i4 = 1;
                    } else if ("EVENT".equals(m19882t)) {
                        i4 = 2;
                    }
                } else if (m19878b.startsWith("#EXT-X-START")) {
                    c5 = (long) (m19895g(m19878b, f16717q) * 1000000.0d);
                } else if (m19878b.startsWith("#EXT-X-MAP")) {
                    String m19882t2 = m19882t(m19878b, f16723w, hashMap);
                    String m19885q = m19885q(m19878b, f16719s, hashMap);
                    if (m19885q != null) {
                        String[] split = m19885q.split("@");
                        c12 = Long.parseLong(split[0]);
                        if (split.length > 1) {
                            c9 = Long.parseLong(split[1]);
                        }
                    }
                    if (str7 != null && str9 == null) {
                        throw new ParserException("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.");
                    }
                    c5267a = new C5266f.C5267a(m19882t2, c9, c12, str7, str9);
                    c9 = 0;
                    c12 = 65535;
                } else {
                    if (m19878b.startsWith("#EXT-X-TARGETDURATION")) {
                        m19892j = m19892j(m19878b, f16711k) * 1000000;
                        c = c13;
                        i = i7;
                        str2 = str9;
                        drmInitData = drmInitData4;
                        c2 = c10;
                        str3 = str10;
                        i2 = i6;
                        c3 = c8;
                        i3 = i5;
                        c4 = c7;
                        str4 = str8;
                        str5 = str7;
                        z = z3;
                    } else if (m19878b.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                        c2 = m19891k(m19878b, f16714n);
                        c3 = c2;
                        z = z3;
                        str5 = str7;
                        str4 = str8;
                        c4 = c7;
                        i3 = i5;
                        i2 = i6;
                        m19892j = c6;
                        str3 = str10;
                        drmInitData = drmInitData4;
                        str2 = str9;
                        i = i7;
                        c = c13;
                    } else if (m19878b.startsWith("#EXT-X-VERSION")) {
                        i2 = m19892j(m19878b, f16712l);
                        z = z3;
                        str5 = str7;
                        str4 = str8;
                        c4 = c7;
                        i3 = i5;
                        c3 = c8;
                        m19892j = c6;
                        str3 = str10;
                        c2 = c10;
                        drmInitData = drmInitData4;
                        str2 = str9;
                        i = i7;
                        c = c13;
                    } else if (m19878b.startsWith("#EXT-X-DEFINE")) {
                        String m19885q2 = m19885q(m19878b, f16699I, hashMap);
                        if (m19885q2 != null) {
                            String str11 = c5263e.f16651m.get(m19885q2);
                            if (str11 != null) {
                                hashMap.put(m19885q2, str11);
                            }
                        } else {
                            hashMap.put(m19882t(m19878b, f16691A, hashMap), m19882t(m19878b, f16698H, hashMap));
                        }
                    } else if (m19878b.startsWith("#EXTINF")) {
                        c = (long) (m19895g(m19878b, f16715o) * 1000000.0d);
                        str3 = m19886p(m19878b, f16716p, "", hashMap);
                        z = z3;
                        str5 = str7;
                        str4 = str8;
                        c4 = c7;
                        i3 = i5;
                        c3 = c8;
                        i2 = i6;
                        m19892j = c6;
                        c2 = c10;
                        drmInitData = drmInitData4;
                        str2 = str9;
                        i = i7;
                    } else if (m19878b.startsWith("#EXT-X-KEY")) {
                        String m19882t3 = m19882t(m19878b, f16720t, hashMap);
                        String m19886p = m19886p(m19878b, f16721u, "identity", hashMap);
                        if ("NONE".equals(m19882t3)) {
                            treeMap.clear();
                            str5 = null;
                            drmInitData = null;
                            str2 = null;
                            z = z3;
                            str4 = str8;
                            c4 = c7;
                            i3 = i5;
                            c3 = c8;
                            i2 = i6;
                            m19892j = c6;
                            str3 = str10;
                            c2 = c10;
                            i = i7;
                            c = c13;
                        } else {
                            String m19885q3 = m19885q(m19878b, f16724x, hashMap);
                            if ("identity".equals(m19886p)) {
                                str4 = str8;
                                if ("AES-128".equals(m19882t3)) {
                                    str2 = m19885q3;
                                    z = z3;
                                    str5 = m19882t(m19878b, f16723w, hashMap);
                                    str4 = str8;
                                    c4 = c7;
                                    i3 = i5;
                                    c3 = c8;
                                    i2 = i6;
                                    m19892j = c6;
                                    str3 = str10;
                                    c2 = c10;
                                    drmInitData = drmInitData4;
                                    i = i7;
                                    c = c13;
                                }
                                str2 = m19885q3;
                                str5 = null;
                                z = z3;
                                c4 = c7;
                                i3 = i5;
                                c3 = c8;
                                i2 = i6;
                                m19892j = c6;
                                str3 = str10;
                                c2 = c10;
                                drmInitData = drmInitData4;
                                i = i7;
                                c = c13;
                            } else {
                                String str12 = str8;
                                if (str8 == null) {
                                    str12 = m19893i(m19882t3);
                                }
                                DrmInitData.SchemeData m19894h = m19894h(m19878b, m19886p, hashMap);
                                str4 = str12;
                                if (m19894h != null) {
                                    treeMap.put(m19886p, m19894h);
                                    str5 = null;
                                    drmInitData = null;
                                    z = z3;
                                    str4 = str12;
                                    c4 = c7;
                                    i3 = i5;
                                    c3 = c8;
                                    i2 = i6;
                                    m19892j = c6;
                                    str3 = str10;
                                    c2 = c10;
                                    str2 = m19885q3;
                                    i = i7;
                                    c = c13;
                                }
                                str2 = m19885q3;
                                str5 = null;
                                z = z3;
                                c4 = c7;
                                i3 = i5;
                                c3 = c8;
                                i2 = i6;
                                m19892j = c6;
                                str3 = str10;
                                c2 = c10;
                                drmInitData = drmInitData4;
                                i = i7;
                                c = c13;
                            }
                        }
                    } else if (m19878b.startsWith("#EXT-X-BYTERANGE")) {
                        String[] split2 = m19882t(m19878b, f16718r, hashMap).split("@");
                        ?? parseLong = Long.parseLong(split2[0]);
                        z = z3;
                        str5 = str7;
                        str4 = str8;
                        c4 = c7;
                        i3 = i5;
                        c3 = c8;
                        i2 = i6;
                        m19892j = c6;
                        str3 = str10;
                        c2 = c10;
                        drmInitData = drmInitData4;
                        str2 = str9;
                        c12 = parseLong;
                        i = i7;
                        c = c13;
                        if (split2.length > 1) {
                            c9 = Long.parseLong(split2[1]);
                            z = z3;
                            str5 = str7;
                            str4 = str8;
                            c4 = c7;
                            i3 = i5;
                            c3 = c8;
                            i2 = i6;
                            m19892j = c6;
                            str3 = str10;
                            c2 = c10;
                            drmInitData = drmInitData4;
                            str2 = str9;
                            c12 = parseLong;
                            i = i7;
                            c = c13;
                        }
                    } else if (m19878b.startsWith("#EXT-X-DISCONTINUITY-SEQUENCE")) {
                        i3 = Integer.parseInt(m19878b.substring(m19878b.indexOf(58) + 1));
                        z = true;
                        str5 = str7;
                        str4 = str8;
                        c4 = c7;
                        c3 = c8;
                        i2 = i6;
                        m19892j = c6;
                        str3 = str10;
                        c2 = c10;
                        drmInitData = drmInitData4;
                        str2 = str9;
                        i = i7;
                        c = c13;
                    } else if (m19878b.equals("#EXT-X-DISCONTINUITY")) {
                        i = i7 + 1;
                        z = z3;
                        str5 = str7;
                        str4 = str8;
                        c4 = c7;
                        i3 = i5;
                        c3 = c8;
                        i2 = i6;
                        m19892j = c6;
                        str3 = str10;
                        c2 = c10;
                        drmInitData = drmInitData4;
                        str2 = str9;
                        c = c13;
                    } else if (m19878b.startsWith("#EXT-X-PROGRAM-DATE-TIME")) {
                        if (c7 == 0) {
                            c4 = C5543v.m18630a(C5515h0.m18830h0(m19878b.substring(m19878b.indexOf(58) + 1))) - c11;
                            z = z3;
                            str5 = str7;
                            str4 = str8;
                            i3 = i5;
                            c3 = c8;
                            i2 = i6;
                            m19892j = c6;
                            str3 = str10;
                            c2 = c10;
                            drmInitData = drmInitData4;
                            str2 = str9;
                            i = i7;
                            c = c13;
                        }
                    } else if (m19878b.equals("#EXT-X-GAP")) {
                        z5 = true;
                    } else if (m19878b.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                        z2 = true;
                    } else if (m19878b.equals("#EXT-X-ENDLIST")) {
                        z4 = true;
                    } else if (!m19878b.startsWith("#")) {
                        String hexString = str7 == null ? null : str9 != null ? str9 : Long.toHexString(c10);
                        ?? r0 = c10 + 1;
                        int i8 = (c12 > (-1L) ? 1 : (c12 == (-1L) ? 0 : -1));
                        if (i8 == 0) {
                            c9 = 0;
                        }
                        if (drmInitData4 != null || treeMap.isEmpty()) {
                            drmInitData2 = drmInitData4;
                        } else {
                            DrmInitData.SchemeData[] schemeDataArr = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                            drmInitData2 = new DrmInitData(str8, schemeDataArr);
                            if (drmInitData3 == null) {
                                DrmInitData.SchemeData[] schemeDataArr2 = new DrmInitData.SchemeData[schemeDataArr.length];
                                for (int i9 = 0; i9 < schemeDataArr.length; i9++) {
                                    schemeDataArr2[i9] = schemeDataArr[i9].m20793b(null);
                                }
                                drmInitData3 = new DrmInitData(str8, schemeDataArr2);
                            }
                        }
                        arrayList.add(new C5266f.C5267a(m19881u(m19878b, hashMap), c5267a, str10, c13, i7, c11, drmInitData2, str7, hexString, c9, c12, z5));
                        c11 += c13;
                        char c14 = c9;
                        if (i8 != 0) {
                            c14 = c9 + c12;
                        }
                        c9 = c14;
                        str6 = "";
                        c10 = r0;
                        drmInitData4 = drmInitData2;
                    }
                    z3 = z;
                    str7 = str5;
                    str8 = str4;
                    c7 = c4;
                    i5 = i3;
                    c8 = c3;
                    i6 = i2;
                    c6 = m19892j;
                    str10 = str3;
                    c10 = c2;
                    drmInitData4 = drmInitData;
                    str9 = str2;
                    i7 = i;
                    c13 = c;
                }
            }
            return new C5266f(i4, str, arrayList2, c5, c7, z3, i5, c8, i6, c6, z2, z4, c7 != 0, drmInitData3, arrayList);
        }
    }

    /* renamed from: n */
    private static boolean m19888n(String str, Pattern pattern, boolean z) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? matcher.group(1).equals("YES") : z;
    }

    /* renamed from: o */
    private static int m19887o(String str, Pattern pattern, int i) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Integer.parseInt(matcher.group(1)) : i;
    }

    /* renamed from: p */
    private static String m19886p(String str, Pattern pattern, String str2, Map<String, String> map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = matcher.group(1);
        }
        String str3 = str2;
        if (!map.isEmpty()) {
            str3 = str2 == null ? str2 : m19881u(str2, map);
        }
        return str3;
    }

    /* renamed from: q */
    private static String m19885q(String str, Pattern pattern, Map<String, String> map) {
        return m19886p(str, pattern, null, map);
    }

    /* renamed from: r */
    private static int m19884r(String str, Map<String, String> map) {
        String m19885q = m19885q(str, f16693C, map);
        int i = 0;
        if (TextUtils.isEmpty(m19885q)) {
            return 0;
        }
        String[] m18818n0 = C5515h0.m18818n0(m19885q, ",");
        if (C5515h0.m18815p(m18818n0, "public.accessibility.describes-video")) {
            i = 512;
        }
        int i2 = i;
        if (C5515h0.m18815p(m18818n0, "public.accessibility.transcribes-spoken-dialog")) {
            i2 = i | 4096;
        }
        int i3 = i2;
        if (C5515h0.m18815p(m18818n0, "public.accessibility.describes-music-and-sound")) {
            i3 = i2 | 1024;
        }
        int i4 = i3;
        if (C5515h0.m18815p(m18818n0, "public.easy-to-read")) {
            i4 = i3 | 8192;
        }
        return i4;
    }

    /* renamed from: s */
    private static int m19883s(String str) {
        int i = m19888n(str, f16696F, false) ? 1 : 0;
        int i2 = i;
        if (m19888n(str, f16697G, false)) {
            i2 = i | 2;
        }
        int i3 = i2;
        if (m19888n(str, f16695E, false)) {
            i3 = i2 | 4;
        }
        return i3;
    }

    /* renamed from: t */
    private static String m19882t(String str, Pattern pattern, Map<String, String> map) {
        String m19885q = m19885q(str, pattern, map);
        if (m19885q != null) {
            return m19885q;
        }
        throw new ParserException("Couldn't match " + pattern.pattern() + " in " + str);
    }

    /* renamed from: u */
    private static String m19881u(String str, Map<String, String> map) {
        Matcher matcher = f16700J.matcher(str);
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

    /* renamed from: v */
    private static int m19880v(BufferedReader bufferedReader, boolean z, int i) {
        while (i != -1 && Character.isWhitespace(i) && (z || !C5515h0.m18850V(i))) {
            i = bufferedReader.read();
        }
        return i;
    }

    /* renamed from: f */
    public AbstractC5268g mo18951a(Uri uri, InputStream inputStream) {
        String trim;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            if (!m19900b(bufferedReader)) {
                throw new UnrecognizedInputFormatException("Input does not start with the #EXTM3U header.", uri);
            }
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    C5515h0.m18825k(bufferedReader);
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
                        return m19890l(new C5270a(arrayDeque, bufferedReader), uri.toString());
                    }
                }
            }
            arrayDeque.add(trim);
            return m19889m(this.f16727K, new C5270a(arrayDeque, bufferedReader), uri.toString());
        } finally {
            C5515h0.m18825k(bufferedReader);
        }
    }
}
