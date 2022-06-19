package p193e.p1577m.p1578a.p1596c.p1622m1.p1628r;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24563c;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24567g;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24789n;
/* renamed from: e.m.a.c.m1.r.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/r/a.class */
public final class C24608a extends AbstractC24563c {

    /* renamed from: o */
    public static final Pattern f68878o = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* renamed from: p */
    public static final Pattern f68879p = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    /* renamed from: q */
    public static final Pattern f68880q = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* renamed from: r */
    public static final Pattern f68881r = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");

    /* renamed from: s */
    public static final Pattern f68882s = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");

    /* renamed from: t */
    public static final Pattern f68883t = Pattern.compile("^(\\d+) (\\d+)$");

    /* renamed from: u */
    public static final C24610b f68884u = new C24610b(30.0f, 1, 1);

    /* renamed from: v */
    public static final C24609a f68885v = new C24609a(32, 15);

    /* renamed from: n */
    public final XmlPullParserFactory f68886n;

    /* renamed from: e.m.a.c.m1.r.a$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/r/a$a.class */
    public static final class C24609a {

        /* renamed from: a */
        public final int f68887a;

        public C24609a(int i, int i2) {
            this.f68887a = i2;
        }
    }

    /* renamed from: e.m.a.c.m1.r.a$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/r/a$b.class */
    public static final class C24610b {

        /* renamed from: a */
        public final float f68888a;

        /* renamed from: b */
        public final int f68889b;

        /* renamed from: c */
        public final int f68890c;

        public C24610b(float f, int i, int i2) {
            this.f68888a = f;
            this.f68889b = i;
            this.f68890c = i2;
        }
    }

    /* renamed from: e.m.a.c.m1.r.a$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/r/a$c.class */
    public static final class C24611c {

        /* renamed from: a */
        public final int f68891a;

        /* renamed from: b */
        public final int f68892b;

        public C24611c(int i, int i2) {
            this.f68891a = i;
            this.f68892b = i2;
        }
    }

    public C24608a() {
        super("TtmlDecoder");
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.f68886n = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    /* renamed from: l */
    public static boolean m4853l(String str) {
        return str.equals("tt") || str.equals("head") || str.equals("body") || str.equals("div") || str.equals("p") || str.equals("span") || str.equals("br") || str.equals("style") || str.equals("styling") || str.equals("layout") || str.equals("region") || str.equals("metadata") || str.equals("image") || str.equals(RemoteMessageConst.DATA) || str.equals("information");
    }

    /* renamed from: n */
    public static void m4851n(String str, C24614d c24614d) throws C24567g {
        Matcher matcher;
        int i = C24773d0.f69427a;
        String[] split = str.split("\\s+", -1);
        if (split.length == 1) {
            matcher = f68880q.matcher(str);
        } else if (split.length != 2) {
            throw new C24567g(C22128a.m8697J2(C22128a.m8728C("Invalid number of entries for fontSize: "), split.length, StringConstant.DOT));
        } else {
            matcher = f68880q.matcher(split[1]);
        }
        if (matcher.matches()) {
            String group = matcher.group(3);
            group.hashCode();
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
                    c24614d.f68923j = 3;
                    break;
                case true:
                    c24614d.f68923j = 2;
                    break;
                case true:
                    c24614d.f68923j = 1;
                    break;
                default:
                    throw new C24567g(C22128a.m8725C2("Invalid unit for fontSize: '", group, "'."));
            }
            c24614d.f68924k = Float.valueOf(matcher.group(1)).floatValue();
            return;
        }
        throw new C24567g(C22128a.m8725C2("Invalid expression for fontSize: '", str, "'."));
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [double] */
    /* JADX WARN: Type inference failed for: r0v26, types: [double] */
    /* JADX WARN: Type inference failed for: r0v29, types: [double] */
    /* JADX WARN: Type inference failed for: r0v31, types: [double] */
    /* JADX WARN: Type inference failed for: r0v36, types: [double] */
    /* JADX WARN: Type inference failed for: r0v90, types: [double] */
    /* JADX WARN: Type inference failed for: r0v96, types: [double] */
    /* JADX WARN: Type inference failed for: r0v99, types: [double] */
    /* renamed from: t */
    public static long m4845t(String str, C24610b c24610b) throws C24567g {
        char c;
        char c2;
        boolean z;
        String group;
        String group2;
        Matcher matcher = f68878o.matcher(str);
        if (matcher.matches()) {
            double parseLong = Long.parseLong(matcher.group(1)) * 3600;
            double parseLong2 = Long.parseLong(matcher.group(2)) * 60;
            double parseLong3 = Long.parseLong(matcher.group(3));
            String group3 = matcher.group(4);
            boolean z2 = false;
            boolean parseDouble = group3 != null ? Double.parseDouble(group3) : false;
            boolean parseLong4 = matcher.group(5) != null ? ((float) Long.parseLong(group)) / c24610b.f68888a : false;
            if (matcher.group(6) != null) {
                z2 = (Long.parseLong(group2) / c24610b.f68889b) / c24610b.f68888a;
            }
            return (long) ((parseLong + parseLong2 + parseLong3 + (parseDouble ? 1.0d : 0.0d) + (parseLong4 ? 1.0d : 0.0d) + (z2 ? 1.0d : 0.0d)) * 1000000.0d);
        }
        Matcher matcher2 = f68879p.matcher(str);
        if (!matcher2.matches()) {
            throw new C24567g(C22128a.m8543z2("Malformed time expression: ", str));
        }
        ?? parseDouble2 = Double.parseDouble(matcher2.group(1));
        String group4 = matcher2.group(2);
        group4.hashCode();
        group4.hashCode();
        boolean z3 = true;
        boolean z4 = z3;
        switch (group4.hashCode()) {
            case 102:
                z4 = z3;
                if (group4.equals("f")) {
                    z4 = false;
                    break;
                }
                break;
            case 104:
                z4 = z3;
                if (group4.equals("h")) {
                    z4 = true;
                    break;
                }
                break;
            case 109:
                z4 = z3;
                if (group4.equals("m")) {
                    z4 = true;
                    break;
                }
                break;
            case 116:
                z4 = z3;
                if (group4.equals("t")) {
                    z4 = true;
                    break;
                }
                break;
            case 3494:
                z4 = z3;
                if (group4.equals("ms")) {
                    z4 = true;
                    break;
                }
                break;
        }
        switch (z4) {
            case false:
                c2 = c24610b.f68888a;
                c = parseDouble2 / c2;
                break;
            case true:
                z = true;
                c = parseDouble2 * (z ? 1.0d : 0.0d);
                break;
            case true:
                z = true;
                c = parseDouble2 * (z ? 1.0d : 0.0d);
                break;
            case true:
                c2 = c24610b.f68890c;
                c = parseDouble2 / c2;
                break;
            case true:
                c2 = 0;
                c = parseDouble2 / c2;
                break;
            default:
                c = parseDouble2;
                break;
        }
        return (long) (c * 0);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24563c
    /* renamed from: j */
    public AbstractC24565e mo4817j(byte[] bArr, int i, boolean z) throws C24567g {
        int i2;
        C24609a c24609a;
        C24610b c24610b;
        C24611c c24611c;
        try {
            XmlPullParser newPullParser = this.f68886n.newPullParser();
            Map<String, C24614d> hashMap = new HashMap<>();
            HashMap hashMap2 = new HashMap();
            Map<String, String> hashMap3 = new HashMap<>();
            hashMap2.put("", new C24613c(null, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f));
            C24611c c24611c2 = null;
            newPullParser.setInput(new ByteArrayInputStream(bArr, 0, i), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            int eventType = newPullParser.getEventType();
            C24610b c24610b2 = f68884u;
            C24609a c24609a2 = f68885v;
            int i3 = 0;
            C24615e c24615e = null;
            while (eventType != 1) {
                C24612b c24612b = (C24612b) arrayDeque.peek();
                if (i3 == 0) {
                    String name = newPullParser.getName();
                    if (eventType == 2) {
                        if ("tt".equals(name)) {
                            c24610b2 = m4850o(newPullParser);
                            c24609a2 = m4852m(newPullParser, f68885v);
                            c24611c2 = m4844u(newPullParser);
                        }
                        if (!m4853l(name)) {
                            newPullParser.getName();
                            i2 = i3 + 1;
                            newPullParser.next();
                            eventType = newPullParser.getEventType();
                            i3 = i2;
                        } else {
                            if ("head".equals(name)) {
                                m4849p(newPullParser, hashMap, c24609a2, c24611c2, hashMap2, hashMap3);
                                i2 = i3;
                            } else {
                                try {
                                    C24612b m4848q = m4848q(newPullParser, c24612b, hashMap2, c24610b2);
                                    arrayDeque.push(m4848q);
                                    i2 = i3;
                                    if (c24612b != null) {
                                        c24612b.m4843a(m4848q);
                                        i2 = i3;
                                    }
                                } catch (C24567g e) {
                                    C24789n.m4576a("Suppressing parser error", e);
                                    i2 = i3 + 1;
                                }
                            }
                            c24611c = c24611c2;
                            c24610b = c24610b2;
                            c24609a = c24609a2;
                        }
                    } else if (eventType == 4) {
                        C24612b m4842b = C24612b.m4842b(newPullParser.getText());
                        if (c24612b.f68904l == null) {
                            c24612b.f68904l = new ArrayList();
                        }
                        c24612b.f68904l.add(m4842b);
                        c24611c = c24611c2;
                        c24610b = c24610b2;
                        c24609a = c24609a2;
                        i2 = i3;
                    } else {
                        c24611c = c24611c2;
                        c24610b = c24610b2;
                        c24609a = c24609a2;
                        i2 = i3;
                        if (eventType == 3) {
                            if (newPullParser.getName().equals("tt")) {
                                c24615e = new C24615e((C24612b) arrayDeque.peek(), hashMap, hashMap2, hashMap3);
                            }
                            arrayDeque.pop();
                            i2 = i3;
                            newPullParser.next();
                            eventType = newPullParser.getEventType();
                            i3 = i2;
                        }
                    }
                } else if (eventType == 2) {
                    i2 = i3 + 1;
                    c24611c = c24611c2;
                    c24610b = c24610b2;
                    c24609a = c24609a2;
                } else {
                    c24611c = c24611c2;
                    c24610b = c24610b2;
                    c24609a = c24609a2;
                    i2 = i3;
                    if (eventType == 3) {
                        i2 = i3 - 1;
                        c24609a = c24609a2;
                        c24610b = c24610b2;
                        c24611c = c24611c2;
                    }
                }
                c24609a2 = c24609a;
                c24610b2 = c24610b;
                c24611c2 = c24611c;
                newPullParser.next();
                eventType = newPullParser.getEventType();
                i3 = i2;
            }
            return c24615e;
        } catch (IOException e2) {
            throw new IllegalStateException("Unexpected error when reading input.", e2);
        } catch (XmlPullParserException e3) {
            throw new C24567g("Unable to decode source", e3);
        }
    }

    /* renamed from: k */
    public final C24614d m4854k(C24614d c24614d) {
        C24614d c24614d2 = c24614d;
        if (c24614d == null) {
            c24614d2 = new C24614d();
        }
        return c24614d2;
    }

    /* renamed from: m */
    public final C24609a m4852m(XmlPullParser xmlPullParser, C24609a c24609a) throws C24567g {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return c24609a;
        }
        Matcher matcher = f68883t.matcher(attributeValue);
        if (!matcher.matches()) {
            return c24609a;
        }
        try {
            int parseInt = Integer.parseInt(matcher.group(1));
            int parseInt2 = Integer.parseInt(matcher.group(2));
            if (parseInt != 0 && parseInt2 != 0) {
                return new C24609a(parseInt, parseInt2);
            }
            throw new C24567g("Invalid cell resolution " + parseInt + StringConstant.SPACE + parseInt2);
        } catch (NumberFormatException e) {
            return c24609a;
        }
    }

    /* renamed from: o */
    public final C24610b m4850o(XmlPullParser xmlPullParser) throws C24567g {
        String[] split;
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        int parseInt = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        float f = 1.0f;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            int i = C24773d0.f69427a;
            if (attributeValue2.split(StringConstant.SPACE, -1).length != 2) {
                throw new C24567g("frameRateMultiplier doesn't have 2 parts");
            }
            f = Integer.parseInt(split[0]) / Integer.parseInt(split[1]);
        }
        C24610b c24610b = f68884u;
        int i2 = c24610b.f68889b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i2 = Integer.parseInt(attributeValue3);
        }
        int i3 = c24610b.f68890c;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i3 = Integer.parseInt(attributeValue4);
        }
        return new C24610b(parseInt * f, i2, i3);
    }

    /* renamed from: p */
    public final Map<String, C24614d> m4849p(XmlPullParser xmlPullParser, Map<String, C24614d> map, C24609a c24609a, C24611c c24611c, Map<String, C24613c> map2, Map<String, String> map3) throws IOException, XmlPullParserException {
        String m2392Y;
        C24613c c24613c;
        float parseFloat;
        float parseFloat2;
        float f;
        float f2;
        int i;
        do {
            xmlPullParser.next();
            if (C26232y.m2399W0(xmlPullParser, "style")) {
                String m2392Y2 = C26232y.m2392Y(xmlPullParser, "style");
                C24614d m4847r = m4847r(xmlPullParser, new C24614d());
                if (m2392Y2 != null) {
                    for (String str : m4846s(m2392Y2)) {
                        m4847r.m4833a(map.get(str));
                    }
                }
                String str2 = m4847r.f68925l;
                if (str2 != null) {
                    map.put(str2, m4847r);
                }
            } else if (C26232y.m2399W0(xmlPullParser, "region")) {
                String m2392Y3 = C26232y.m2392Y(xmlPullParser, "id");
                if (m2392Y3 == null) {
                    c24613c = null;
                } else {
                    String m2392Y4 = C26232y.m2392Y(xmlPullParser, "origin");
                    c24613c = null;
                    if (m2392Y4 != null) {
                        Pattern pattern = f68881r;
                        Matcher matcher = pattern.matcher(m2392Y4);
                        Pattern pattern2 = f68882s;
                        Matcher matcher2 = pattern2.matcher(m2392Y4);
                        if (matcher.matches()) {
                            try {
                                parseFloat = Float.parseFloat(matcher.group(1)) / 100.0f;
                                parseFloat2 = Float.parseFloat(matcher.group(2)) / 100.0f;
                            } catch (NumberFormatException e) {
                                c24613c = null;
                            }
                        } else {
                            c24613c = null;
                            if (matcher2.matches()) {
                                if (c24611c == null) {
                                    c24613c = null;
                                } else {
                                    parseFloat = Integer.parseInt(matcher2.group(1)) / c24611c.f68891a;
                                    parseFloat2 = Integer.parseInt(matcher2.group(2)) / c24611c.f68892b;
                                }
                            }
                        }
                        String m2392Y5 = C26232y.m2392Y(xmlPullParser, "extent");
                        c24613c = null;
                        if (m2392Y5 != null) {
                            Matcher matcher3 = pattern.matcher(m2392Y5);
                            Matcher matcher4 = pattern2.matcher(m2392Y5);
                            if (matcher3.matches()) {
                                f2 = Float.parseFloat(matcher3.group(1)) / 100.0f;
                                f = Float.parseFloat(matcher3.group(2)) / 100.0f;
                            } else {
                                c24613c = null;
                                if (matcher4.matches()) {
                                    if (c24611c == null) {
                                        c24613c = null;
                                    } else {
                                        f2 = Integer.parseInt(matcher4.group(1)) / c24611c.f68891a;
                                        f = Integer.parseInt(matcher4.group(2)) / c24611c.f68892b;
                                    }
                                }
                            }
                            String m2392Y6 = C26232y.m2392Y(xmlPullParser, "displayAlign");
                            if (m2392Y6 != null) {
                                String m4626D = C24773d0.m4626D(m2392Y6);
                                m4626D.hashCode();
                                if (m4626D.equals("center")) {
                                    parseFloat2 = (f / 2.0f) + parseFloat2;
                                    i = 1;
                                } else if (m4626D.equals("after")) {
                                    parseFloat2 += f;
                                    i = 2;
                                }
                                c24613c = new C24613c(m2392Y3, parseFloat, parseFloat2, 0, i, f2, f, 1, 1.0f / c24609a.f68887a);
                            }
                            i = 0;
                            c24613c = new C24613c(m2392Y3, parseFloat, parseFloat2, 0, i, f2, f, 1, 1.0f / c24609a.f68887a);
                        }
                    }
                }
                if (c24613c != null) {
                    map2.put(c24613c.f68905a, c24613c);
                }
            } else if (C26232y.m2399W0(xmlPullParser, "metadata")) {
                do {
                    xmlPullParser.next();
                    if (C26232y.m2399W0(xmlPullParser, "image") && (m2392Y = C26232y.m2392Y(xmlPullParser, "id")) != null) {
                        map3.put(m2392Y, xmlPullParser.nextText());
                    }
                } while (!C26232y.m2419R0(xmlPullParser, "metadata"));
            }
        } while (!C26232y.m2419R0(xmlPullParser, "head"));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v102 */
    /* JADX WARN: Type inference failed for: r0v103 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v110 */
    /* JADX WARN: Type inference failed for: r0v111 */
    /* JADX WARN: Type inference failed for: r0v114 */
    /* JADX WARN: Type inference failed for: r0v115 */
    /* JADX WARN: Type inference failed for: r0v116 */
    /* JADX WARN: Type inference failed for: r0v124 */
    /* JADX WARN: Type inference failed for: r0v125 */
    /* JADX WARN: Type inference failed for: r0v128 */
    /* JADX WARN: Type inference failed for: r0v129 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v35 */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r0v39 */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42 */
    /* JADX WARN: Type inference failed for: r0v43 */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48 */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59 */
    /* JADX WARN: Type inference failed for: r0v60 */
    /* JADX WARN: Type inference failed for: r0v61 */
    /* JADX WARN: Type inference failed for: r0v64 */
    /* JADX WARN: Type inference failed for: r0v65 */
    /* JADX WARN: Type inference failed for: r0v66 */
    /* JADX WARN: Type inference failed for: r0v76 */
    /* JADX WARN: Type inference failed for: r0v77 */
    /* JADX WARN: Type inference failed for: r0v78 */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83 */
    /* JADX WARN: Type inference failed for: r0v84 */
    /* JADX WARN: Type inference failed for: r0v85 */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    /* JADX WARN: Type inference failed for: r0v88 */
    /* JADX WARN: Type inference failed for: r0v92 */
    /* JADX WARN: Type inference failed for: r0v94, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95 */
    /* JADX WARN: Type inference failed for: r0v99 */
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
    /* JADX WARN: Type inference failed for: r26v3 */
    /* JADX WARN: Type inference failed for: r28v0, types: [long] */
    /* JADX WARN: Type inference failed for: r33v0 */
    /* JADX WARN: Type inference failed for: r33v1 */
    /* JADX WARN: Type inference failed for: r33v2 */
    /* JADX WARN: Type inference failed for: r33v3 */
    /* JADX WARN: Type inference failed for: r33v4 */
    /* JADX WARN: Type inference failed for: r33v5 */
    /* JADX WARN: Type inference failed for: r33v6 */
    /* JADX WARN: Type inference failed for: r33v7 */
    /* JADX WARN: Type inference failed for: r34v0 */
    /* JADX WARN: Type inference failed for: r34v1 */
    /* JADX WARN: Type inference failed for: r34v10 */
    /* JADX WARN: Type inference failed for: r34v11 */
    /* JADX WARN: Type inference failed for: r34v12 */
    /* JADX WARN: Type inference failed for: r34v13 */
    /* JADX WARN: Type inference failed for: r34v2 */
    /* JADX WARN: Type inference failed for: r34v3 */
    /* JADX WARN: Type inference failed for: r34v4 */
    /* JADX WARN: Type inference failed for: r34v5 */
    /* JADX WARN: Type inference failed for: r34v6 */
    /* JADX WARN: Type inference failed for: r34v7 */
    /* JADX WARN: Type inference failed for: r34v8 */
    /* JADX WARN: Type inference failed for: r34v9 */
    /* JADX WARN: Type inference failed for: r36v0 */
    /* JADX WARN: Type inference failed for: r36v1 */
    /* JADX WARN: Type inference failed for: r36v10 */
    /* JADX WARN: Type inference failed for: r36v11 */
    /* JADX WARN: Type inference failed for: r36v12 */
    /* JADX WARN: Type inference failed for: r36v13 */
    /* JADX WARN: Type inference failed for: r36v14 */
    /* JADX WARN: Type inference failed for: r36v15 */
    /* JADX WARN: Type inference failed for: r36v2 */
    /* JADX WARN: Type inference failed for: r36v3 */
    /* JADX WARN: Type inference failed for: r36v4 */
    /* JADX WARN: Type inference failed for: r36v5 */
    /* JADX WARN: Type inference failed for: r36v6 */
    /* JADX WARN: Type inference failed for: r36v7 */
    /* JADX WARN: Type inference failed for: r36v8 */
    /* JADX WARN: Type inference failed for: r36v9 */
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
    /* renamed from: q */
    public final C24612b m4848q(XmlPullParser xmlPullParser, C24612b c24612b, Map<String, C24613c> map, C24610b c24610b) throws C24567g {
        ?? r38;
        ?? r36;
        ?? r33;
        ?? r382;
        ?? r362;
        ?? r34;
        String[] strArr;
        String str;
        int attributeCount = xmlPullParser.getAttributeCount();
        C24614d m4847r = m4847r(xmlPullParser, null);
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
                if (c24612b != null) {
                    long j = c24612b.f68896d;
                    r36 = r24;
                    r38 = r26;
                    if (j != -9223372036854775807L) {
                        ?? r342 = r24;
                        if (r24 != -9223372036854775807L) {
                            r342 = r24 + j;
                        }
                        r36 = r342;
                        r38 = r26;
                        if (r26 != -9223372036854775807L) {
                            r38 = r26 + j;
                            r36 = r342;
                        }
                    }
                } else {
                    r38 = r26;
                    r36 = r24;
                }
                ?? r242 = r38;
                if ((r38 == true ? 1L : 0L) == -9223372036854775807L) {
                    if (r28 != -9223372036854775807L) {
                        r242 = r36 + r28;
                    } else {
                        r242 = r38;
                        if (c24612b != null) {
                            ?? r02 = c24612b.f68897e;
                            r242 = r38;
                            if (r02 != -9223372036854775807L) {
                                r242 = r02;
                            }
                        }
                    }
                }
                return new C24612b(xmlPullParser.getName(), null, r36, r242, m4847r, strArr2, str3, str2);
            }
            String attributeName = xmlPullParser.getAttributeName(i);
            String attributeValue = xmlPullParser.getAttributeValue(i);
            attributeName.hashCode();
            switch (attributeName.hashCode()) {
                case -934795532:
                    if (attributeName.equals("region")) {
                        r33 = false;
                        break;
                    }
                    r33 = true;
                    break;
                case 99841:
                    if (attributeName.equals("dur")) {
                        r33 = true;
                        break;
                    }
                    r33 = true;
                    break;
                case 100571:
                    if (attributeName.equals(AnalyticsConstants.END)) {
                        r33 = true;
                        break;
                    }
                    r33 = true;
                    break;
                case 93616297:
                    if (attributeName.equals("begin")) {
                        r33 = true;
                        break;
                    }
                    r33 = true;
                    break;
                case 109780401:
                    if (attributeName.equals("style")) {
                        r33 = true;
                        break;
                    }
                    r33 = true;
                    break;
                case 1292595405:
                    if (attributeName.equals("backgroundImage")) {
                        r33 = true;
                        break;
                    }
                    r33 = true;
                    break;
                default:
                    r33 = true;
                    break;
            }
            if (r33 != true) {
                r34 = r24;
                r362 = r26;
                strArr = strArr2;
                str = str2;
                r382 = r28;
                if (map.containsKey(attributeValue)) {
                    str3 = attributeValue;
                    r382 = r28;
                    str = str2;
                    strArr = strArr2;
                    r362 = r26;
                    r34 = r24;
                }
            } else if (r33 == true) {
                r382 = m4845t(attributeValue, c24610b);
                str = str2;
                strArr = strArr2;
                r362 = r26;
                r34 = r24;
            } else if (r33 == true) {
                r362 = m4845t(attributeValue, c24610b);
                r34 = r24;
                strArr = strArr2;
                str = str2;
                r382 = r28;
            } else if (r33 == true) {
                r34 = m4845t(attributeValue, c24610b);
                r362 = r26;
                strArr = strArr2;
                str = str2;
                r382 = r28;
            } else if (r33 == true) {
                String[] m4846s = m4846s(attributeValue);
                r34 = r24;
                r362 = r26;
                strArr = strArr2;
                str = str2;
                r382 = r28;
                if (m4846s.length > 0) {
                    strArr = m4846s;
                    r34 = r24;
                    r362 = r26;
                    str = str2;
                    r382 = r28;
                }
            } else if (r33 != true) {
                r34 = r24;
                r362 = r26;
                strArr = strArr2;
                str = str2;
                r382 = r28;
            } else {
                r34 = r24;
                r362 = r26;
                strArr = strArr2;
                str = str2;
                r382 = r28;
                if (attributeValue.startsWith(StringConstant.HASH)) {
                    str = attributeValue.substring(1);
                    r34 = r24;
                    r362 = r26;
                    strArr = strArr2;
                    r382 = r28;
                }
            }
            i++;
            r24 = r34;
            r26 = r362;
            strArr2 = strArr;
            str2 = str;
            r0 = r382;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0271, code lost:
        if (r0.equals("linethrough") == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0371, code lost:
        if (r0.equals(com.razorpay.AnalyticsConstants.START) == false) goto L82;
     */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p193e.p1577m.p1578a.p1596c.p1622m1.p1628r.C24614d m4847r(org.xmlpull.v1.XmlPullParser r5, p193e.p1577m.p1578a.p1596c.p1622m1.p1628r.C24614d r6) {
        /*
            Method dump skipped, instructions count: 1151
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1622m1.p1628r.C24608a.m4847r(org.xmlpull.v1.XmlPullParser, e.m.a.c.m1.r.d):e.m.a.c.m1.r.d");
    }

    /* renamed from: s */
    public final String[] m4846s(String str) {
        String[] strArr;
        String trim = str.trim();
        if (trim.isEmpty()) {
            strArr = new String[0];
        } else {
            int i = C24773d0.f69427a;
            strArr = trim.split("\\s+", -1);
        }
        return strArr;
    }

    /* renamed from: u */
    public final C24611c m4844u(XmlPullParser xmlPullParser) {
        String m2392Y = C26232y.m2392Y(xmlPullParser, "extent");
        if (m2392Y == null) {
            return null;
        }
        Matcher matcher = f68882s.matcher(m2392Y);
        if (!matcher.matches()) {
            return null;
        }
        try {
            return new C24611c(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)));
        } catch (NumberFormatException e) {
            return null;
        }
    }
}
