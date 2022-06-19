package androidx.media2.exoplayer.external.text.p076f;

import androidx.media2.exoplayer.external.text.AbstractC1870b;
import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C1998ae;
import androidx.media2.exoplayer.external.util.C2009j;
import java.io.IOException;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* renamed from: androidx.media2.exoplayer.external.text.f.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/f/a.class */
public final class C1894a extends AbstractC1870b {

    /* renamed from: a */
    private static final Pattern f7594a = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* renamed from: b */
    private static final Pattern f7595b = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    /* renamed from: c */
    private static final Pattern f7596c = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* renamed from: d */
    private static final Pattern f7597d = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");

    /* renamed from: e */
    private static final Pattern f7598e = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");

    /* renamed from: f */
    private static final Pattern f7599f = Pattern.compile("^(\\d+) (\\d+)$");

    /* renamed from: g */
    private static final C1896b f7600g = new C1896b(30.0f, 1, 1);

    /* renamed from: h */
    private static final C1895a f7601h = new C1895a(32, 15);

    /* renamed from: i */
    private final XmlPullParserFactory f7602i;

    /* renamed from: androidx.media2.exoplayer.external.text.f.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/f/a$a.class */
    public static final class C1895a {

        /* renamed from: a */
        final int f7603a;

        /* renamed from: b */
        final int f7604b;

        C1895a(int i, int i2) {
            this.f7603a = i;
            this.f7604b = i2;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.text.f.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/f/a$b.class */
    public static final class C1896b {

        /* renamed from: a */
        final float f7605a;

        /* renamed from: b */
        final int f7606b;

        /* renamed from: c */
        final int f7607c;

        C1896b(float f, int i, int i2) {
            this.f7605a = f;
            this.f7606b = i;
            this.f7607c = i2;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.text.f.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/f/a$c.class */
    public static final class C1897c {

        /* renamed from: a */
        final int f7608a;

        /* renamed from: b */
        final int f7609b;

        C1897c(int i, int i2) {
            this.f7608a = i;
            this.f7609b = i2;
        }
    }

    public C1894a() {
        super("TtmlDecoder");
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.f7602i = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0110, code lost:
        if (r0.equals("ms") == false) goto L21;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v102, types: [double] */
    /* JADX WARN: Type inference failed for: r0v105, types: [double] */
    /* JADX WARN: Type inference failed for: r0v20, types: [double] */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v28, types: [double] */
    /* JADX WARN: Type inference failed for: r0v33, types: [double] */
    /* JADX WARN: Type inference failed for: r0v35, types: [double] */
    /* JADX WARN: Type inference failed for: r0v40, types: [double] */
    /* JADX WARN: Type inference failed for: r0v42, types: [double] */
    /* JADX WARN: Type inference failed for: r0v96, types: [double] */
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
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9, types: [double] */
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
    private static long m41943a(java.lang.String r5, androidx.media2.exoplayer.external.text.p076f.C1894a.C1896b r6) throws androidx.media2.exoplayer.external.text.SubtitleDecoderException {
        /*
            Method dump skipped, instructions count: 498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.p076f.C1894a.m41943a(java.lang.String, androidx.media2.exoplayer.external.text.f.a$b):long");
    }

    /* renamed from: a */
    private static C1895a m41941a(XmlPullParser xmlPullParser, C1895a c1895a) throws SubtitleDecoderException {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return c1895a;
        }
        Matcher matcher = f7599f.matcher(attributeValue);
        if (!matcher.matches()) {
            String valueOf = String.valueOf(attributeValue);
            C2009j.m41584a("TtmlDecoder", valueOf.length() != 0 ? "Ignoring malformed cell resolution: ".concat(valueOf) : new String("Ignoring malformed cell resolution: "));
            return c1895a;
        }
        try {
            int parseInt = Integer.parseInt(matcher.group(1));
            int parseInt2 = Integer.parseInt(matcher.group(2));
            if (parseInt != 0 && parseInt2 != 0) {
                return new C1895a(parseInt, parseInt2);
            }
            StringBuilder sb = new StringBuilder(47);
            sb.append("Invalid cell resolution ");
            sb.append(parseInt);
            sb.append(StringUtils.SPACE);
            sb.append(parseInt2);
            throw new SubtitleDecoderException(sb.toString());
        } catch (NumberFormatException e) {
            String valueOf2 = String.valueOf(attributeValue);
            C2009j.m41584a("TtmlDecoder", valueOf2.length() != 0 ? "Ignoring malformed cell resolution: ".concat(valueOf2) : new String("Ignoring malformed cell resolution: "));
            return c1895a;
        }
    }

    /* renamed from: a */
    private static C1897c m41942a(XmlPullParser xmlPullParser) {
        String m41608c = C1998ae.m41608c(xmlPullParser, "extent");
        if (m41608c == null) {
            return null;
        }
        Matcher matcher = f7598e.matcher(m41608c);
        if (!matcher.matches()) {
            String valueOf = String.valueOf(m41608c);
            C2009j.m41584a("TtmlDecoder", valueOf.length() != 0 ? "Ignoring non-pixel tts extent: ".concat(valueOf) : new String("Ignoring non-pixel tts extent: "));
            return null;
        }
        try {
            return new C1897c(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)));
        } catch (NumberFormatException e) {
            String valueOf2 = String.valueOf(m41608c);
            C2009j.m41584a("TtmlDecoder", valueOf2.length() != 0 ? "Ignoring malformed tts extent: ".concat(valueOf2) : new String("Ignoring malformed tts extent: "));
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v104 */
    /* JADX WARN: Type inference failed for: r0v105 */
    /* JADX WARN: Type inference failed for: r0v108 */
    /* JADX WARN: Type inference failed for: r0v109 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v117 */
    /* JADX WARN: Type inference failed for: r0v118 */
    /* JADX WARN: Type inference failed for: r0v121 */
    /* JADX WARN: Type inference failed for: r0v122 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v37 */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40 */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46 */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57 */
    /* JADX WARN: Type inference failed for: r0v58 */
    /* JADX WARN: Type inference failed for: r0v59 */
    /* JADX WARN: Type inference failed for: r0v62 */
    /* JADX WARN: Type inference failed for: r0v63 */
    /* JADX WARN: Type inference failed for: r0v64 */
    /* JADX WARN: Type inference failed for: r0v74 */
    /* JADX WARN: Type inference failed for: r0v75 */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78 */
    /* JADX WARN: Type inference failed for: r0v79 */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84 */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* JADX WARN: Type inference failed for: r0v93 */
    /* JADX WARN: Type inference failed for: r0v96 */
    /* JADX WARN: Type inference failed for: r0v97 */
    /* JADX WARN: Type inference failed for: r24v0 */
    /* JADX WARN: Type inference failed for: r24v1 */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Type inference failed for: r24v4 */
    /* JADX WARN: Type inference failed for: r24v5 */
    /* JADX WARN: Type inference failed for: r24v6 */
    /* JADX WARN: Type inference failed for: r24v7 */
    /* JADX WARN: Type inference failed for: r24v8 */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v1 */
    /* JADX WARN: Type inference failed for: r26v2 */
    /* JADX WARN: Type inference failed for: r28v0, types: [long] */
    /* JADX WARN: Type inference failed for: r32v0 */
    /* JADX WARN: Type inference failed for: r32v1 */
    /* JADX WARN: Type inference failed for: r32v2 */
    /* JADX WARN: Type inference failed for: r32v3 */
    /* JADX WARN: Type inference failed for: r32v4 */
    /* JADX WARN: Type inference failed for: r32v5 */
    /* JADX WARN: Type inference failed for: r32v6 */
    /* JADX WARN: Type inference failed for: r32v7 */
    /* JADX WARN: Type inference failed for: r33v0 */
    /* JADX WARN: Type inference failed for: r33v1 */
    /* JADX WARN: Type inference failed for: r33v10 */
    /* JADX WARN: Type inference failed for: r33v11 */
    /* JADX WARN: Type inference failed for: r33v12 */
    /* JADX WARN: Type inference failed for: r33v13 */
    /* JADX WARN: Type inference failed for: r33v14 */
    /* JADX WARN: Type inference failed for: r33v15 */
    /* JADX WARN: Type inference failed for: r33v2 */
    /* JADX WARN: Type inference failed for: r33v3 */
    /* JADX WARN: Type inference failed for: r33v4 */
    /* JADX WARN: Type inference failed for: r33v5 */
    /* JADX WARN: Type inference failed for: r33v6 */
    /* JADX WARN: Type inference failed for: r33v7 */
    /* JADX WARN: Type inference failed for: r33v8 */
    /* JADX WARN: Type inference failed for: r33v9 */
    /* JADX WARN: Type inference failed for: r35v0 */
    /* JADX WARN: Type inference failed for: r35v1 */
    /* JADX WARN: Type inference failed for: r35v10 */
    /* JADX WARN: Type inference failed for: r35v11 */
    /* JADX WARN: Type inference failed for: r35v12 */
    /* JADX WARN: Type inference failed for: r35v13 */
    /* JADX WARN: Type inference failed for: r35v2 */
    /* JADX WARN: Type inference failed for: r35v3 */
    /* JADX WARN: Type inference failed for: r35v4 */
    /* JADX WARN: Type inference failed for: r35v5 */
    /* JADX WARN: Type inference failed for: r35v6 */
    /* JADX WARN: Type inference failed for: r35v7 */
    /* JADX WARN: Type inference failed for: r35v8 */
    /* JADX WARN: Type inference failed for: r35v9 */
    /* JADX WARN: Type inference failed for: r38v0 */
    /* JADX WARN: Type inference failed for: r38v1 */
    /* JADX WARN: Type inference failed for: r38v10 */
    /* JADX WARN: Type inference failed for: r38v11 */
    /* JADX WARN: Type inference failed for: r38v12 */
    /* JADX WARN: Type inference failed for: r38v13 */
    /* JADX WARN: Type inference failed for: r38v14 */
    /* JADX WARN: Type inference failed for: r38v15 */
    /* JADX WARN: Type inference failed for: r38v2 */
    /* JADX WARN: Type inference failed for: r38v3 */
    /* JADX WARN: Type inference failed for: r38v4 */
    /* JADX WARN: Type inference failed for: r38v5 */
    /* JADX WARN: Type inference failed for: r38v6 */
    /* JADX WARN: Type inference failed for: r38v7 */
    /* JADX WARN: Type inference failed for: r38v8 */
    /* JADX WARN: Type inference failed for: r38v9 */
    /* JADX WARN: Type inference failed for: r4v0, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [long] */
    /* renamed from: a */
    private C1898b m41939a(XmlPullParser xmlPullParser, C1898b c1898b, Map<String, C1899c> map, C1896b c1896b) throws SubtitleDecoderException {
        ?? r38;
        ?? r33;
        ?? r32;
        ?? r382;
        String[] strArr;
        ?? r35;
        ?? r332;
        String str;
        int attributeCount = xmlPullParser.getAttributeCount();
        C1900d m41938a = m41938a(xmlPullParser, (C1900d) null);
        String[] strArr2 = null;
        String str2 = null;
        String str3 = "";
        int i = 0;
        ?? r24 = 1;
        ?? r26 = 1;
        ?? r0 = -9223372036854775807;
        while (true) {
            ?? r28 = r0;
            if (i >= attributeCount) {
                if (c1898b != null) {
                    r33 = r24;
                    r38 = r26;
                    if (c1898b.f7613d != -9223372036854775807L) {
                        ?? r352 = r24;
                        if (r24 != -9223372036854775807L) {
                            r352 = r24 + c1898b.f7613d;
                        }
                        r33 = r352;
                        r38 = r26;
                        if (r26 != -9223372036854775807L) {
                            r38 = r26 + c1898b.f7613d;
                            r33 = r352;
                        }
                    }
                } else {
                    r38 = r26;
                    r33 = r24;
                }
                ?? r242 = r38;
                if ((r38 == true ? 1L : 0L) == -9223372036854775807L) {
                    if (r28 != -9223372036854775807L) {
                        r242 = r33 + r28;
                    } else {
                        r242 = r38;
                        if (c1898b != null) {
                            r242 = r38;
                            if (c1898b.f7614e != -9223372036854775807L) {
                                r242 = c1898b.f7614e;
                            }
                        }
                    }
                }
                return new C1898b(xmlPullParser.getName(), null, r33, r242, m41938a, strArr2, str3, str2);
            }
            String attributeName = xmlPullParser.getAttributeName(i);
            String attributeValue = xmlPullParser.getAttributeValue(i);
            attributeName.hashCode();
            switch (attributeName.hashCode()) {
                case -934795532:
                    if (attributeName.equals("region")) {
                        r32 = false;
                        break;
                    }
                    r32 = true;
                    break;
                case 99841:
                    if (attributeName.equals("dur")) {
                        r32 = true;
                        break;
                    }
                    r32 = true;
                    break;
                case 100571:
                    if (attributeName.equals("end")) {
                        r32 = true;
                        break;
                    }
                    r32 = true;
                    break;
                case 93616297:
                    if (attributeName.equals("begin")) {
                        r32 = true;
                        break;
                    }
                    r32 = true;
                    break;
                case 109780401:
                    if (attributeName.equals("style")) {
                        r32 = true;
                        break;
                    }
                    r32 = true;
                    break;
                case 1292595405:
                    if (attributeName.equals("backgroundImage")) {
                        r32 = true;
                        break;
                    }
                    r32 = true;
                    break;
                default:
                    r32 = true;
                    break;
            }
            switch (r32) {
                case 0:
                    r332 = r24;
                    r35 = r26;
                    strArr = strArr2;
                    str = str2;
                    r382 = r28;
                    if (!map.containsKey(attributeValue)) {
                        break;
                    } else {
                        str3 = attributeValue;
                        r382 = r28;
                        str = str2;
                        strArr = strArr2;
                        r35 = r26;
                        r332 = r24;
                        break;
                    }
                case 1:
                    r382 = m41943a(attributeValue, c1896b);
                    r332 = r24;
                    r35 = r26;
                    strArr = strArr2;
                    str = str2;
                    break;
                case 2:
                    r35 = m41943a(attributeValue, c1896b);
                    r332 = r24;
                    strArr = strArr2;
                    str = str2;
                    r382 = r28;
                    break;
                case 3:
                    r332 = m41943a(attributeValue, c1896b);
                    r382 = r28;
                    str = str2;
                    strArr = strArr2;
                    r35 = r26;
                    break;
                case 4:
                    String[] m41944a = m41944a(attributeValue);
                    r332 = r24;
                    r35 = r26;
                    strArr = strArr2;
                    str = str2;
                    r382 = r28;
                    if (m41944a.length <= 0) {
                        break;
                    } else {
                        strArr = m41944a;
                        r332 = r24;
                        r35 = r26;
                        str = str2;
                        r382 = r28;
                        break;
                    }
                case 5:
                    r332 = r24;
                    r35 = r26;
                    strArr = strArr2;
                    str = str2;
                    r382 = r28;
                    if (!attributeValue.startsWith("#")) {
                        break;
                    } else {
                        str = attributeValue.substring(1);
                        r332 = r24;
                        r35 = r26;
                        strArr = strArr2;
                        r382 = r28;
                        break;
                    }
                default:
                    r332 = r24;
                    r35 = r26;
                    strArr = strArr2;
                    str = str2;
                    r382 = r28;
                    break;
            }
            i++;
            r24 = r332;
            r26 = r35;
            strArr2 = strArr;
            str2 = str;
            r0 = r382;
        }
    }

    /* renamed from: a */
    private static C1899c m41940a(XmlPullParser xmlPullParser, C1895a c1895a, C1897c c1897c) {
        float parseFloat;
        float parseFloat2;
        float parseFloat3;
        float parseFloat4;
        int i;
        String m41608c = C1998ae.m41608c(xmlPullParser, "id");
        if (m41608c == null) {
            return null;
        }
        String m41608c2 = C1998ae.m41608c(xmlPullParser, "origin");
        if (m41608c2 == null) {
            C2009j.m41584a("TtmlDecoder", "Ignoring region without an origin");
            return null;
        }
        Pattern pattern = f7597d;
        Matcher matcher = pattern.matcher(m41608c2);
        Pattern pattern2 = f7598e;
        Matcher matcher2 = pattern2.matcher(m41608c2);
        if (matcher.matches()) {
            try {
                parseFloat = Float.parseFloat(matcher.group(1)) / 100.0f;
                parseFloat2 = Float.parseFloat(matcher.group(2)) / 100.0f;
            } catch (NumberFormatException e) {
                String valueOf = String.valueOf(m41608c2);
                C2009j.m41584a("TtmlDecoder", valueOf.length() != 0 ? "Ignoring region with malformed origin: ".concat(valueOf) : new String("Ignoring region with malformed origin: "));
                return null;
            }
        } else if (!matcher2.matches()) {
            String valueOf2 = String.valueOf(m41608c2);
            C2009j.m41584a("TtmlDecoder", valueOf2.length() != 0 ? "Ignoring region with unsupported origin: ".concat(valueOf2) : new String("Ignoring region with unsupported origin: "));
            return null;
        } else if (c1897c == null) {
            String valueOf3 = String.valueOf(m41608c2);
            C2009j.m41584a("TtmlDecoder", valueOf3.length() != 0 ? "Ignoring region with missing tts:extent: ".concat(valueOf3) : new String("Ignoring region with missing tts:extent: "));
            return null;
        } else {
            try {
                int parseInt = Integer.parseInt(matcher2.group(1));
                parseFloat = parseInt / c1897c.f7608a;
                parseFloat2 = Integer.parseInt(matcher2.group(2)) / c1897c.f7609b;
            } catch (NumberFormatException e2) {
                String valueOf4 = String.valueOf(m41608c2);
                C2009j.m41584a("TtmlDecoder", valueOf4.length() != 0 ? "Ignoring region with malformed origin: ".concat(valueOf4) : new String("Ignoring region with malformed origin: "));
                return null;
            }
        }
        String m41608c3 = C1998ae.m41608c(xmlPullParser, "extent");
        if (m41608c3 == null) {
            C2009j.m41584a("TtmlDecoder", "Ignoring region without an extent");
            return null;
        }
        Matcher matcher3 = pattern.matcher(m41608c3);
        Matcher matcher4 = pattern2.matcher(m41608c3);
        if (matcher3.matches()) {
            try {
                parseFloat3 = Float.parseFloat(matcher3.group(1)) / 100.0f;
                parseFloat4 = Float.parseFloat(matcher3.group(2)) / 100.0f;
            } catch (NumberFormatException e3) {
                String valueOf5 = String.valueOf(m41608c2);
                C2009j.m41584a("TtmlDecoder", valueOf5.length() != 0 ? "Ignoring region with malformed extent: ".concat(valueOf5) : new String("Ignoring region with malformed extent: "));
                return null;
            }
        } else if (!matcher4.matches()) {
            String valueOf6 = String.valueOf(m41608c2);
            C2009j.m41584a("TtmlDecoder", valueOf6.length() != 0 ? "Ignoring region with unsupported extent: ".concat(valueOf6) : new String("Ignoring region with unsupported extent: "));
            return null;
        } else if (c1897c == null) {
            String valueOf7 = String.valueOf(m41608c2);
            C2009j.m41584a("TtmlDecoder", valueOf7.length() != 0 ? "Ignoring region with missing tts:extent: ".concat(valueOf7) : new String("Ignoring region with missing tts:extent: "));
            return null;
        } else {
            try {
                int parseInt2 = Integer.parseInt(matcher4.group(1));
                parseFloat3 = parseInt2 / c1897c.f7608a;
                parseFloat4 = Integer.parseInt(matcher4.group(2)) / c1897c.f7609b;
            } catch (NumberFormatException e4) {
                String valueOf8 = String.valueOf(m41608c2);
                C2009j.m41584a("TtmlDecoder", valueOf8.length() != 0 ? "Ignoring region with malformed extent: ".concat(valueOf8) : new String("Ignoring region with malformed extent: "));
                return null;
            }
        }
        String m41608c4 = C1998ae.m41608c(xmlPullParser, "displayAlign");
        if (m41608c4 != null) {
            String m41620d = C1996ac.m41620d(m41608c4);
            m41620d.hashCode();
            if (m41620d.equals("center")) {
                parseFloat2 += parseFloat4 / 2.0f;
                i = 1;
            } else if (m41620d.equals("after")) {
                parseFloat2 += parseFloat4;
                i = 2;
            }
            return new C1899c(m41608c, parseFloat, parseFloat2, 0, i, parseFloat3, parseFloat4, 1, 1.0f / c1895a.f7604b);
        }
        i = 0;
        return new C1899c(m41608c, parseFloat, parseFloat2, 0, i, parseFloat3, parseFloat4, 1, 1.0f / c1895a.f7604b);
    }

    /* renamed from: a */
    private static C1900d m41945a(C1900d c1900d) {
        C1900d c1900d2 = c1900d;
        if (c1900d == null) {
            c1900d2 = new C1900d();
        }
        return c1900d2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x0611, code lost:
        if (r0.equals(net.pubnative.lite.sdk.vpaid.enums.EventConstants.START) == false) goto L220;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.media2.exoplayer.external.text.p076f.C1900d m41938a(org.xmlpull.v1.XmlPullParser r4, androidx.media2.exoplayer.external.text.p076f.C1900d r5) {
        /*
            Method dump skipped, instructions count: 1847
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.p076f.C1894a.m41938a(org.xmlpull.v1.XmlPullParser, androidx.media2.exoplayer.external.text.f.d):androidx.media2.exoplayer.external.text.f.d");
    }

    /* renamed from: a */
    private Map<String, C1900d> m41937a(XmlPullParser xmlPullParser, Map<String, C1900d> map, C1895a c1895a, C1897c c1897c, Map<String, C1899c> map2, Map<String, String> map3) throws IOException, XmlPullParserException {
        String m41608c;
        do {
            xmlPullParser.next();
            if (C1998ae.m41609b(xmlPullParser, "style")) {
                String m41608c2 = C1998ae.m41608c(xmlPullParser, "style");
                C1900d m41938a = m41938a(xmlPullParser, new C1900d());
                if (m41608c2 != null) {
                    for (String str : m41944a(m41608c2)) {
                        m41938a.m41923a(map.get(str));
                    }
                }
                if (m41938a.f7642l != null) {
                    map.put(m41938a.f7642l, m41938a);
                }
            } else if (C1998ae.m41609b(xmlPullParser, "region")) {
                C1899c m41940a = m41940a(xmlPullParser, c1895a, c1897c);
                if (m41940a != null) {
                    map2.put(m41940a.f7622a, m41940a);
                }
            } else if (C1998ae.m41609b(xmlPullParser, "metadata")) {
                do {
                    xmlPullParser.next();
                    if (C1998ae.m41609b(xmlPullParser, "image") && (m41608c = C1998ae.m41608c(xmlPullParser, "id")) != null) {
                        map3.put(m41608c, xmlPullParser.nextText());
                    }
                } while (!C1998ae.m41611a(xmlPullParser, "metadata"));
            }
        } while (!C1998ae.m41611a(xmlPullParser, "head"));
        return map;
    }

    /* renamed from: a */
    private static String[] m41944a(String str) {
        String trim = str.trim();
        return trim.isEmpty() ? new String[0] : C1996ac.m41654a(trim, "\\s+");
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x0245 A[Catch: IOException -> 0x03d3, XmlPullParserException -> 0x03e0, TRY_ENTER, TryCatch #3 {IOException -> 0x03d3, XmlPullParserException -> 0x03e0, blocks: (B:3:0x0004, B:5:0x0033, B:9:0x0083, B:11:0x0091, B:14:0x00a0, B:18:0x00af, B:20:0x00c2, B:23:0x00cc, B:25:0x00df, B:27:0x00ef, B:28:0x0105, B:29:0x0111, B:30:0x0112, B:30:0x0112, B:31:0x0115, B:33:0x0131, B:35:0x013a, B:37:0x0152, B:38:0x0159, B:38:0x0159, B:39:0x015c, B:41:0x018d, B:43:0x019a, B:45:0x01a5, B:47:0x01b0, B:49:0x01bb, B:51:0x01c6, B:53:0x01d1, B:55:0x01dc, B:57:0x01e7, B:59:0x01f2, B:61:0x01fd, B:63:0x0208, B:65:0x0213, B:67:0x021e, B:69:0x0229, B:76:0x0245, B:78:0x0259, B:79:0x0265, B:80:0x0270, B:80:0x0270, B:81:0x0273, B:83:0x0285, B:85:0x0290, B:87:0x02a7, B:90:0x02c4, B:94:0x02e2, B:98:0x02fe, B:102:0x035d, B:104:0x036d, B:106:0x0385, B:115:0x03bd), top: B:126:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0285 A[Catch: IOException -> 0x03d3, XmlPullParserException -> 0x03e0, TRY_ENTER, TryCatch #3 {IOException -> 0x03d3, XmlPullParserException -> 0x03e0, blocks: (B:3:0x0004, B:5:0x0033, B:9:0x0083, B:11:0x0091, B:14:0x00a0, B:18:0x00af, B:20:0x00c2, B:23:0x00cc, B:25:0x00df, B:27:0x00ef, B:28:0x0105, B:29:0x0111, B:30:0x0112, B:30:0x0112, B:31:0x0115, B:33:0x0131, B:35:0x013a, B:37:0x0152, B:38:0x0159, B:38:0x0159, B:39:0x015c, B:41:0x018d, B:43:0x019a, B:45:0x01a5, B:47:0x01b0, B:49:0x01bb, B:51:0x01c6, B:53:0x01d1, B:55:0x01dc, B:57:0x01e7, B:59:0x01f2, B:61:0x01fd, B:63:0x0208, B:65:0x0213, B:67:0x021e, B:69:0x0229, B:76:0x0245, B:78:0x0259, B:79:0x0265, B:80:0x0270, B:80:0x0270, B:81:0x0273, B:83:0x0285, B:85:0x0290, B:87:0x02a7, B:90:0x02c4, B:94:0x02e2, B:98:0x02fe, B:102:0x035d, B:104:0x036d, B:106:0x0385, B:115:0x03bd), top: B:126:0x0004 }] */
    @Override // androidx.media2.exoplayer.external.text.AbstractC1870b
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.media2.exoplayer.external.text.AbstractC1886d mo41891a(byte[] r13, int r14, boolean r15) throws androidx.media2.exoplayer.external.text.SubtitleDecoderException {
        /*
            Method dump skipped, instructions count: 1005
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.p076f.C1894a.mo41891a(byte[], int, boolean):androidx.media2.exoplayer.external.text.d");
    }
}
