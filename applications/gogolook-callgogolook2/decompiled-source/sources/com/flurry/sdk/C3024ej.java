package com.flurry.sdk;

import android.text.TextUtils;
import android.util.Xml;
import com.flurry.sdk.C3021eh;
import com.flurry.sdk.C3031ep;
import com.flurry.sdk.C3033eq;
import com.flurry.sdk.C3035er;
import com.flurry.sdk.C3037es;
import com.flurry.sdk.C3041eu;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: com.flurry.sdk.ej */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ej.class */
public final class C3024ej {

    /* renamed from: a */
    public static final String f4712a = null;

    /* renamed from: b */
    public static EnumC3025a f4713b = EnumC3025a.PARSING_UNKNOWN;

    /* renamed from: com.flurry.sdk.ej$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ej$a.class */
    public enum EnumC3025a {
        PARSING_UNKNOWN,
        PARSING_STARTED,
        PARSING_COMPLETE,
        PARSING_ERROR
    }

    /* renamed from: a */
    public static C3021eh m33253a(String str) {
        StringReader stringReader;
        Throwable th;
        StringReader stringReader2;
        Exception e;
        boolean isEmpty = TextUtils.isEmpty(str);
        C3021eh ehVar = null;
        if (isEmpty) {
            return null;
        }
        m33254a(EnumC3025a.PARSING_UNKNOWN);
        try {
            stringReader2 = new StringReader(str);
            stringReader = stringReader2;
            try {
                try {
                    XmlPullParser newPullParser = Xml.newPullParser();
                    newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
                    newPullParser.setInput(stringReader2);
                    newPullParser.nextTag();
                    C3021eh a = m33249a(newPullParser, new C3021eh.C3022a(), new ArrayList());
                    stringReader2 = stringReader2;
                    ehVar = a;
                    if (a != null) {
                        stringReader2 = stringReader2;
                        ehVar = a;
                        if (a.f4707c) {
                            stringReader2 = stringReader2;
                            ehVar = a;
                            if (a.m33276a() == null) {
                                C3021eh.C3022a aVar = new C3021eh.C3022a();
                                aVar.m33271a();
                                ehVar = aVar.f4709a;
                                stringReader2 = stringReader2;
                            }
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    if (f4713b.equals(EnumC3025a.PARSING_ERROR)) {
                        StringBuilder sb = new StringBuilder("Error parsing VAST XML: ");
                        sb.append(str);
                        C3356jq.m32614a(3, "VASTXmlParser", sb.toString(), e);
                        C3021eh.C3022a aVar2 = new C3021eh.C3022a();
                        aVar2.m33271a();
                        ehVar = aVar2.f4709a;
                    } else {
                        C3356jq.m32615a(3, "VASTXmlParser", "Not a VAST Ad");
                    }
                    C3445la.m32465a(stringReader2);
                    return ehVar;
                }
            } catch (Throwable th2) {
                th = th2;
                C3445la.m32465a(stringReader);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            stringReader2 = null;
        } catch (Throwable th3) {
            th = th3;
            stringReader = null;
        }
        C3445la.m32465a(stringReader2);
        return ehVar;
    }

    /* renamed from: a */
    public static C3021eh m33249a(XmlPullParser xmlPullParser, C3021eh.C3022a aVar, List<C3031ep> list) throws XmlPullParserException, IOException, IllegalArgumentException {
        xmlPullParser.require(2, f4712a, "VAST");
        m33254a(EnumC3025a.PARSING_STARTED);
        int c = m33240c(xmlPullParser);
        if (c > 0 && c <= 3) {
            aVar.m33270a(c);
            while (xmlPullParser.next() != 3) {
                if (xmlPullParser.getEventType() == 2) {
                    if (xmlPullParser.getName().equals("Ad")) {
                        list.add(m33248a(xmlPullParser, new C3031ep.C3032a()));
                    } else {
                        m33242b(xmlPullParser);
                    }
                }
            }
            aVar.m33269a(list);
            aVar.m33268a(m33252a(list));
            if (!m33252a(list)) {
                m33254a(EnumC3025a.PARSING_UNKNOWN);
            } else {
                m33254a(EnumC3025a.PARSING_COMPLETE);
            }
            return aVar.f4709a;
        }
        m33254a(EnumC3025a.PARSING_ERROR);
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public static C3031ep m33248a(XmlPullParser xmlPullParser, C3031ep.C3032a aVar) throws IOException, XmlPullParserException {
        xmlPullParser.require(2, f4712a, "Ad");
        aVar.m33235a(xmlPullParser.getAttributeValue(f4712a, "id"));
        try {
            String attributeValue = xmlPullParser.getAttributeValue(f4712a, "sequence");
            if (!TextUtils.isEmpty(attributeValue)) {
                aVar.m33237a(Integer.parseInt(attributeValue));
            }
        } catch (NumberFormatException e) {
            C3356jq.m32615a(3, "VASTXmlParser", "Could not identify Ad Sequence");
        }
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                char c = 65535;
                int hashCode = name.hashCode();
                if (hashCode != -2101083431) {
                    if (hashCode == -1034806157 && name.equals("Wrapper")) {
                        c = 1;
                    }
                } else if (name.equals("InLine")) {
                    c = 0;
                }
                if (c == 0) {
                    aVar.m33236a(m33247a(xmlPullParser, new C3035er.C3036a(), new C3033eq.C3034a(), new ArrayList(), new ArrayList()));
                } else if (c != 1) {
                    m33242b(xmlPullParser);
                } else {
                    aVar.m33236a(m33246a(xmlPullParser, new C3035er.C3036a(), new C3033eq.C3034a(), new ArrayList(), new ArrayList(), new ArrayList()));
                }
            }
        }
        return aVar.f4759a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static C3035er m33247a(XmlPullParser xmlPullParser, C3035er.C3036a aVar, C3033eq.C3034a aVar2, List<String> list, List<String> list2) throws IOException, XmlPullParserException {
        char c;
        aVar.m33232a(EnumC3026ek.InLine);
        xmlPullParser.require(2, f4712a, "InLine");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                switch (name.hashCode()) {
                    case -1692490108:
                        if (name.equals("Creatives")) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    case -1633884078:
                        if (name.equals("AdSystem")) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    case 67232232:
                        if (name.equals("Error")) {
                            c = 4;
                            break;
                        }
                        c = 65535;
                        break;
                    case 501930965:
                        if (name.equals("AdTitle")) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    case 2114088489:
                        if (name.equals("Impression")) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                if (c == 0) {
                    ArrayList arrayList = new ArrayList();
                    m33243a(xmlPullParser, arrayList);
                    aVar.m33226d(arrayList);
                } else if (c == 1) {
                    aVar2.m33234a(xmlPullParser.getAttributeValue(f4712a, "version"));
                    aVar2.m33233b(m33250a(xmlPullParser));
                    aVar.m33231a(aVar2.f4762a);
                } else if (c == 2) {
                    aVar.m33230a(m33250a(xmlPullParser));
                } else if (c == 3) {
                    m33251a(list, m33250a(xmlPullParser));
                } else if (c != 4) {
                    m33242b(xmlPullParser);
                } else {
                    m33251a(list2, m33250a(xmlPullParser));
                }
            }
        }
        aVar.m33228b(list);
        aVar.m33227c(list2);
        return aVar.f4770a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static C3035er m33246a(XmlPullParser xmlPullParser, C3035er.C3036a aVar, C3033eq.C3034a aVar2, List<String> list, List<String> list2, List<String> list3) throws IOException, XmlPullParserException {
        char c;
        aVar.m33232a(EnumC3026ek.Wrapper);
        xmlPullParser.require(2, f4712a, "Wrapper");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                switch (name.hashCode()) {
                    case -1692490108:
                        if (name.equals("Creatives")) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    case -1633884078:
                        if (name.equals("AdSystem")) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    case -587420703:
                        if (name.equals("VASTAdTagURI")) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    case 67232232:
                        if (name.equals("Error")) {
                            c = 4;
                            break;
                        }
                        c = 65535;
                        break;
                    case 2114088489:
                        if (name.equals("Impression")) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                if (c == 0) {
                    ArrayList arrayList = new ArrayList();
                    m33243a(xmlPullParser, arrayList);
                    aVar.m33226d(arrayList);
                } else if (c == 1) {
                    aVar2.m33234a(xmlPullParser.getAttributeValue(f4712a, "version"));
                    aVar2.m33233b(m33250a(xmlPullParser));
                    aVar.m33231a(aVar2.f4762a);
                } else if (c == 2) {
                    m33251a(list, m33250a(xmlPullParser));
                } else if (c == 3) {
                    m33251a(list2, m33250a(xmlPullParser));
                } else if (c != 4) {
                    m33242b(xmlPullParser);
                } else {
                    m33251a(list3, m33250a(xmlPullParser));
                }
            }
        }
        aVar.m33229a(list);
        aVar.m33228b(list2);
        aVar.m33227c(list3);
        return aVar.f4770a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0227 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01f6 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.flurry.sdk.C3037es m33245a(org.xmlpull.v1.XmlPullParser r5, com.flurry.sdk.C3037es.C3038a r6) throws java.io.IOException, org.xmlpull.v1.XmlPullParserException {
        /*
            Method dump skipped, instructions count: 784
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C3024ej.m33245a(org.xmlpull.v1.XmlPullParser, com.flurry.sdk.es$a):com.flurry.sdk.es");
    }

    /* renamed from: a */
    public static C3041eu m33244a(XmlPullParser xmlPullParser, C3041eu.C3042a aVar) throws IOException, XmlPullParserException {
        xmlPullParser.require(2, f4712a, "MediaFile");
        aVar.f4792a.f4782a = xmlPullParser.getAttributeValue(f4712a, "id");
        aVar.f4792a.f4791j = xmlPullParser.getAttributeValue(f4712a, "type");
        aVar.f4792a.f4783b = xmlPullParser.getAttributeValue(f4712a, "apiFramework");
        aVar.f4792a.f4786e = EnumC3028em.m33239a(xmlPullParser.getAttributeValue(f4712a, "delivery"));
        try {
            aVar.f4792a.f4787f = Integer.parseInt(xmlPullParser.getAttributeValue(f4712a, "height"));
        } catch (NumberFormatException e) {
            C3356jq.m32615a(3, "VASTXmlParser", "Could not identify MediaFile height");
        }
        try {
            aVar.f4792a.f4788g = Integer.parseInt(xmlPullParser.getAttributeValue(f4712a, "width"));
        } catch (NumberFormatException e2) {
            C3356jq.m32615a(3, "VASTXmlParser", "Could not identify MediaFile width");
        }
        try {
            aVar.f4792a.f4785d = Integer.parseInt(xmlPullParser.getAttributeValue(f4712a, "bitrate"));
        } catch (NumberFormatException e3) {
            C3356jq.m32615a(3, "VASTXmlParser", "Could not identify MediaFile bitRate");
        }
        aVar.f4792a.f4790i = Boolean.parseBoolean(xmlPullParser.getAttributeValue(f4712a, "scalable"));
        aVar.f4792a.f4789h = Boolean.parseBoolean(xmlPullParser.getAttributeValue(f4712a, "maintainAspectRatio"));
        String a = m33250a(xmlPullParser);
        C3041eu euVar = aVar.f4792a;
        euVar.f4784c = a;
        return euVar;
    }

    /* renamed from: a */
    public static String m33250a(XmlPullParser xmlPullParser) throws IOException, XmlPullParserException {
        String str;
        if (xmlPullParser.next() == 4) {
            str = xmlPullParser.getText().trim();
            xmlPullParser.nextTag();
        } else {
            str = null;
        }
        return str;
    }

    /* renamed from: a */
    public static List<C3037es> m33243a(XmlPullParser xmlPullParser, List<C3037es> list) throws IOException, XmlPullParserException {
        xmlPullParser.require(2, f4712a, "Creatives");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Creative")) {
                    list.add(m33245a(xmlPullParser, new C3037es.C3038a()));
                } else {
                    m33242b(xmlPullParser);
                }
            }
        }
        return list;
    }

    /* renamed from: a */
    public static void m33254a(EnumC3025a aVar) {
        C3356jq.m32615a(3, "VASTXmlParser", "Setting VAST parse state as: " + aVar.name());
        f4713b = aVar;
    }

    /* renamed from: a */
    public static void m33251a(List<String> list, String str) {
        if (list != null && !TextUtils.isEmpty(str)) {
            list.add(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0020  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m33252a(java.util.List<com.flurry.sdk.C3031ep> r3) {
        /*
            r0 = r3
            if (r0 == 0) goto L_0x0042
            r0 = r3
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0010
            goto L_0x0042
        L_0x0010:
            r0 = r3
            java.util.Iterator r0 = r0.iterator()
            r4 = r0
        L_0x0017:
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0040
            r0 = r4
            java.lang.Object r0 = r0.next()
            com.flurry.sdk.ep r0 = (com.flurry.sdk.C3031ep) r0
            com.flurry.sdk.er r0 = r0.f4758c
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x003e
            com.flurry.sdk.ek r0 = com.flurry.sdk.EnumC3026ek.InLine
            r1 = r3
            com.flurry.sdk.ek r1 = r1.f4763a
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0017
        L_0x003e:
            r0 = 0
            return r0
        L_0x0040:
            r0 = 1
            return r0
        L_0x0042:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C3024ej.m33252a(java.util.List):boolean");
    }

    /* renamed from: b */
    public static List<C3041eu> m33241b(XmlPullParser xmlPullParser, List<C3041eu> list) throws IOException, XmlPullParserException {
        xmlPullParser.require(2, f4712a, "MediaFiles");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("MediaFile")) {
                    list.add(m33244a(xmlPullParser, new C3041eu.C3042a()));
                } else {
                    m33242b(xmlPullParser);
                }
            }
        }
        return list;
    }

    /* renamed from: b */
    public static void m33242b(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (xmlPullParser.getEventType() == 2) {
            int i = 1;
            while (i != 0) {
                int next = xmlPullParser.next();
                if (next == 2) {
                    i++;
                } else if (next == 3) {
                    i--;
                }
            }
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: c */
    public static int m33240c(XmlPullParser xmlPullParser) {
        int i;
        String attributeValue = xmlPullParser.getAttributeValue(f4712a, "version");
        C3356jq.m32615a(3, "VASTXmlParser", "Version" + attributeValue);
        if (!TextUtils.isEmpty(attributeValue)) {
            String[] split = attributeValue.split("\\.");
            if (split.length > 0 && !TextUtils.isEmpty(split[0])) {
                try {
                    i = Integer.parseInt(split[0]);
                } catch (NumberFormatException e) {
                    C3356jq.m32615a(3, "VASTXmlParser", "Could not detect VAST version " + split[0]);
                }
                return i;
            }
        }
        i = Integer.MIN_VALUE;
        return i;
    }
}
