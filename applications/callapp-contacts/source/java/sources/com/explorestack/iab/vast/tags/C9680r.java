package com.explorestack.iab.vast.tags;

import android.graphics.Color;
import android.text.TextUtils;
import com.explorestack.iab.utils.C9593h;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.vast.VastLog;
import java.io.IOException;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Locale;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: com.explorestack.iab.vast.tags.r */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/r.class */
public class C9680r implements Serializable {

    /* renamed from: a */
    private String f32841a;

    /* renamed from: b */
    private HashMap<String, String> f32842b;

    public C9680r() {
    }

    public C9680r(XmlPullParser xmlPullParser) throws Exception {
        m23843c(xmlPullParser);
    }

    /* renamed from: a */
    private static HashMap<String, String> m23850a(C9680r c9680r, XmlPullParser xmlPullParser) {
        if (xmlPullParser.getAttributeCount() > 0) {
            HashMap<String, String> hashMap = new HashMap<>();
            for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
                if (c9680r.m23849a(xmlPullParser.getAttributeName(i))) {
                    hashMap.put(xmlPullParser.getAttributeName(i), xmlPullParser.getAttributeValue(i));
                }
            }
            return hashMap;
        }
        return null;
    }

    /* renamed from: a */
    public static void m23846a(XmlPullParser xmlPullParser, C9593h c9593h) {
        for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
            String attributeName = xmlPullParser.getAttributeName(i);
            String attributeValue = xmlPullParser.getAttributeValue(i);
            if (!TextUtils.isEmpty(attributeValue)) {
                try {
                    if ("stroke".equals(attributeName)) {
                        c9593h.f32583a = m23835h(attributeValue);
                    } else if (Reporting.EventType.FILL.equals(attributeName)) {
                        c9593h.f32584b = m23835h(attributeValue);
                    } else if ("outlined".equals(attributeName)) {
                        c9593h.f32585c = Boolean.valueOf(m23845b(attributeValue));
                    } else if ("visible".equals(attributeName)) {
                        c9593h.f32586d = Boolean.valueOf(m23845b(attributeValue));
                    } else if ("x".equals(attributeName)) {
                        c9593h.f32587e = m23834i(attributeValue);
                    } else if ("y".equals(attributeName)) {
                        c9593h.f32588f = m23833j(attributeValue);
                    } else if ("style".equals(attributeName)) {
                        c9593h.f32589g = attributeValue;
                    } else if ("opacity".equals(attributeName)) {
                        c9593h.f32590h = Float.valueOf(Float.parseFloat(attributeValue));
                    } else if ("hideafter".equals(attributeName)) {
                        c9593h.f32591i = Float.valueOf(Float.parseFloat(attributeValue));
                    } else if ("padding".equals(attributeName)) {
                        c9593h.m24065a(attributeValue);
                    } else if ("margin".equals(attributeName)) {
                        c9593h.m24059b(attributeValue);
                    } else if ("strokewidth".equals(attributeName)) {
                        c9593h.f32593k = Utils.m24102b(attributeValue);
                    } else if ("width".equals(attributeName)) {
                        c9593h.m24066a(Utils.m24102b(attributeValue));
                    } else if ("height".equals(attributeName)) {
                        c9593h.m24060b(Utils.m24102b(attributeValue));
                    } else if ("fontstyle".equals(attributeName)) {
                        c9593h.f32596n = Integer.valueOf(Integer.parseInt(attributeValue));
                    } else if ("fontsize".equals(attributeName)) {
                        c9593h.f32597o = Utils.m24102b(attributeValue);
                    }
                } catch (Throwable th) {
                    VastLog.m24016a("VastXmlTag", th);
                }
            }
        }
        try {
            c9593h.f32592j = m23841d(xmlPullParser);
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            xmlPullParser.require(3, null, xmlPullParser.getName());
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }

    /* renamed from: a */
    private boolean m23849a(String str) {
        String[] mo23829w_ = mo23829w_();
        if (mo23829w_ == null || mo23829w_.length <= 0) {
            return false;
        }
        for (String str2 : mo23829w_) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m23848a(String str, String str2) {
        return str != null && str.equalsIgnoreCase(str2);
    }

    /* renamed from: b */
    private static boolean m23845b(String str) {
        if (str != null) {
            return str.equalsIgnoreCase("true") || str.equalsIgnoreCase("1");
        }
        return false;
    }

    /* renamed from: d */
    public static String m23841d(XmlPullParser xmlPullParser) throws Exception {
        if (xmlPullParser.next() == 4) {
            String text = xmlPullParser.getText();
            String str = text;
            if (!TextUtils.isEmpty(text)) {
                str = text.trim();
            }
            xmlPullParser.nextTag();
            return str;
        }
        return null;
    }

    /* renamed from: e */
    public static boolean m23839e(XmlPullParser xmlPullParser) throws Exception {
        return m23845b(m23841d(xmlPullParser));
    }

    /* renamed from: f */
    public static int m23838f(String str) {
        if (str != null) {
            String[] split = str.split(":");
            if (split.length <= 1) {
                return -1;
            }
            try {
                int parseInt = Integer.parseInt(split[0]);
                return (parseInt * 60) + Integer.parseInt(split[1]);
            } catch (Exception e) {
                VastLog.m24016a("VastXmlTag", e);
                return -1;
            }
        }
        return -1;
    }

    /* renamed from: f */
    public static void m23837f(XmlPullParser xmlPullParser) throws Exception {
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

    /* renamed from: g */
    public static int m23836g(String str) {
        if (str != null) {
            int indexOf = str.indexOf(".");
            String str2 = str;
            if (indexOf > 0) {
                str2 = str.substring(0, indexOf);
            }
            String[] split = str2.split(":");
            if (split.length <= 2) {
                return -1;
            }
            try {
                int parseInt = Integer.parseInt(split[0]);
                int parseInt2 = Integer.parseInt(split[1]);
                return (parseInt * 60 * 60) + (parseInt2 * 60) + Integer.parseInt(split[2]);
            } catch (Exception e) {
                VastLog.m24016a("VastXmlTag", e);
                return -1;
            }
        }
        return -1;
    }

    /* renamed from: h */
    public static Integer m23835h(String str) {
        try {
            return Integer.valueOf(Color.parseColor(str));
        } catch (Exception e) {
            VastLog.m24018a("VastXmlTag", e.getMessage());
            return null;
        }
    }

    /* renamed from: i */
    public static Integer m23834i(String str) {
        if (!TextUtils.isEmpty(str)) {
            String lowerCase = str.toLowerCase();
            lowerCase.hashCode();
            boolean z = true;
            switch (lowerCase.hashCode()) {
                case -1364013995:
                    if (lowerCase.equals("center")) {
                        z = false;
                        break;
                    }
                    break;
                case 3317767:
                    if (lowerCase.equals("left")) {
                        z = true;
                        break;
                    }
                    break;
                case 108511772:
                    if (lowerCase.equals("right")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    return 1;
                case true:
                    return 3;
                case true:
                    return 5;
                default:
                    return null;
            }
        }
        return null;
    }

    /* renamed from: j */
    public static Integer m23833j(String str) {
        if (!TextUtils.isEmpty(str)) {
            String lowerCase = str.toLowerCase();
            lowerCase.hashCode();
            boolean z = true;
            switch (lowerCase.hashCode()) {
                case -1383228885:
                    if (lowerCase.equals("bottom")) {
                        z = false;
                        break;
                    }
                    break;
                case -1364013995:
                    if (lowerCase.equals("center")) {
                        z = true;
                        break;
                    }
                    break;
                case 115029:
                    if (lowerCase.equals("top")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    return 80;
                case true:
                    return 16;
                case true:
                    return 48;
                default:
                    return null;
            }
        }
        return null;
    }

    /* renamed from: k */
    private static boolean m23832k(String str) {
        if (str != null) {
            return str.equalsIgnoreCase("false") || str.equalsIgnoreCase("0");
        }
        return false;
    }

    /* renamed from: a */
    protected void mo23847a(XmlPullParser xmlPullParser) throws Exception {
    }

    /* renamed from: c */
    public final String m23844c(String str) {
        HashMap<String, String> hashMap = this.f32842b;
        if (hashMap != null && !hashMap.isEmpty()) {
            return this.f32842b.get(str);
        }
        return null;
    }

    /* renamed from: c */
    public final void m23843c(XmlPullParser xmlPullParser) throws Exception {
        this.f32842b = m23850a(this, xmlPullParser);
        if (mo23830y_()) {
            this.f32841a = m23841d(xmlPullParser);
        }
        mo23847a(xmlPullParser);
    }

    /* renamed from: d */
    public final int m23842d(String str) {
        String m23844c = m23844c(str);
        int i = -1;
        if (TextUtils.isEmpty(m23844c)) {
            VastLog.m24015d("VastXmlTag", String.format(Locale.ENGLISH, "Error parse attribute value - %s, by name - %s", m23844c, str));
            return -1;
        }
        try {
            i = Integer.parseInt(m23844c);
        } catch (Exception e) {
            VastLog.m24018a("VastXmlTag", String.format(Locale.ENGLISH, "Error parse attribute value - %s, by name - %s", m23844c, str));
        }
        return i;
    }

    /* renamed from: e */
    public final boolean m23840e(String str) {
        String m23844c = m23844c(str);
        return m23845b(m23844c) || !m23832k(m23844c);
    }

    public final String getText() {
        return this.f32841a;
    }

    /* renamed from: w_ */
    public String[] mo23829w_() {
        return new String[0];
    }

    /* renamed from: x_ */
    public boolean mo23831x_() {
        return true;
    }

    /* renamed from: y_ */
    public boolean mo23830y_() {
        return false;
    }
}
