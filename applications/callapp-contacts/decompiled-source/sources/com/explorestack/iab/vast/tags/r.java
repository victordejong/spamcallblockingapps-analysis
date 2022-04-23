package com.explorestack.iab.vast.tags;

import android.graphics.Color;
import android.text.TextUtils;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.utils.h;
import com.explorestack.iab.vast.VastLog;
import java.io.IOException;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Locale;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/r.class */
public class r implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f19320a;

    /* renamed from: b  reason: collision with root package name */
    private HashMap<String, String> f19321b;

    public r() {
    }

    public r(XmlPullParser xmlPullParser) throws Exception {
        c(xmlPullParser);
    }

    private static HashMap<String, String> a(r rVar, XmlPullParser xmlPullParser) {
        if (xmlPullParser.getAttributeCount() <= 0) {
            return null;
        }
        HashMap<String, String> hashMap = new HashMap<>();
        for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
            if (rVar.a(xmlPullParser.getAttributeName(i))) {
                hashMap.put(xmlPullParser.getAttributeName(i), xmlPullParser.getAttributeValue(i));
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(XmlPullParser xmlPullParser, h hVar) {
        for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
            String attributeName = xmlPullParser.getAttributeName(i);
            String attributeValue = xmlPullParser.getAttributeValue(i);
            if (!TextUtils.isEmpty(attributeValue)) {
                try {
                    if ("stroke".equals(attributeName)) {
                        hVar.f19184a = h(attributeValue);
                    } else if (Reporting.EventType.FILL.equals(attributeName)) {
                        hVar.f19185b = h(attributeValue);
                    } else if ("outlined".equals(attributeName)) {
                        hVar.f19186c = Boolean.valueOf(b(attributeValue));
                    } else if ("visible".equals(attributeName)) {
                        hVar.f19187d = Boolean.valueOf(b(attributeValue));
                    } else if ("x".equals(attributeName)) {
                        hVar.e = i(attributeValue);
                    } else if ("y".equals(attributeName)) {
                        hVar.f = j(attributeValue);
                    } else if ("style".equals(attributeName)) {
                        hVar.g = attributeValue;
                    } else if ("opacity".equals(attributeName)) {
                        hVar.h = Float.valueOf(Float.parseFloat(attributeValue));
                    } else if ("hideafter".equals(attributeName)) {
                        hVar.i = Float.valueOf(Float.parseFloat(attributeValue));
                    } else if ("padding".equals(attributeName)) {
                        hVar.a(attributeValue);
                    } else if ("margin".equals(attributeName)) {
                        hVar.b(attributeValue);
                    } else if ("strokewidth".equals(attributeName)) {
                        hVar.k = Utils.b(attributeValue);
                    } else if ("width".equals(attributeName)) {
                        hVar.a(Utils.b(attributeValue));
                    } else if ("height".equals(attributeName)) {
                        hVar.b(Utils.b(attributeValue));
                    } else if ("fontstyle".equals(attributeName)) {
                        hVar.n = Integer.valueOf(Integer.parseInt(attributeValue));
                    } else if ("fontsize".equals(attributeName)) {
                        hVar.o = Utils.b(attributeValue);
                    }
                } catch (Throwable th) {
                    VastLog.a("VastXmlTag", th);
                }
            }
        }
        try {
            hVar.j = d(xmlPullParser);
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

    private boolean a(String str) {
        String[] w_ = w_();
        if (w_ == null || w_.length <= 0) {
            return false;
        }
        for (String str2 : w_) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str, String str2) {
        return str != null && str.equalsIgnoreCase(str2);
    }

    private static boolean b(String str) {
        if (str != null) {
            return str.equalsIgnoreCase("true") || str.equalsIgnoreCase("1");
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String d(XmlPullParser xmlPullParser) throws Exception {
        if (xmlPullParser.next() != 4) {
            return null;
        }
        String text = xmlPullParser.getText();
        String str = text;
        if (!TextUtils.isEmpty(text)) {
            str = text.trim();
        }
        xmlPullParser.nextTag();
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e(XmlPullParser xmlPullParser) throws Exception {
        return b(d(xmlPullParser));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(String str) {
        if (str == null) {
            return -1;
        }
        String[] split = str.split(":");
        if (split.length <= 1) {
            return -1;
        }
        try {
            int parseInt = Integer.parseInt(split[0]);
            return (parseInt * 60) + Integer.parseInt(split[1]);
        } catch (Exception e) {
            VastLog.a("VastXmlTag", e);
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(XmlPullParser xmlPullParser) throws Exception {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(String str) {
        if (str == null) {
            return -1;
        }
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
            VastLog.a("VastXmlTag", e);
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Integer h(String str) {
        try {
            return Integer.valueOf(Color.parseColor(str));
        } catch (Exception e) {
            VastLog.a("VastXmlTag", e.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Integer i(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String lowerCase = str.toLowerCase();
        lowerCase.hashCode();
        char c2 = 65535;
        switch (lowerCase.hashCode()) {
            case -1364013995:
                if (lowerCase.equals("center")) {
                    c2 = 0;
                    break;
                }
                break;
            case 3317767:
                if (lowerCase.equals("left")) {
                    c2 = 1;
                    break;
                }
                break;
            case 108511772:
                if (lowerCase.equals("right")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 1;
            case 1:
                return 3;
            case 2:
                return 5;
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Integer j(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String lowerCase = str.toLowerCase();
        lowerCase.hashCode();
        char c2 = 65535;
        switch (lowerCase.hashCode()) {
            case -1383228885:
                if (lowerCase.equals("bottom")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1364013995:
                if (lowerCase.equals("center")) {
                    c2 = 1;
                    break;
                }
                break;
            case 115029:
                if (lowerCase.equals("top")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 80;
            case 1:
                return 16;
            case 2:
                return 48;
            default:
                return null;
        }
    }

    private static boolean k(String str) {
        if (str != null) {
            return str.equalsIgnoreCase("false") || str.equalsIgnoreCase("0");
        }
        return false;
    }

    protected void a(XmlPullParser xmlPullParser) throws Exception {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String c(String str) {
        HashMap<String, String> hashMap = this.f19321b;
        if (hashMap != null && !hashMap.isEmpty()) {
            return this.f19321b.get(str);
        }
        return null;
    }

    public final void c(XmlPullParser xmlPullParser) throws Exception {
        this.f19321b = a(this, xmlPullParser);
        if (y_()) {
            this.f19320a = d(xmlPullParser);
        }
        a(xmlPullParser);
    }

    public final int d(String str) {
        String c2 = c(str);
        int i = -1;
        if (TextUtils.isEmpty(c2)) {
            VastLog.d("VastXmlTag", String.format(Locale.ENGLISH, "Error parse attribute value - %s, by name - %s", c2, str));
            return -1;
        }
        try {
            i = Integer.parseInt(c2);
        } catch (Exception e) {
            VastLog.a("VastXmlTag", String.format(Locale.ENGLISH, "Error parse attribute value - %s, by name - %s", c2, str));
        }
        return i;
    }

    public final boolean e(String str) {
        String c2 = c(str);
        return b(c2) || !k(c2);
    }

    public final String getText() {
        return this.f19320a;
    }

    public String[] w_() {
        return new String[0];
    }

    public boolean x_() {
        return true;
    }

    public boolean y_() {
        return false;
    }
}
