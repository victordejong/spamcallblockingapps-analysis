package androidx.media2.exoplayer.external.text.f;

import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.ae;
import androidx.media2.exoplayer.external.util.j;
import java.io.IOException;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/f/a.class */
public final class a extends androidx.media2.exoplayer.external.text.b {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3876a = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f3877b = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f3878c = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f3879d = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");
    private static final Pattern e = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");
    private static final Pattern f = Pattern.compile("^(\\d+) (\\d+)$");
    private static final b g = new b(30.0f, 1, 1);
    private static final C0091a h = new C0091a(32, 15);
    private final XmlPullParserFactory i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.text.f.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/f/a$a.class */
    public static final class C0091a {

        /* renamed from: a  reason: collision with root package name */
        final int f3880a;

        /* renamed from: b  reason: collision with root package name */
        final int f3881b;

        C0091a(int i, int i2) {
            this.f3880a = i;
            this.f3881b = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/f/a$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final float f3882a;

        /* renamed from: b  reason: collision with root package name */
        final int f3883b;

        /* renamed from: c  reason: collision with root package name */
        final int f3884c;

        b(float f, int i, int i2) {
            this.f3882a = f;
            this.f3883b = i;
            this.f3884c = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/f/a$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        final int f3885a;

        /* renamed from: b  reason: collision with root package name */
        final int f3886b;

        c(int i, int i2) {
            this.f3885a = i;
            this.f3886b = i2;
        }
    }

    public a() {
        super("TtmlDecoder");
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.i = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e2) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0110, code lost:
        if (r0.equals("ms") == false) goto L_0x0104;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [double] */
    /* JADX WARN: Type inference failed for: r18v0, types: [double] */
    /* JADX WARN: Type inference failed for: r18v10 */
    /* JADX WARN: Type inference failed for: r18v14 */
    /* JADX WARN: Type inference failed for: r18v15 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long a(java.lang.String r5, androidx.media2.exoplayer.external.text.f.a.b r6) throws androidx.media2.exoplayer.external.text.SubtitleDecoderException {
        /*
            Method dump skipped, instructions count: 498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.f.a.a(java.lang.String, androidx.media2.exoplayer.external.text.f.a$b):long");
    }

    private static C0091a a(XmlPullParser xmlPullParser, C0091a aVar) throws SubtitleDecoderException {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return aVar;
        }
        Matcher matcher = f.matcher(attributeValue);
        if (!matcher.matches()) {
            String valueOf = String.valueOf(attributeValue);
            j.a("TtmlDecoder", valueOf.length() != 0 ? "Ignoring malformed cell resolution: ".concat(valueOf) : new String("Ignoring malformed cell resolution: "));
            return aVar;
        }
        try {
            int parseInt = Integer.parseInt(matcher.group(1));
            int parseInt2 = Integer.parseInt(matcher.group(2));
            if (parseInt != 0 && parseInt2 != 0) {
                return new C0091a(parseInt, parseInt2);
            }
            StringBuilder sb = new StringBuilder(47);
            sb.append("Invalid cell resolution ");
            sb.append(parseInt);
            sb.append(StringUtils.SPACE);
            sb.append(parseInt2);
            throw new SubtitleDecoderException(sb.toString());
        } catch (NumberFormatException e2) {
            String valueOf2 = String.valueOf(attributeValue);
            j.a("TtmlDecoder", valueOf2.length() != 0 ? "Ignoring malformed cell resolution: ".concat(valueOf2) : new String("Ignoring malformed cell resolution: "));
            return aVar;
        }
    }

    private static c a(XmlPullParser xmlPullParser) {
        String c2 = ae.c(xmlPullParser, "extent");
        if (c2 == null) {
            return null;
        }
        Matcher matcher = e.matcher(c2);
        if (!matcher.matches()) {
            String valueOf = String.valueOf(c2);
            j.a("TtmlDecoder", valueOf.length() != 0 ? "Ignoring non-pixel tts extent: ".concat(valueOf) : new String("Ignoring non-pixel tts extent: "));
            return null;
        }
        try {
            return new c(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)));
        } catch (NumberFormatException e2) {
            String valueOf2 = String.valueOf(c2);
            j.a("TtmlDecoder", valueOf2.length() != 0 ? "Ignoring malformed tts extent: ".concat(valueOf2) : new String("Ignoring malformed tts extent: "));
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v143 */
    /* JADX WARN: Type inference failed for: r0v62 */
    /* JADX WARN: Type inference failed for: r24v0 */
    /* JADX WARN: Type inference failed for: r24v1, types: [long] */
    /* JADX WARN: Type inference failed for: r24v10 */
    /* JADX WARN: Type inference failed for: r24v11 */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v3, types: [long] */
    /* JADX WARN: Type inference failed for: r24v4 */
    /* JADX WARN: Type inference failed for: r24v5 */
    /* JADX WARN: Type inference failed for: r24v8 */
    /* JADX WARN: Type inference failed for: r24v9 */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v1, types: [long] */
    /* JADX WARN: Type inference failed for: r26v2 */
    /* JADX WARN: Type inference failed for: r26v3 */
    /* JADX WARN: Type inference failed for: r33v10, types: [long] */
    /* JADX WARN: Type inference failed for: r33v11 */
    /* JADX WARN: Type inference failed for: r33v12 */
    /* JADX WARN: Type inference failed for: r33v13 */
    /* JADX WARN: Type inference failed for: r33v14 */
    /* JADX WARN: Type inference failed for: r33v15 */
    /* JADX WARN: Type inference failed for: r33v6 */
    /* JADX WARN: Type inference failed for: r33v7 */
    /* JADX WARN: Type inference failed for: r33v8 */
    /* JADX WARN: Type inference failed for: r33v9 */
    /* JADX WARN: Type inference failed for: r35v10 */
    /* JADX WARN: Type inference failed for: r35v11 */
    /* JADX WARN: Type inference failed for: r35v12 */
    /* JADX WARN: Type inference failed for: r35v13 */
    /* JADX WARN: Type inference failed for: r35v14 */
    /* JADX WARN: Type inference failed for: r35v4 */
    /* JADX WARN: Type inference failed for: r35v5 */
    /* JADX WARN: Type inference failed for: r35v6 */
    /* JADX WARN: Type inference failed for: r35v7, types: [long] */
    /* JADX WARN: Type inference failed for: r35v8 */
    /* JADX WARN: Type inference failed for: r35v9 */
    /* JADX WARN: Type inference failed for: r38v0, types: [long] */
    /* JADX WARN: Type inference failed for: r38v1 */
    /* JADX WARN: Type inference failed for: r38v10 */
    /* JADX WARN: Type inference failed for: r38v11 */
    /* JADX WARN: Type inference failed for: r38v12 */
    /* JADX WARN: Type inference failed for: r38v13 */
    /* JADX WARN: Type inference failed for: r38v14 */
    /* JADX WARN: Type inference failed for: r38v15 */
    /* JADX WARN: Type inference failed for: r38v16 */
    /* JADX WARN: Type inference failed for: r38v2 */
    /* JADX WARN: Type inference failed for: r38v3 */
    /* JADX WARN: Type inference failed for: r38v6 */
    /* JADX WARN: Type inference failed for: r38v7 */
    /* JADX WARN: Type inference failed for: r38v8, types: [long] */
    /* JADX WARN: Type inference failed for: r38v9 */
    /* JADX WARN: Unknown variable types count: 8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private androidx.media2.exoplayer.external.text.f.b a(org.xmlpull.v1.XmlPullParser r14, androidx.media2.exoplayer.external.text.f.b r15, java.util.Map<java.lang.String, androidx.media2.exoplayer.external.text.f.c> r16, androidx.media2.exoplayer.external.text.f.a.b r17) throws androidx.media2.exoplayer.external.text.SubtitleDecoderException {
        /*
            Method dump skipped, instructions count: 780
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.f.a.a(org.xmlpull.v1.XmlPullParser, androidx.media2.exoplayer.external.text.f.b, java.util.Map, androidx.media2.exoplayer.external.text.f.a$b):androidx.media2.exoplayer.external.text.f.b");
    }

    private static androidx.media2.exoplayer.external.text.f.c a(XmlPullParser xmlPullParser, C0091a aVar, c cVar) {
        float parseFloat;
        float parseFloat2;
        float parseFloat3;
        float parseFloat4;
        int i;
        String c2 = ae.c(xmlPullParser, "id");
        if (c2 == null) {
            return null;
        }
        String c3 = ae.c(xmlPullParser, "origin");
        if (c3 != null) {
            Pattern pattern = f3879d;
            Matcher matcher = pattern.matcher(c3);
            Pattern pattern2 = e;
            Matcher matcher2 = pattern2.matcher(c3);
            if (matcher.matches()) {
                try {
                    parseFloat = Float.parseFloat(matcher.group(1)) / 100.0f;
                    parseFloat2 = Float.parseFloat(matcher.group(2)) / 100.0f;
                } catch (NumberFormatException e2) {
                    String valueOf = String.valueOf(c3);
                    j.a("TtmlDecoder", valueOf.length() != 0 ? "Ignoring region with malformed origin: ".concat(valueOf) : new String("Ignoring region with malformed origin: "));
                    return null;
                }
            } else if (!matcher2.matches()) {
                String valueOf2 = String.valueOf(c3);
                j.a("TtmlDecoder", valueOf2.length() != 0 ? "Ignoring region with unsupported origin: ".concat(valueOf2) : new String("Ignoring region with unsupported origin: "));
                return null;
            } else if (cVar == null) {
                String valueOf3 = String.valueOf(c3);
                j.a("TtmlDecoder", valueOf3.length() != 0 ? "Ignoring region with missing tts:extent: ".concat(valueOf3) : new String("Ignoring region with missing tts:extent: "));
                return null;
            } else {
                try {
                    int parseInt = Integer.parseInt(matcher2.group(1));
                    int parseInt2 = Integer.parseInt(matcher2.group(2));
                    parseFloat = parseInt / cVar.f3885a;
                    parseFloat2 = parseInt2 / cVar.f3886b;
                } catch (NumberFormatException e3) {
                    String valueOf4 = String.valueOf(c3);
                    j.a("TtmlDecoder", valueOf4.length() != 0 ? "Ignoring region with malformed origin: ".concat(valueOf4) : new String("Ignoring region with malformed origin: "));
                    return null;
                }
            }
            String c4 = ae.c(xmlPullParser, "extent");
            if (c4 != null) {
                Matcher matcher3 = pattern.matcher(c4);
                Matcher matcher4 = pattern2.matcher(c4);
                if (matcher3.matches()) {
                    try {
                        parseFloat3 = Float.parseFloat(matcher3.group(1)) / 100.0f;
                        parseFloat4 = Float.parseFloat(matcher3.group(2)) / 100.0f;
                    } catch (NumberFormatException e4) {
                        String valueOf5 = String.valueOf(c3);
                        j.a("TtmlDecoder", valueOf5.length() != 0 ? "Ignoring region with malformed extent: ".concat(valueOf5) : new String("Ignoring region with malformed extent: "));
                        return null;
                    }
                } else if (!matcher4.matches()) {
                    String valueOf6 = String.valueOf(c3);
                    j.a("TtmlDecoder", valueOf6.length() != 0 ? "Ignoring region with unsupported extent: ".concat(valueOf6) : new String("Ignoring region with unsupported extent: "));
                    return null;
                } else if (cVar == null) {
                    String valueOf7 = String.valueOf(c3);
                    j.a("TtmlDecoder", valueOf7.length() != 0 ? "Ignoring region with missing tts:extent: ".concat(valueOf7) : new String("Ignoring region with missing tts:extent: "));
                    return null;
                } else {
                    try {
                        int parseInt3 = Integer.parseInt(matcher4.group(1));
                        int parseInt4 = Integer.parseInt(matcher4.group(2));
                        parseFloat3 = parseInt3 / cVar.f3885a;
                        parseFloat4 = parseInt4 / cVar.f3886b;
                    } catch (NumberFormatException e5) {
                        String valueOf8 = String.valueOf(c3);
                        j.a("TtmlDecoder", valueOf8.length() != 0 ? "Ignoring region with malformed extent: ".concat(valueOf8) : new String("Ignoring region with malformed extent: "));
                        return null;
                    }
                }
                String c5 = ae.c(xmlPullParser, "displayAlign");
                if (c5 != null) {
                    String d2 = ac.d(c5);
                    d2.hashCode();
                    if (d2.equals("center")) {
                        parseFloat2 += parseFloat4 / 2.0f;
                        i = 1;
                    } else if (d2.equals("after")) {
                        parseFloat2 += parseFloat4;
                        i = 2;
                    }
                    return new androidx.media2.exoplayer.external.text.f.c(c2, parseFloat, parseFloat2, 0, i, parseFloat3, parseFloat4, 1, 1.0f / aVar.f3881b);
                }
                i = 0;
                return new androidx.media2.exoplayer.external.text.f.c(c2, parseFloat, parseFloat2, 0, i, parseFloat3, parseFloat4, 1, 1.0f / aVar.f3881b);
            }
            j.a("TtmlDecoder", "Ignoring region without an extent");
            return null;
        }
        j.a("TtmlDecoder", "Ignoring region without an origin");
        return null;
    }

    private static d a(d dVar) {
        d dVar2 = dVar;
        if (dVar == null) {
            dVar2 = new d();
        }
        return dVar2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x0611, code lost:
        if (r0.equals(net.pubnative.lite.sdk.vpaid.enums.EventConstants.START) == false) goto L_0x0600;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.media2.exoplayer.external.text.f.d a(org.xmlpull.v1.XmlPullParser r4, androidx.media2.exoplayer.external.text.f.d r5) {
        /*
            Method dump skipped, instructions count: 1847
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.f.a.a(org.xmlpull.v1.XmlPullParser, androidx.media2.exoplayer.external.text.f.d):androidx.media2.exoplayer.external.text.f.d");
    }

    private Map<String, d> a(XmlPullParser xmlPullParser, Map<String, d> map, C0091a aVar, c cVar, Map<String, androidx.media2.exoplayer.external.text.f.c> map2, Map<String, String> map3) throws IOException, XmlPullParserException {
        String c2;
        do {
            xmlPullParser.next();
            if (ae.b(xmlPullParser, "style")) {
                String c3 = ae.c(xmlPullParser, "style");
                d a2 = a(xmlPullParser, new d());
                if (c3 != null) {
                    for (String str : a(c3)) {
                        a2.a(map.get(str));
                    }
                }
                if (a2.l != null) {
                    map.put(a2.l, a2);
                }
            } else if (ae.b(xmlPullParser, "region")) {
                androidx.media2.exoplayer.external.text.f.c a3 = a(xmlPullParser, aVar, cVar);
                if (a3 != null) {
                    map2.put(a3.f3891a, a3);
                }
            } else if (ae.b(xmlPullParser, "metadata")) {
                do {
                    xmlPullParser.next();
                    if (ae.b(xmlPullParser, "image") && (c2 = ae.c(xmlPullParser, "id")) != null) {
                        map3.put(c2, xmlPullParser.nextText());
                    }
                } while (!ae.a(xmlPullParser, "metadata"));
            }
        } while (!ae.a(xmlPullParser, "head"));
        return map;
    }

    private static String[] a(String str) {
        String trim = str.trim();
        return trim.isEmpty() ? new String[0] : ac.a(trim, "\\s+");
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x0245 A[Catch: IOException -> 0x03d3, XmlPullParserException -> 0x03e0, TRY_ENTER, TryCatch #3 {IOException -> 0x03d3, XmlPullParserException -> 0x03e0, blocks: (B:3:0x0004, B:5:0x0033, B:9:0x0083, B:11:0x0091, B:14:0x00a0, B:18:0x00af, B:20:0x00c2, B:23:0x00cc, B:25:0x00df, B:27:0x00ef, B:28:0x0105, B:29:0x0111, B:30:0x0112, B:30:0x0112, B:31:0x0115, B:33:0x0131, B:35:0x013a, B:37:0x0152, B:38:0x0159, B:38:0x0159, B:39:0x015c, B:41:0x018d, B:43:0x019a, B:45:0x01a5, B:47:0x01b0, B:49:0x01bb, B:51:0x01c6, B:53:0x01d1, B:55:0x01dc, B:57:0x01e7, B:59:0x01f2, B:61:0x01fd, B:63:0x0208, B:65:0x0213, B:67:0x021e, B:69:0x0229, B:76:0x0245, B:78:0x0259, B:79:0x0265, B:80:0x0270, B:80:0x0270, B:81:0x0273, B:83:0x0285, B:85:0x0290, B:87:0x02a7, B:90:0x02c4, B:94:0x02e2, B:98:0x02fe, B:102:0x035d, B:104:0x036d, B:106:0x0385, B:115:0x03bd), top: B:126:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0285 A[Catch: IOException -> 0x03d3, XmlPullParserException -> 0x03e0, TRY_ENTER, TryCatch #3 {IOException -> 0x03d3, XmlPullParserException -> 0x03e0, blocks: (B:3:0x0004, B:5:0x0033, B:9:0x0083, B:11:0x0091, B:14:0x00a0, B:18:0x00af, B:20:0x00c2, B:23:0x00cc, B:25:0x00df, B:27:0x00ef, B:28:0x0105, B:29:0x0111, B:30:0x0112, B:30:0x0112, B:31:0x0115, B:33:0x0131, B:35:0x013a, B:37:0x0152, B:38:0x0159, B:38:0x0159, B:39:0x015c, B:41:0x018d, B:43:0x019a, B:45:0x01a5, B:47:0x01b0, B:49:0x01bb, B:51:0x01c6, B:53:0x01d1, B:55:0x01dc, B:57:0x01e7, B:59:0x01f2, B:61:0x01fd, B:63:0x0208, B:65:0x0213, B:67:0x021e, B:69:0x0229, B:76:0x0245, B:78:0x0259, B:79:0x0265, B:80:0x0270, B:80:0x0270, B:81:0x0273, B:83:0x0285, B:85:0x0290, B:87:0x02a7, B:90:0x02c4, B:94:0x02e2, B:98:0x02fe, B:102:0x035d, B:104:0x036d, B:106:0x0385, B:115:0x03bd), top: B:126:0x0004 }] */
    @Override // androidx.media2.exoplayer.external.text.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.media2.exoplayer.external.text.d a(byte[] r13, int r14, boolean r15) throws androidx.media2.exoplayer.external.text.SubtitleDecoderException {
        /*
            Method dump skipped, instructions count: 1005
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.f.a.a(byte[], int, boolean):androidx.media2.exoplayer.external.text.d");
    }
}
