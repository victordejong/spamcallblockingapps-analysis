package com.google.android.exoplayer2.util;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/ag.class */
public final class ag {
    private ag() {
    }

    private static boolean a(XmlPullParser xmlPullParser) throws XmlPullParserException {
        return xmlPullParser.getEventType() == 3;
    }

    public static boolean a(XmlPullParser xmlPullParser, String str) throws XmlPullParserException {
        return a(xmlPullParser) && xmlPullParser.getName().equals(str);
    }

    private static boolean b(XmlPullParser xmlPullParser) throws XmlPullParserException {
        return xmlPullParser.getEventType() == 2;
    }

    public static boolean b(XmlPullParser xmlPullParser, String str) throws XmlPullParserException {
        return b(xmlPullParser) && xmlPullParser.getName().equals(str);
    }

    public static String c(XmlPullParser xmlPullParser, String str) {
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            if (xmlPullParser.getAttributeName(i).equals(str)) {
                return xmlPullParser.getAttributeValue(i);
            }
        }
        return null;
    }
}
