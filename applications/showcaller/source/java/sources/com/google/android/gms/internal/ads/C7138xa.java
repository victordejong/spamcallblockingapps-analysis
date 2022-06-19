package com.google.android.gms.internal.ads;

import org.xmlpull.v1.XmlPullParser;
/* renamed from: com.google.android.gms.internal.ads.xa */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xa.class */
public final class C7138xa {
    /* renamed from: a */
    public static boolean m9305a(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getEventType() == 3 && xmlPullParser.getName().equals(str);
    }

    /* renamed from: b */
    public static boolean m9304b(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getEventType() == 2 && xmlPullParser.getName().equals(str);
    }

    /* renamed from: c */
    public static String m9303c(XmlPullParser xmlPullParser, String str) {
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            if (xmlPullParser.getAttributeName(i).equals(str)) {
                return xmlPullParser.getAttributeValue(i);
            }
        }
        return null;
    }
}
