package androidx.media2.exoplayer.external.util;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.media2.exoplayer.external.util.ae */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/ae.class */
public final class C1998ae {
    private C1998ae() {
    }

    /* renamed from: a */
    private static boolean m41612a(XmlPullParser xmlPullParser) throws XmlPullParserException {
        return xmlPullParser.getEventType() == 3;
    }

    /* renamed from: a */
    public static boolean m41611a(XmlPullParser xmlPullParser, String str) throws XmlPullParserException {
        return m41612a(xmlPullParser) && xmlPullParser.getName().equals(str);
    }

    /* renamed from: b */
    private static boolean m41610b(XmlPullParser xmlPullParser) throws XmlPullParserException {
        return xmlPullParser.getEventType() == 2;
    }

    /* renamed from: b */
    public static boolean m41609b(XmlPullParser xmlPullParser, String str) throws XmlPullParserException {
        return m41610b(xmlPullParser) && xmlPullParser.getName().equals(str);
    }

    /* renamed from: c */
    public static String m41608c(XmlPullParser xmlPullParser, String str) {
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            if (xmlPullParser.getAttributeName(i).equals(str)) {
                return xmlPullParser.getAttributeValue(i);
            }
        }
        return null;
    }
}
