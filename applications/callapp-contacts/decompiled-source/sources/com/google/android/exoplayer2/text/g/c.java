package com.google.android.exoplayer2.text.g;

import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.ag;
import com.google.android.exoplayer2.util.n;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/g/c.class */
public final class c extends com.google.android.exoplayer2.text.c {
    private final XmlPullParserFactory j;

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f21828c = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f21829d = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    private static final Pattern e = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* renamed from: a  reason: collision with root package name */
    static final Pattern f21826a = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");

    /* renamed from: b  reason: collision with root package name */
    static final Pattern f21827b = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");
    private static final Pattern f = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");
    private static final Pattern g = Pattern.compile("^(\\d+) (\\d+)$");
    private static final b h = new b(30.0f, 1, 1);
    private static final a i = new a(32, 15);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/g/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final int f21830a;

        /* renamed from: b  reason: collision with root package name */
        final int f21831b;

        a(int i, int i2) {
            this.f21830a = i;
            this.f21831b = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/g/c$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final float f21832a;

        /* renamed from: b  reason: collision with root package name */
        final int f21833b;

        /* renamed from: c  reason: collision with root package name */
        final int f21834c;

        b(float f, int i, int i2) {
            this.f21832a = f;
            this.f21833b = i;
            this.f21834c = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.text.g.c$c  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/g/c$c.class */
    public static final class C0442c {

        /* renamed from: a  reason: collision with root package name */
        final int f21835a;

        /* renamed from: b  reason: collision with root package name */
        final int f21836b;

        C0442c(int i, int i2) {
            this.f21835a = i;
            this.f21836b = i2;
        }
    }

    public c() {
        super("TtmlDecoder");
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.j = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e2) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x012c, code lost:
        if (r0.equals("ms") == false) goto L_0x0120;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    /* JADX WARN: Type inference failed for: r18v0, types: [double] */
    /* JADX WARN: Type inference failed for: r18v10 */
    /* JADX WARN: Type inference failed for: r18v14 */
    /* JADX WARN: Type inference failed for: r18v15 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long a(java.lang.String r5, com.google.android.exoplayer2.text.g.c.b r6) throws com.google.android.exoplayer2.text.SubtitleDecoderException {
        /*
            Method dump skipped, instructions count: 502
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.g.c.a(java.lang.String, com.google.android.exoplayer2.text.g.c$b):long");
    }

    private static a a(XmlPullParser xmlPullParser, a aVar) throws SubtitleDecoderException {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return aVar;
        }
        Matcher matcher = g.matcher(attributeValue);
        if (!matcher.matches()) {
            n.a("TtmlDecoder", "Ignoring malformed cell resolution: ".concat(String.valueOf(attributeValue)));
            return aVar;
        }
        try {
            int parseInt = Integer.parseInt((String) com.google.android.exoplayer2.util.a.b(matcher.group(1)));
            int parseInt2 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.b(matcher.group(2)));
            if (parseInt != 0 && parseInt2 != 0) {
                return new a(parseInt, parseInt2);
            }
            throw new SubtitleDecoderException("Invalid cell resolution " + parseInt + StringUtils.SPACE + parseInt2);
        } catch (NumberFormatException e2) {
            n.a("TtmlDecoder", "Ignoring malformed cell resolution: ".concat(String.valueOf(attributeValue)));
            return aVar;
        }
    }

    private static C0442c a(XmlPullParser xmlPullParser) {
        String c2 = ag.c(xmlPullParser, "extent");
        if (c2 == null) {
            return null;
        }
        Matcher matcher = f.matcher(c2);
        if (!matcher.matches()) {
            n.a("TtmlDecoder", "Ignoring non-pixel tts extent: ".concat(String.valueOf(c2)));
            return null;
        }
        try {
            return new C0442c(Integer.parseInt((String) com.google.android.exoplayer2.util.a.b(matcher.group(1))), Integer.parseInt((String) com.google.android.exoplayer2.util.a.b(matcher.group(2))));
        } catch (NumberFormatException e2) {
            n.a("TtmlDecoder", "Ignoring malformed tts extent: ".concat(String.valueOf(c2)));
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1, types: [long] */
    /* JADX WARN: Type inference failed for: r22v2, types: [long] */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r22v6 */
    /* JADX WARN: Type inference failed for: r22v7 */
    /* JADX WARN: Type inference failed for: r22v8 */
    /* JADX WARN: Type inference failed for: r22v9 */
    /* JADX WARN: Type inference failed for: r24v0 */
    /* JADX WARN: Type inference failed for: r24v1, types: [long] */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v1, types: [long] */
    /* JADX WARN: Type inference failed for: r26v2 */
    /* JADX WARN: Type inference failed for: r26v3 */
    /* JADX WARN: Type inference failed for: r34v10, types: [long] */
    /* JADX WARN: Type inference failed for: r34v11 */
    /* JADX WARN: Type inference failed for: r34v12 */
    /* JADX WARN: Type inference failed for: r34v13 */
    /* JADX WARN: Type inference failed for: r34v14 */
    /* JADX WARN: Type inference failed for: r34v15 */
    /* JADX WARN: Type inference failed for: r34v6 */
    /* JADX WARN: Type inference failed for: r34v7 */
    /* JADX WARN: Type inference failed for: r34v8 */
    /* JADX WARN: Type inference failed for: r34v9 */
    /* JADX WARN: Type inference failed for: r36v0, types: [long] */
    /* JADX WARN: Type inference failed for: r36v1 */
    /* JADX WARN: Type inference failed for: r36v10 */
    /* JADX WARN: Type inference failed for: r36v11 */
    /* JADX WARN: Type inference failed for: r36v12 */
    /* JADX WARN: Type inference failed for: r36v13 */
    /* JADX WARN: Type inference failed for: r36v14 */
    /* JADX WARN: Type inference failed for: r36v15 */
    /* JADX WARN: Type inference failed for: r36v16 */
    /* JADX WARN: Type inference failed for: r36v2 */
    /* JADX WARN: Type inference failed for: r36v3 */
    /* JADX WARN: Type inference failed for: r36v6 */
    /* JADX WARN: Type inference failed for: r36v7 */
    /* JADX WARN: Type inference failed for: r36v8 */
    /* JADX WARN: Type inference failed for: r36v9, types: [long] */
    /* JADX WARN: Type inference failed for: r38v10 */
    /* JADX WARN: Type inference failed for: r38v11 */
    /* JADX WARN: Type inference failed for: r38v12 */
    /* JADX WARN: Type inference failed for: r38v13 */
    /* JADX WARN: Type inference failed for: r38v14 */
    /* JADX WARN: Type inference failed for: r38v4 */
    /* JADX WARN: Type inference failed for: r38v5 */
    /* JADX WARN: Type inference failed for: r38v6, types: [long] */
    /* JADX WARN: Type inference failed for: r38v7 */
    /* JADX WARN: Type inference failed for: r38v8 */
    /* JADX WARN: Type inference failed for: r38v9 */
    /* JADX WARN: Unknown variable types count: 8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.exoplayer2.text.g.d a(org.xmlpull.v1.XmlPullParser r14, com.google.android.exoplayer2.text.g.d r15, java.util.Map<java.lang.String, com.google.android.exoplayer2.text.g.e> r16, com.google.android.exoplayer2.text.g.c.b r17) throws com.google.android.exoplayer2.text.SubtitleDecoderException {
        /*
            Method dump skipped, instructions count: 773
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.g.c.a(org.xmlpull.v1.XmlPullParser, com.google.android.exoplayer2.text.g.d, java.util.Map, com.google.android.exoplayer2.text.g.c$b):com.google.android.exoplayer2.text.g.d");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0273, code lost:
        if (r0.equals("tb") == false) goto L_0x0240;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x020f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.exoplayer2.text.g.e a(org.xmlpull.v1.XmlPullParser r13, com.google.android.exoplayer2.text.g.c.a r14, com.google.android.exoplayer2.text.g.c.C0442c r15) {
        /*
            Method dump skipped, instructions count: 799
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.g.c.a(org.xmlpull.v1.XmlPullParser, com.google.android.exoplayer2.text.g.c$a, com.google.android.exoplayer2.text.g.c$c):com.google.android.exoplayer2.text.g.e");
    }

    private static g a(g gVar) {
        g gVar2 = gVar;
        if (gVar == null) {
            gVar2 = new g();
        }
        return gVar2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x057d, code lost:
        if (r0.equals("text") == false) goto L_0x056c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x07c1, code lost:
        if (r0.equals(net.pubnative.lite.sdk.vpaid.enums.EventConstants.START) == false) goto L_0x07b0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.exoplayer2.text.g.g a(org.xmlpull.v1.XmlPullParser r4, com.google.android.exoplayer2.text.g.g r5) {
        /*
            Method dump skipped, instructions count: 2199
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.g.c.a(org.xmlpull.v1.XmlPullParser, com.google.android.exoplayer2.text.g.g):com.google.android.exoplayer2.text.g.g");
    }

    private static Map<String, g> a(XmlPullParser xmlPullParser, Map<String, g> map, a aVar, C0442c cVar, Map<String, e> map2, Map<String, String> map3) throws IOException, XmlPullParserException {
        String c2;
        do {
            xmlPullParser.next();
            if (ag.b(xmlPullParser, "style")) {
                String c3 = ag.c(xmlPullParser, "style");
                g a2 = a(xmlPullParser, new g());
                if (c3 != null) {
                    for (String str : a(c3)) {
                        a2.a(map.get(str));
                    }
                }
                String str2 = a2.l;
                if (str2 != null) {
                    map.put(str2, a2);
                }
            } else if (ag.b(xmlPullParser, "region")) {
                e a3 = a(xmlPullParser, aVar, cVar);
                if (a3 != null) {
                    map2.put(a3.f21841a, a3);
                }
            } else if (ag.b(xmlPullParser, "metadata")) {
                do {
                    xmlPullParser.next();
                    if (ag.b(xmlPullParser, "image") && (c2 = ag.c(xmlPullParser, "id")) != null) {
                        map3.put(c2, xmlPullParser.nextText());
                    }
                } while (!ag.a(xmlPullParser, "metadata"));
            }
        } while (!ag.a(xmlPullParser, "head"));
        return map;
    }

    private static String[] a(String str) {
        String trim = str.trim();
        return trim.isEmpty() ? new String[0] : af.a(trim, "\\s+");
    }

    private static float b(String str) {
        Matcher matcher = f21826a.matcher(str);
        if (!matcher.matches()) {
            n.a("TtmlDecoder", "Invalid value for shear: ".concat(String.valueOf(str)));
            return Float.MAX_VALUE;
        }
        try {
            return Math.min(100.0f, Math.max(-100.0f, Float.parseFloat((String) com.google.android.exoplayer2.util.a.b(matcher.group(1)))));
        } catch (NumberFormatException e2) {
            n.a("TtmlDecoder", "Failed to parse shear: ".concat(String.valueOf(str)), e2);
            return Float.MAX_VALUE;
        }
    }

    @Override // com.google.android.exoplayer2.text.c
    public final e a(byte[] bArr, int i2, boolean z) throws SubtitleDecoderException {
        a aVar;
        b bVar;
        String[] a2;
        try {
            XmlPullParser newPullParser = this.j.newPullParser();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            hashMap2.put("", new e(""));
            C0442c cVar = null;
            newPullParser.setInput(new ByteArrayInputStream(bArr, 0, i2), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            int eventType = newPullParser.getEventType();
            b bVar2 = h;
            a aVar2 = i;
            h hVar = null;
            int i3 = 0;
            while (eventType != 1) {
                d dVar = (d) arrayDeque.peek();
                if (i3 == 0) {
                    String name = newPullParser.getName();
                    if (eventType == 2) {
                        if ("tt".equals(name)) {
                            int i4 = 30;
                            String attributeValue = newPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
                            if (attributeValue != null) {
                                i4 = Integer.parseInt(attributeValue);
                            }
                            float f2 = 1.0f;
                            String attributeValue2 = newPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
                            if (attributeValue2 != null) {
                                if (af.a(attributeValue2, StringUtils.SPACE).length == 2) {
                                    f2 = Integer.parseInt(a2[0]) / Integer.parseInt(a2[1]);
                                } else {
                                    throw new SubtitleDecoderException("frameRateMultiplier doesn't have 2 parts");
                                }
                            }
                            b bVar3 = h;
                            int i5 = bVar3.f21833b;
                            String attributeValue3 = newPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
                            if (attributeValue3 != null) {
                                i5 = Integer.parseInt(attributeValue3);
                            }
                            int i6 = bVar3.f21834c;
                            String attributeValue4 = newPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
                            if (attributeValue4 != null) {
                                i6 = Integer.parseInt(attributeValue4);
                            }
                            bVar = new b(i4 * f2, i5, i6);
                            aVar = a(newPullParser, i);
                            cVar = a(newPullParser);
                        } else {
                            bVar = bVar2;
                            aVar = aVar2;
                        }
                        boolean z2 = true;
                        if (!name.equals("tt")) {
                            z2 = true;
                            if (!name.equals("head")) {
                                z2 = true;
                                if (!name.equals("body")) {
                                    z2 = true;
                                    if (!name.equals("div")) {
                                        z2 = true;
                                        if (!name.equals("p")) {
                                            z2 = true;
                                            if (!name.equals("span")) {
                                                z2 = true;
                                                if (!name.equals("br")) {
                                                    z2 = true;
                                                    if (!name.equals("style")) {
                                                        z2 = true;
                                                        if (!name.equals("styling")) {
                                                            z2 = true;
                                                            if (!name.equals("layout")) {
                                                                z2 = true;
                                                                if (!name.equals("region")) {
                                                                    z2 = true;
                                                                    if (!name.equals("metadata")) {
                                                                        z2 = true;
                                                                        if (!name.equals("image")) {
                                                                            z2 = true;
                                                                            if (!name.equals("data")) {
                                                                                z2 = name.equals("information");
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        if (!z2) {
                            new StringBuilder("Ignoring unsupported tag: ").append(newPullParser.getName());
                            n.b();
                            i3++;
                        } else if ("head".equals(name)) {
                            a(newPullParser, hashMap, aVar, cVar, hashMap2, hashMap3);
                            i3 = i3;
                        } else {
                            try {
                                d a3 = a(newPullParser, dVar, hashMap2, bVar);
                                arrayDeque.push(a3);
                                i3 = i3;
                                if (dVar != null) {
                                    dVar.a(a3);
                                    i3 = i3;
                                }
                            } catch (SubtitleDecoderException e2) {
                                n.a("TtmlDecoder", "Suppressing parser error", e2);
                                i3++;
                            }
                        }
                        cVar = cVar;
                        bVar2 = bVar;
                        aVar2 = aVar;
                        hVar = hVar;
                    } else if (eventType == 4) {
                        ((d) com.google.android.exoplayer2.util.a.b(dVar)).a(new d(null, newPullParser.getText().replaceAll("\r\n", StringUtils.LF).replaceAll(" *\n *", StringUtils.LF).replaceAll(StringUtils.LF, StringUtils.SPACE).replaceAll("[ \t\\x0B\f\r]+", StringUtils.SPACE), -9223372036854775807L, -9223372036854775807L, null, null, "", null, null));
                        cVar = cVar;
                        bVar2 = bVar2;
                        aVar2 = aVar2;
                        hVar = hVar;
                        i3 = i3;
                    } else {
                        cVar = cVar;
                        bVar2 = bVar2;
                        aVar2 = aVar2;
                        hVar = hVar;
                        i3 = i3;
                        if (eventType == 3) {
                            if (newPullParser.getName().equals("tt")) {
                                hVar = new h((d) com.google.android.exoplayer2.util.a.b((d) arrayDeque.peek()), hashMap, hashMap2, hashMap3);
                            }
                            arrayDeque.pop();
                            cVar = cVar;
                            bVar2 = bVar2;
                            aVar2 = aVar2;
                            i3 = i3;
                        }
                    }
                } else if (eventType == 2) {
                    i3++;
                    cVar = cVar;
                    bVar2 = bVar2;
                    aVar2 = aVar2;
                    hVar = hVar;
                } else {
                    cVar = cVar;
                    bVar2 = bVar2;
                    aVar2 = aVar2;
                    hVar = hVar;
                    i3 = i3;
                    if (eventType == 3) {
                        i3--;
                        hVar = hVar;
                        aVar2 = aVar2;
                        bVar2 = bVar2;
                        cVar = cVar;
                    }
                }
                newPullParser.next();
                eventType = newPullParser.getEventType();
            }
            if (hVar != null) {
                return hVar;
            }
            throw new SubtitleDecoderException("No TTML subtitles found");
        } catch (IOException e3) {
            throw new IllegalStateException("Unexpected error when reading input.", e3);
        } catch (XmlPullParserException e4) {
            throw new SubtitleDecoderException("Unable to decode source", e4);
        }
    }
}
