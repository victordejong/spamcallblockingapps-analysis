package com.google.android.exoplayer2.util;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: com.google.android.exoplayer2.util.ag */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/ag.class */
public final class C11600ag {
    private C11600ag() {
    }

    /* renamed from: a */
    private static boolean m19918a(XmlPullParser xmlPullParser) throws XmlPullParserException {
        return xmlPullParser.getEventType() == 3;
    }

    /* renamed from: a */
    public static boolean m19917a(XmlPullParser xmlPullParser, String str) throws XmlPullParserException {
        return m19918a(xmlPullParser) && xmlPullParser.getName().equals(str);
    }

    /* renamed from: b */
    private static boolean m19916b(XmlPullParser xmlPullParser) throws XmlPullParserException {
        return xmlPullParser.getEventType() == 2;
    }

    /* renamed from: b */
    public static boolean m19915b(XmlPullParser xmlPullParser, String str) throws XmlPullParserException {
        return m19916b(xmlPullParser) && xmlPullParser.getName().equals(str);
    }

    /* renamed from: c */
    public static String m19914c(XmlPullParser xmlPullParser, String str) {
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            if (xmlPullParser.getAttributeName(i).equals(str)) {
                return xmlPullParser.getAttributeValue(i);
            }
        }
        return null;
    }
}
