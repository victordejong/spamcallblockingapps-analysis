package com.google.android.exoplayer2.text.p343g;

import com.google.android.exoplayer2.text.AbstractC11370c;
import com.google.android.exoplayer2.text.AbstractC11379e;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11600ag;
import com.google.android.exoplayer2.util.C11617n;
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
/* renamed from: com.google.android.exoplayer2.text.g.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/g/c.class */
public final class C11393c extends AbstractC11370c {

    /* renamed from: j */
    private final XmlPullParserFactory f37579j;

    /* renamed from: c */
    private static final Pattern f37572c = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* renamed from: d */
    private static final Pattern f37573d = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    /* renamed from: e */
    private static final Pattern f37574e = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* renamed from: a */
    static final Pattern f37570a = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");

    /* renamed from: b */
    static final Pattern f37571b = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");

    /* renamed from: f */
    private static final Pattern f37575f = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");

    /* renamed from: g */
    private static final Pattern f37576g = Pattern.compile("^(\\d+) (\\d+)$");

    /* renamed from: h */
    private static final C11395b f37577h = new C11395b(30.0f, 1, 1);

    /* renamed from: i */
    private static final C11394a f37578i = new C11394a(32, 15);

    /* renamed from: com.google.android.exoplayer2.text.g.c$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/g/c$a.class */
    public static final class C11394a {

        /* renamed from: a */
        final int f37580a;

        /* renamed from: b */
        final int f37581b;

        C11394a(int i, int i2) {
            this.f37580a = i;
            this.f37581b = i2;
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.g.c$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/g/c$b.class */
    public static final class C11395b {

        /* renamed from: a */
        final float f37582a;

        /* renamed from: b */
        final int f37583b;

        /* renamed from: c */
        final int f37584c;

        C11395b(float f, int i, int i2) {
            this.f37582a = f;
            this.f37583b = i;
            this.f37584c = i2;
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.g.c$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/g/c$c.class */
    public static final class C11396c {

        /* renamed from: a */
        final int f37585a;

        /* renamed from: b */
        final int f37586b;

        C11396c(int i, int i2) {
            this.f37585a = i;
            this.f37586b = i2;
        }
    }

    public C11393c() {
        super("TtmlDecoder");
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.f37579j = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x012c, code lost:
        if (r0.equals("ms") == false) goto L21;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v105, types: [double] */
    /* JADX WARN: Type inference failed for: r0v108, types: [double] */
    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25, types: [double] */
    /* JADX WARN: Type inference failed for: r0v30, types: [double] */
    /* JADX WARN: Type inference failed for: r0v32, types: [double] */
    /* JADX WARN: Type inference failed for: r0v37, types: [double] */
    /* JADX WARN: Type inference failed for: r0v39, types: [double] */
    /* JADX WARN: Type inference failed for: r0v99, types: [double] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v10 */
    /* JADX WARN: Type inference failed for: r18v11 */
    /* JADX WARN: Type inference failed for: r18v12 */
    /* JADX WARN: Type inference failed for: r18v13 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r18v5 */
    /* JADX WARN: Type inference failed for: r18v6 */
    /* JADX WARN: Type inference failed for: r18v7 */
    /* JADX WARN: Type inference failed for: r18v8 */
    /* JADX WARN: Type inference failed for: r18v9 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [double] */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long m20695a(java.lang.String r5, com.google.android.exoplayer2.text.p343g.C11393c.C11395b r6) throws com.google.android.exoplayer2.text.SubtitleDecoderException {
        /*
            Method dump skipped, instructions count: 502
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.p343g.C11393c.m20695a(java.lang.String, com.google.android.exoplayer2.text.g.c$b):long");
    }

    /* renamed from: a */
    private static C11394a m20693a(XmlPullParser xmlPullParser, C11394a c11394a) throws SubtitleDecoderException {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return c11394a;
        }
        Matcher matcher = f37576g.matcher(attributeValue);
        if (!matcher.matches()) {
            C11617n.m19863a("TtmlDecoder", "Ignoring malformed cell resolution: ".concat(String.valueOf(attributeValue)));
            return c11394a;
        }
        try {
            int parseInt = Integer.parseInt((String) C11593a.m20020b(matcher.group(1)));
            int parseInt2 = Integer.parseInt((String) C11593a.m20020b(matcher.group(2)));
            if (parseInt != 0 && parseInt2 != 0) {
                return new C11394a(parseInt, parseInt2);
            }
            throw new SubtitleDecoderException("Invalid cell resolution " + parseInt + StringUtils.SPACE + parseInt2);
        } catch (NumberFormatException e) {
            C11617n.m19863a("TtmlDecoder", "Ignoring malformed cell resolution: ".concat(String.valueOf(attributeValue)));
            return c11394a;
        }
    }

    /* renamed from: a */
    private static C11396c m20694a(XmlPullParser xmlPullParser) {
        String m19914c = C11600ag.m19914c(xmlPullParser, "extent");
        if (m19914c == null) {
            return null;
        }
        Matcher matcher = f37575f.matcher(m19914c);
        if (!matcher.matches()) {
            C11617n.m19863a("TtmlDecoder", "Ignoring non-pixel tts extent: ".concat(String.valueOf(m19914c)));
            return null;
        }
        try {
            return new C11396c(Integer.parseInt((String) C11593a.m20020b(matcher.group(1))), Integer.parseInt((String) C11593a.m20020b(matcher.group(2))));
        } catch (NumberFormatException e) {
            C11617n.m19863a("TtmlDecoder", "Ignoring malformed tts extent: ".concat(String.valueOf(m19914c)));
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* renamed from: a */
    private static C11397d m20691a(XmlPullParser xmlPullParser, C11397d c11397d, Map<String, C11398e> map, C11395b c11395b) throws SubtitleDecoderException {
        char c;
        char c2;
        char c3;
        boolean z;
        char c4;
        char c5;
        char c6;
        String[] strArr;
        String str;
        int attributeCount = xmlPullParser.getAttributeCount();
        C11400g m20690a = m20690a(xmlPullParser, (C11400g) null);
        String str2 = null;
        String str3 = "";
        char c7 = 1;
        char c8 = 1;
        char c9 = 1;
        String[] strArr2 = null;
        int i = 0;
        while (i < attributeCount) {
            String attributeName = xmlPullParser.getAttributeName(i);
            String attributeValue = xmlPullParser.getAttributeValue(i);
            attributeName.hashCode();
            switch (attributeName.hashCode()) {
                case -934795532:
                    if (attributeName.equals("region")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case 99841:
                    if (attributeName.equals("dur")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 100571:
                    if (attributeName.equals("end")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 93616297:
                    if (attributeName.equals("begin")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 109780401:
                    if (attributeName.equals("style")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1292595405:
                    if (attributeName.equals("backgroundImage")) {
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
                    strArr = strArr2;
                    str = str2;
                    c6 = c7;
                    c5 = c8;
                    c4 = c9;
                    if (!map.containsKey(attributeValue)) {
                        break;
                    } else {
                        str3 = attributeValue;
                        c4 = c9;
                        c5 = c8;
                        c6 = c7;
                        str = str2;
                        strArr = strArr2;
                        break;
                    }
                case true:
                    c4 = m20695a(attributeValue, c11395b);
                    strArr = strArr2;
                    str = str2;
                    c6 = c7;
                    c5 = c8;
                    break;
                case true:
                    c5 = m20695a(attributeValue, c11395b);
                    strArr = strArr2;
                    str = str2;
                    c6 = c7;
                    c4 = c9;
                    break;
                case true:
                    c6 = m20695a(attributeValue, c11395b);
                    c4 = c9;
                    c5 = c8;
                    str = str2;
                    strArr = strArr2;
                    break;
                case true:
                    String[] m20696a = m20696a(attributeValue);
                    strArr = strArr2;
                    str = str2;
                    c6 = c7;
                    c5 = c8;
                    c4 = c9;
                    if (m20696a.length <= 0) {
                        break;
                    } else {
                        strArr = m20696a;
                        str = str2;
                        c6 = c7;
                        c5 = c8;
                        c4 = c9;
                        break;
                    }
                case true:
                    strArr = strArr2;
                    str = str2;
                    c6 = c7;
                    c5 = c8;
                    c4 = c9;
                    if (!attributeValue.startsWith("#")) {
                        break;
                    } else {
                        str = attributeValue.substring(1);
                        strArr = strArr2;
                        c6 = c7;
                        c5 = c8;
                        c4 = c9;
                        break;
                    }
                default:
                    strArr = strArr2;
                    str = str2;
                    c6 = c7;
                    c5 = c8;
                    c4 = c9;
                    break;
            }
            i++;
            strArr2 = strArr;
            str2 = str;
            c7 = c6;
            c8 = c5;
            c9 = c4;
        }
        if (c11397d != null) {
            c2 = c7;
            c = c8;
            if (c11397d.f37590d != -9223372036854775807L) {
                char c10 = c7;
                if (c7 != -9223372036854775807L) {
                    c10 = c7 + c11397d.f37590d;
                }
                c2 = c10;
                c = c8;
                if (c8 != -9223372036854775807L) {
                    c = c8 + c11397d.f37590d;
                    c2 = c10;
                }
            }
        } else {
            c = c8;
            c2 = c7;
        }
        if (c == -9223372036854775807L) {
            if (c9 != -9223372036854775807L) {
                c3 = c2 + c9;
            } else if (c11397d != null && c11397d.f37591e != -9223372036854775807L) {
                c3 = c11397d.f37591e;
            }
            return new C11397d(xmlPullParser.getName(), null, c2, c3, m20690a, strArr2, str3, str2, c11397d);
        }
        c3 = c;
        return new C11397d(xmlPullParser.getName(), null, c2, c3, m20690a, strArr2, str3, str2, c11397d);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0273, code lost:
        if (r0.equals("tb") == false) goto L56;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x020f  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.exoplayer2.text.p343g.C11398e m20692a(org.xmlpull.v1.XmlPullParser r13, com.google.android.exoplayer2.text.p343g.C11393c.C11394a r14, com.google.android.exoplayer2.text.p343g.C11393c.C11396c r15) {
        /*
            Method dump skipped, instructions count: 799
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.p343g.C11393c.m20692a(org.xmlpull.v1.XmlPullParser, com.google.android.exoplayer2.text.g.c$a, com.google.android.exoplayer2.text.g.c$c):com.google.android.exoplayer2.text.g.e");
    }

    /* renamed from: a */
    private static C11400g m20697a(C11400g c11400g) {
        C11400g c11400g2 = c11400g;
        if (c11400g == null) {
            c11400g2 = new C11400g();
        }
        return c11400g2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x057d, code lost:
        if (r0.equals("text") == false) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x07c1, code lost:
        if (r0.equals(net.pubnative.lite.sdk.vpaid.enums.EventConstants.START) == false) goto L249;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.exoplayer2.text.p343g.C11400g m20690a(org.xmlpull.v1.XmlPullParser r4, com.google.android.exoplayer2.text.p343g.C11400g r5) {
        /*
            Method dump skipped, instructions count: 2199
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.p343g.C11393c.m20690a(org.xmlpull.v1.XmlPullParser, com.google.android.exoplayer2.text.g.g):com.google.android.exoplayer2.text.g.g");
    }

    /* renamed from: a */
    private static Map<String, C11400g> m20689a(XmlPullParser xmlPullParser, Map<String, C11400g> map, C11394a c11394a, C11396c c11396c, Map<String, C11398e> map2, Map<String, String> map3) throws IOException, XmlPullParserException {
        String m19914c;
        do {
            xmlPullParser.next();
            if (C11600ag.m19915b(xmlPullParser, "style")) {
                String m19914c2 = C11600ag.m19914c(xmlPullParser, "style");
                C11400g m20690a = m20690a(xmlPullParser, new C11400g());
                if (m19914c2 != null) {
                    for (String str : m20696a(m19914c2)) {
                        m20690a.m20671a(map.get(str));
                    }
                }
                String str2 = m20690a.f37621l;
                if (str2 != null) {
                    map.put(str2, m20690a);
                }
            } else if (C11600ag.m19915b(xmlPullParser, "region")) {
                C11398e m20692a = m20692a(xmlPullParser, c11394a, c11396c);
                if (m20692a != null) {
                    map2.put(m20692a.f37600a, m20692a);
                }
            } else if (C11600ag.m19915b(xmlPullParser, "metadata")) {
                do {
                    xmlPullParser.next();
                    if (C11600ag.m19915b(xmlPullParser, "image") && (m19914c = C11600ag.m19914c(xmlPullParser, "id")) != null) {
                        map3.put(m19914c, xmlPullParser.nextText());
                    }
                } while (!C11600ag.m19917a(xmlPullParser, "metadata"));
            }
        } while (!C11600ag.m19917a(xmlPullParser, "head"));
        return map;
    }

    /* renamed from: a */
    private static String[] m20696a(String str) {
        String trim = str.trim();
        return trim.isEmpty() ? new String[0] : C11599af.m19969a(trim, "\\s+");
    }

    /* renamed from: b */
    private static float m20688b(String str) {
        Matcher matcher = f37570a.matcher(str);
        if (!matcher.matches()) {
            C11617n.m19863a("TtmlDecoder", "Invalid value for shear: ".concat(String.valueOf(str)));
            return Float.MAX_VALUE;
        }
        try {
            return Math.min(100.0f, Math.max(-100.0f, Float.parseFloat((String) C11593a.m20020b(matcher.group(1)))));
        } catch (NumberFormatException e) {
            C11617n.m19862a("TtmlDecoder", "Failed to parse shear: ".concat(String.valueOf(str)), e);
            return Float.MAX_VALUE;
        }
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11370c
    /* renamed from: a */
    public final AbstractC11379e mo20622a(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        C11401h c11401h;
        C11396c c11396c;
        C11394a c11394a;
        C11395b c11395b;
        int i2;
        C11394a c11394a2;
        C11395b c11395b2;
        String[] m19969a;
        try {
            XmlPullParser newPullParser = this.f37579j.newPullParser();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            hashMap2.put("", new C11398e(""));
            C11396c c11396c2 = null;
            newPullParser.setInput(new ByteArrayInputStream(bArr, 0, i), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            int eventType = newPullParser.getEventType();
            C11395b c11395b3 = f37577h;
            C11394a c11394a3 = f37578i;
            C11401h c11401h2 = null;
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (eventType == 1) {
                    if (c11401h2 == null) {
                        throw new SubtitleDecoderException("No TTML subtitles found");
                    }
                    return c11401h2;
                }
                C11397d c11397d = (C11397d) arrayDeque.peek();
                if (i4 == 0) {
                    String name = newPullParser.getName();
                    if (eventType == 2) {
                        if ("tt".equals(name)) {
                            int i5 = 30;
                            String attributeValue = newPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
                            if (attributeValue != null) {
                                i5 = Integer.parseInt(attributeValue);
                            }
                            float f = 1.0f;
                            String attributeValue2 = newPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
                            if (attributeValue2 != null) {
                                if (C11599af.m19969a(attributeValue2, StringUtils.SPACE).length != 2) {
                                    throw new SubtitleDecoderException("frameRateMultiplier doesn't have 2 parts");
                                }
                                f = Integer.parseInt(m19969a[0]) / Integer.parseInt(m19969a[1]);
                            }
                            C11395b c11395b4 = f37577h;
                            int i6 = c11395b4.f37583b;
                            String attributeValue3 = newPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
                            if (attributeValue3 != null) {
                                i6 = Integer.parseInt(attributeValue3);
                            }
                            int i7 = c11395b4.f37584c;
                            String attributeValue4 = newPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
                            if (attributeValue4 != null) {
                                i7 = Integer.parseInt(attributeValue4);
                            }
                            c11395b2 = new C11395b(i5 * f, i6, i7);
                            c11394a2 = m20693a(newPullParser, f37578i);
                            c11396c2 = m20694a(newPullParser);
                        } else {
                            C11394a c11394a4 = c11394a3;
                            c11395b2 = c11395b3;
                            c11394a2 = c11394a4;
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
                            C11617n.m19859b();
                            i2 = i4 + 1;
                        } else if ("head".equals(name)) {
                            m20689a(newPullParser, hashMap, c11394a2, c11396c2, hashMap2, hashMap3);
                            i2 = i4;
                        } else {
                            try {
                                C11397d m20691a = m20691a(newPullParser, c11397d, hashMap2, c11395b2);
                                arrayDeque.push(m20691a);
                                i2 = i4;
                                if (c11397d != null) {
                                    c11397d.m20680a(m20691a);
                                    i2 = i4;
                                }
                            } catch (SubtitleDecoderException e) {
                                C11617n.m19862a("TtmlDecoder", "Suppressing parser error", e);
                                i2 = i4 + 1;
                            }
                        }
                        c11396c = c11396c2;
                        c11395b = c11395b2;
                        c11394a = c11394a2;
                        c11401h = c11401h2;
                    } else if (eventType == 4) {
                        ((C11397d) C11593a.m20020b(c11397d)).m20680a(new C11397d(null, newPullParser.getText().replaceAll("\r\n", StringUtils.f67179LF).replaceAll(" *\n *", StringUtils.f67179LF).replaceAll(StringUtils.f67179LF, StringUtils.SPACE).replaceAll("[ \t\\x0B\f\r]+", StringUtils.SPACE), -9223372036854775807L, -9223372036854775807L, null, null, "", null, null));
                        c11396c = c11396c2;
                        c11395b = c11395b3;
                        c11394a = c11394a3;
                        c11401h = c11401h2;
                        i2 = i4;
                    } else {
                        c11396c = c11396c2;
                        c11395b = c11395b3;
                        c11394a = c11394a3;
                        c11401h = c11401h2;
                        i2 = i4;
                        if (eventType == 3) {
                            if (newPullParser.getName().equals("tt")) {
                                c11401h2 = new C11401h((C11397d) C11593a.m20020b((C11397d) arrayDeque.peek()), hashMap, hashMap2, hashMap3);
                            }
                            arrayDeque.pop();
                            c11396c = c11396c2;
                            c11395b = c11395b3;
                            c11394a = c11394a3;
                            c11401h = c11401h2;
                            i2 = i4;
                        }
                    }
                } else if (eventType == 2) {
                    i2 = i4 + 1;
                    c11396c = c11396c2;
                    c11395b = c11395b3;
                    c11394a = c11394a3;
                    c11401h = c11401h2;
                } else {
                    c11396c = c11396c2;
                    c11395b = c11395b3;
                    c11394a = c11394a3;
                    c11401h = c11401h2;
                    i2 = i4;
                    if (eventType == 3) {
                        i2 = i4 - 1;
                        c11401h = c11401h2;
                        c11394a = c11394a3;
                        c11395b = c11395b3;
                        c11396c = c11396c2;
                    }
                }
                newPullParser.next();
                eventType = newPullParser.getEventType();
                c11396c2 = c11396c;
                c11395b3 = c11395b;
                c11394a3 = c11394a;
                c11401h2 = c11401h;
                i3 = i2;
            }
        } catch (IOException e2) {
            throw new IllegalStateException("Unexpected error when reading input.", e2);
        } catch (XmlPullParserException e3) {
            throw new SubtitleDecoderException("Unable to decode source", e3);
        }
    }
}
