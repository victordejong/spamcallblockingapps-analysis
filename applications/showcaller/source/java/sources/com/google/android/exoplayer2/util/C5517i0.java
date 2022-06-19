package com.google.android.exoplayer2.util;

import org.xmlpull.v1.XmlPullParser;
/* renamed from: com.google.android.exoplayer2.util.i0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/i0.class */
public final class C5517i0 {
    /* renamed from: a */
    public static String m18791a(XmlPullParser xmlPullParser, String str) {
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            if (xmlPullParser.getAttributeName(i).equals(str)) {
                return xmlPullParser.getAttributeValue(i);
            }
        }
        return null;
    }

    /* renamed from: b */
    public static boolean m18790b(XmlPullParser xmlPullParser) {
        return xmlPullParser.getEventType() == 3;
    }

    /* renamed from: c */
    public static boolean m18789c(XmlPullParser xmlPullParser, String str) {
        return m18790b(xmlPullParser) && xmlPullParser.getName().equals(str);
    }

    /* renamed from: d */
    public static boolean m18788d(XmlPullParser xmlPullParser) {
        return xmlPullParser.getEventType() == 2;
    }

    /* renamed from: e */
    public static boolean m18787e(XmlPullParser xmlPullParser, String str) {
        return m18788d(xmlPullParser) && xmlPullParser.getName().equals(str);
    }
}
