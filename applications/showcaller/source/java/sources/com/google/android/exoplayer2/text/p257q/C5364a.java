package com.google.android.exoplayer2.text.p257q;

import com.google.android.exoplayer2.text.AbstractC5318c;
import com.google.android.exoplayer2.text.AbstractC5320e;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5517i0;
import com.google.android.exoplayer2.util.C5526o;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* renamed from: com.google.android.exoplayer2.text.q.a */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/q/a.class */
public final class C5364a extends AbstractC5318c {

    /* renamed from: o */
    private static final Pattern f17130o = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* renamed from: p */
    private static final Pattern f17131p = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    /* renamed from: q */
    private static final Pattern f17132q = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* renamed from: r */
    private static final Pattern f17133r = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");

    /* renamed from: s */
    private static final Pattern f17134s = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");

    /* renamed from: t */
    private static final Pattern f17135t = Pattern.compile("^(\\d+) (\\d+)$");

    /* renamed from: u */
    private static final C5366b f17136u = new C5366b(30.0f, 1, 1);

    /* renamed from: v */
    private static final C5365a f17137v = new C5365a(32, 15);

    /* renamed from: w */
    private final XmlPullParserFactory f17138w;

    /* renamed from: com.google.android.exoplayer2.text.q.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/q/a$a.class */
    public static final class C5365a {

        /* renamed from: a */
        final int f17139a;

        /* renamed from: b */
        final int f17140b;

        C5365a(int i, int i2) {
            this.f17139a = i;
            this.f17140b = i2;
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.q.a$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/q/a$b.class */
    public static final class C5366b {

        /* renamed from: a */
        final float f17141a;

        /* renamed from: b */
        final int f17142b;

        /* renamed from: c */
        final int f17143c;

        C5366b(float f, int i, int i2) {
            this.f17141a = f;
            this.f17142b = i;
            this.f17143c = i2;
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.q.a$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/q/a$c.class */
    public static final class C5367c {

        /* renamed from: a */
        final int f17144a;

        /* renamed from: b */
        final int f17145b;

        C5367c(int i, int i2) {
            this.f17144a = i;
            this.f17145b = i2;
        }
    }

    public C5364a() {
        super("TtmlDecoder");
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.f17138w = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    /* renamed from: C */
    private C5371e m19516C(C5371e c5371e) {
        C5371e c5371e2 = c5371e;
        if (c5371e == null) {
            c5371e2 = new C5371e();
        }
        return c5371e2;
    }

    /* renamed from: D */
    private static boolean m19515D(String str) {
        return str.equals("tt") || str.equals("head") || str.equals("body") || str.equals("div") || str.equals("p") || str.equals("span") || str.equals("br") || str.equals("style") || str.equals("styling") || str.equals("layout") || str.equals("region") || str.equals("metadata") || str.equals("image") || str.equals("data") || str.equals("information");
    }

    /* renamed from: E */
    private C5365a m19514E(XmlPullParser xmlPullParser, C5365a c5365a) {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return c5365a;
        }
        Matcher matcher = f17135t.matcher(attributeValue);
        if (!matcher.matches()) {
            C5526o.m18742f("TtmlDecoder", "Ignoring malformed cell resolution: " + attributeValue);
            return c5365a;
        }
        try {
            int parseInt = Integer.parseInt(matcher.group(1));
            int parseInt2 = Integer.parseInt(matcher.group(2));
            if (parseInt != 0 && parseInt2 != 0) {
                return new C5365a(parseInt, parseInt2);
            }
            throw new SubtitleDecoderException("Invalid cell resolution " + parseInt + " " + parseInt2);
        } catch (NumberFormatException e) {
            C5526o.m18742f("TtmlDecoder", "Ignoring malformed cell resolution: " + attributeValue);
            return c5365a;
        }
    }

    /* renamed from: F */
    private static void m19513F(String str, C5371e c5371e) {
        Matcher matcher;
        String[] m18818n0 = C5515h0.m18818n0(str, "\\s+");
        if (m18818n0.length == 1) {
            matcher = f17132q.matcher(str);
        } else if (m18818n0.length != 2) {
            throw new SubtitleDecoderException("Invalid number of entries for fontSize: " + m18818n0.length + ".");
        } else {
            matcher = f17132q.matcher(m18818n0[1]);
            C5526o.m18742f("TtmlDecoder", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        }
        if (!matcher.matches()) {
            throw new SubtitleDecoderException("Invalid expression for fontSize: '" + str + "'.");
        }
        String group = matcher.group(3);
        group.hashCode();
        boolean z = true;
        switch (group.hashCode()) {
            case 37:
                if (group.equals("%")) {
                    z = false;
                    break;
                }
                break;
            case 3240:
                if (group.equals("em")) {
                    z = true;
                    break;
                }
                break;
            case 3592:
                if (group.equals("px")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                c5371e.m19465t(3);
                break;
            case true:
                c5371e.m19465t(2);
                break;
            case true:
                c5371e.m19465t(1);
                break;
            default:
                throw new SubtitleDecoderException("Invalid unit for fontSize: '" + group + "'.");
        }
        c5371e.m19466s(Float.valueOf(matcher.group(1)).floatValue());
    }

    /* renamed from: G */
    private C5366b m19512G(XmlPullParser xmlPullParser) {
        String[] m18818n0;
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        int parseInt = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        float f = 1.0f;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            if (C5515h0.m18818n0(attributeValue2, " ").length != 2) {
                throw new SubtitleDecoderException("frameRateMultiplier doesn't have 2 parts");
            }
            f = Integer.parseInt(m18818n0[0]) / Integer.parseInt(m18818n0[1]);
        }
        C5366b c5366b = f17136u;
        int i = c5366b.f17142b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i = Integer.parseInt(attributeValue3);
        }
        int i2 = c5366b.f17143c;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i2 = Integer.parseInt(attributeValue4);
        }
        return new C5366b(parseInt * f, i, i2);
    }

    /* renamed from: H */
    private Map<String, C5371e> m19511H(XmlPullParser xmlPullParser, Map<String, C5371e> map, C5365a c5365a, C5367c c5367c, Map<String, C5369c> map2, Map<String, String> map3) {
        do {
            xmlPullParser.next();
            if (C5517i0.m18787e(xmlPullParser, "style")) {
                String m18791a = C5517i0.m18791a(xmlPullParser, "style");
                C5371e m19507L = m19507L(xmlPullParser, new C5371e());
                if (m18791a != null) {
                    for (String str : m19506M(m18791a)) {
                        m19507L.m19484a(map.get(str));
                    }
                }
                if (m19507L.m19478g() != null) {
                    map.put(m19507L.m19478g(), m19507L);
                }
            } else if (C5517i0.m18787e(xmlPullParser, "region")) {
                C5369c m19508K = m19508K(xmlPullParser, c5365a, c5367c);
                if (m19508K != null) {
                    map2.put(m19508K.f17158a, m19508K);
                }
            } else if (C5517i0.m18787e(xmlPullParser, "metadata")) {
                m19510I(xmlPullParser, map3);
            }
        } while (!C5517i0.m18789c(xmlPullParser, "head"));
        return map;
    }

    /* renamed from: I */
    private void m19510I(XmlPullParser xmlPullParser, Map<String, String> map) {
        String m18791a;
        do {
            xmlPullParser.next();
            if (C5517i0.m18787e(xmlPullParser, "image") && (m18791a = C5517i0.m18791a(xmlPullParser, "id")) != null) {
                map.put(m18791a, xmlPullParser.nextText());
            }
        } while (!C5517i0.m18789c(xmlPullParser, "metadata"));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x02e1, code lost:
        if (r21 != (-9223372036854775807L)) goto L63;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62 */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* renamed from: J */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.android.exoplayer2.text.p257q.C5368b m19509J(org.xmlpull.v1.XmlPullParser r11, com.google.android.exoplayer2.text.p257q.C5368b r12, java.util.Map<java.lang.String, com.google.android.exoplayer2.text.p257q.C5369c> r13, com.google.android.exoplayer2.text.p257q.C5364a.C5366b r14) {
        /*
            Method dump skipped, instructions count: 769
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.p257q.C5364a.m19509J(org.xmlpull.v1.XmlPullParser, com.google.android.exoplayer2.text.q.b, java.util.Map, com.google.android.exoplayer2.text.q.a$b):com.google.android.exoplayer2.text.q.b");
    }

    /* renamed from: K */
    private C5369c m19508K(XmlPullParser xmlPullParser, C5365a c5365a, C5367c c5367c) {
        float parseFloat;
        float parseFloat2;
        float parseFloat3;
        float parseFloat4;
        int i;
        String m18791a = C5517i0.m18791a(xmlPullParser, "id");
        if (m18791a == null) {
            return null;
        }
        String m18791a2 = C5517i0.m18791a(xmlPullParser, "origin");
        if (m18791a2 == null) {
            C5526o.m18742f("TtmlDecoder", "Ignoring region without an origin");
            return null;
        }
        Pattern pattern = f17133r;
        Matcher matcher = pattern.matcher(m18791a2);
        Pattern pattern2 = f17134s;
        Matcher matcher2 = pattern2.matcher(m18791a2);
        if (matcher.matches()) {
            try {
                parseFloat = Float.parseFloat(matcher.group(1)) / 100.0f;
                parseFloat2 = Float.parseFloat(matcher.group(2)) / 100.0f;
            } catch (NumberFormatException e) {
                C5526o.m18742f("TtmlDecoder", "Ignoring region with malformed origin: " + m18791a2);
                return null;
            }
        } else if (!matcher2.matches()) {
            C5526o.m18742f("TtmlDecoder", "Ignoring region with unsupported origin: " + m18791a2);
            return null;
        } else if (c5367c == null) {
            C5526o.m18742f("TtmlDecoder", "Ignoring region with missing tts:extent: " + m18791a2);
            return null;
        } else {
            try {
                int parseInt = Integer.parseInt(matcher2.group(1));
                parseFloat = parseInt / c5367c.f17144a;
                parseFloat2 = Integer.parseInt(matcher2.group(2)) / c5367c.f17145b;
            } catch (NumberFormatException e2) {
                C5526o.m18742f("TtmlDecoder", "Ignoring region with malformed origin: " + m18791a2);
                return null;
            }
        }
        String m18791a3 = C5517i0.m18791a(xmlPullParser, "extent");
        if (m18791a3 == null) {
            C5526o.m18742f("TtmlDecoder", "Ignoring region without an extent");
            return null;
        }
        Matcher matcher3 = pattern.matcher(m18791a3);
        Matcher matcher4 = pattern2.matcher(m18791a3);
        if (matcher3.matches()) {
            try {
                parseFloat3 = Float.parseFloat(matcher3.group(1)) / 100.0f;
                parseFloat4 = Float.parseFloat(matcher3.group(2)) / 100.0f;
            } catch (NumberFormatException e3) {
                C5526o.m18742f("TtmlDecoder", "Ignoring region with malformed extent: " + m18791a2);
                return null;
            }
        } else if (!matcher4.matches()) {
            C5526o.m18742f("TtmlDecoder", "Ignoring region with unsupported extent: " + m18791a2);
            return null;
        } else if (c5367c == null) {
            C5526o.m18742f("TtmlDecoder", "Ignoring region with missing tts:extent: " + m18791a2);
            return null;
        } else {
            try {
                int parseInt2 = Integer.parseInt(matcher4.group(1));
                parseFloat3 = parseInt2 / c5367c.f17144a;
                parseFloat4 = Integer.parseInt(matcher4.group(2)) / c5367c.f17145b;
            } catch (NumberFormatException e4) {
                C5526o.m18742f("TtmlDecoder", "Ignoring region with malformed extent: " + m18791a2);
                return null;
            }
        }
        String m18791a4 = C5517i0.m18791a(xmlPullParser, "displayAlign");
        if (m18791a4 != null) {
            String m18804u0 = C5515h0.m18804u0(m18791a4);
            m18804u0.hashCode();
            if (m18804u0.equals("center")) {
                parseFloat2 += parseFloat4 / 2.0f;
                i = 1;
            } else if (m18804u0.equals("after")) {
                parseFloat2 += parseFloat4;
                i = 2;
            }
            return new C5369c(m18791a, parseFloat, parseFloat2, 0, i, parseFloat3, parseFloat4, 1, 1.0f / c5365a.f17140b);
        }
        i = 0;
        return new C5369c(m18791a, parseFloat, parseFloat2, 0, i, parseFloat3, parseFloat4, 1, 1.0f / c5365a.f17140b);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x02b5, code lost:
        if (r0.equals("linethrough") == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x03a1, code lost:
        if (r0.equals("start") == false) goto L80;
     */
    /* renamed from: L */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.android.exoplayer2.text.p257q.C5371e m19507L(org.xmlpull.v1.XmlPullParser r5, com.google.android.exoplayer2.text.p257q.C5371e r6) {
        /*
            Method dump skipped, instructions count: 1175
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.p257q.C5364a.m19507L(org.xmlpull.v1.XmlPullParser, com.google.android.exoplayer2.text.q.e):com.google.android.exoplayer2.text.q.e");
    }

    /* renamed from: M */
    private String[] m19506M(String str) {
        String trim = str.trim();
        return trim.isEmpty() ? new String[0] : C5515h0.m18818n0(trim, "\\s+");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0111, code lost:
        if (r0.equals("ms") == false) goto L21;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v100, types: [double] */
    /* JADX WARN: Type inference failed for: r0v103, types: [double] */
    /* JADX WARN: Type inference failed for: r0v18, types: [double] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26, types: [double] */
    /* JADX WARN: Type inference failed for: r0v31, types: [double] */
    /* JADX WARN: Type inference failed for: r0v33, types: [double] */
    /* JADX WARN: Type inference failed for: r0v38, types: [double] */
    /* JADX WARN: Type inference failed for: r0v40, types: [double] */
    /* JADX WARN: Type inference failed for: r0v94, types: [double] */
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
    /* JADX WARN: Type inference failed for: r1v10, types: [double] */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v9 */
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
    /* renamed from: N */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long m19505N(java.lang.String r5, com.google.android.exoplayer2.text.p257q.C5364a.C5366b r6) {
        /*
            Method dump skipped, instructions count: 495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.p257q.C5364a.m19505N(java.lang.String, com.google.android.exoplayer2.text.q.a$b):long");
    }

    /* renamed from: O */
    private C5367c m19504O(XmlPullParser xmlPullParser) {
        String m18791a = C5517i0.m18791a(xmlPullParser, "extent");
        if (m18791a == null) {
            return null;
        }
        Matcher matcher = f17134s.matcher(m18791a);
        if (!matcher.matches()) {
            C5526o.m18742f("TtmlDecoder", "Ignoring non-pixel tts extent: " + m18791a);
            return null;
        }
        try {
            return new C5367c(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)));
        } catch (NumberFormatException e) {
            C5526o.m18742f("TtmlDecoder", "Ignoring malformed tts extent: " + m18791a);
            return null;
        }
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5318c
    /* renamed from: z */
    protected AbstractC5320e mo19377z(byte[] bArr, int i, boolean z) {
        int i2;
        C5365a c5365a;
        C5366b c5366b;
        C5367c c5367c;
        try {
            XmlPullParser newPullParser = this.f17138w.newPullParser();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            C5367c c5367c2 = null;
            hashMap2.put("", new C5369c(null));
            newPullParser.setInput(new ByteArrayInputStream(bArr, 0, i), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            int eventType = newPullParser.getEventType();
            C5366b c5366b2 = f17136u;
            C5365a c5365a2 = f17137v;
            C5372f c5372f = null;
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (eventType == 1) {
                    return c5372f;
                }
                C5368b c5368b = (C5368b) arrayDeque.peek();
                if (i4 == 0) {
                    String name = newPullParser.getName();
                    if (eventType == 2) {
                        if ("tt".equals(name)) {
                            c5366b2 = m19512G(newPullParser);
                            c5365a2 = m19514E(newPullParser, f17137v);
                            c5367c2 = m19504O(newPullParser);
                        }
                        if (!m19515D(name)) {
                            C5526o.m18743e("TtmlDecoder", "Ignoring unsupported tag: " + newPullParser.getName());
                            i2 = i4 + 1;
                            newPullParser.next();
                            eventType = newPullParser.getEventType();
                            i3 = i2;
                        } else {
                            if ("head".equals(name)) {
                                m19511H(newPullParser, hashMap, c5365a2, c5367c2, hashMap2, hashMap3);
                                i2 = i4;
                            } else {
                                try {
                                    C5368b m19509J = m19509J(newPullParser, c5368b, hashMap2, c5366b2);
                                    arrayDeque.push(m19509J);
                                    i2 = i4;
                                    if (c5368b != null) {
                                        c5368b.m19503a(m19509J);
                                        i2 = i4;
                                    }
                                } catch (SubtitleDecoderException e) {
                                    C5526o.m18741g("TtmlDecoder", "Suppressing parser error", e);
                                    i2 = i4 + 1;
                                }
                            }
                            c5367c = c5367c2;
                            c5366b = c5366b2;
                            c5365a = c5365a2;
                        }
                    } else if (eventType == 4) {
                        c5368b.m19503a(C5368b.m19500d(newPullParser.getText()));
                        c5367c = c5367c2;
                        c5366b = c5366b2;
                        c5365a = c5365a2;
                        i2 = i4;
                    } else {
                        c5367c = c5367c2;
                        c5366b = c5366b2;
                        c5365a = c5365a2;
                        i2 = i4;
                        if (eventType == 3) {
                            if (newPullParser.getName().equals("tt")) {
                                c5372f = new C5372f((C5368b) arrayDeque.peek(), hashMap, hashMap2, hashMap3);
                            }
                            arrayDeque.pop();
                            i2 = i4;
                            newPullParser.next();
                            eventType = newPullParser.getEventType();
                            i3 = i2;
                        }
                    }
                } else if (eventType == 2) {
                    i2 = i4 + 1;
                    c5367c = c5367c2;
                    c5366b = c5366b2;
                    c5365a = c5365a2;
                } else {
                    c5367c = c5367c2;
                    c5366b = c5366b2;
                    c5365a = c5365a2;
                    i2 = i4;
                    if (eventType == 3) {
                        i2 = i4 - 1;
                        c5365a = c5365a2;
                        c5366b = c5366b2;
                        c5367c = c5367c2;
                    }
                }
                c5365a2 = c5365a;
                c5366b2 = c5366b;
                c5367c2 = c5367c;
                newPullParser.next();
                eventType = newPullParser.getEventType();
                i3 = i2;
            }
        } catch (IOException e2) {
            throw new IllegalStateException("Unexpected error when reading input.", e2);
        } catch (XmlPullParserException e3) {
            throw new SubtitleDecoderException("Unable to decode source", e3);
        }
    }
}
