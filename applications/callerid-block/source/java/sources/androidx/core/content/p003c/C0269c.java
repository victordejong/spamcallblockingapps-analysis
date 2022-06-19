package androidx.core.content.p003c;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import d.h.d;
import d.h.j.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.core.content.c.c */
/* loaded from: classes-dex2jar.jar:androidx/core/content/c/c.class */
public class C0269c {

    /* renamed from: androidx.core.content.c.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/c/c$a.class */
    public interface AbstractC0270a {
    }

    /* renamed from: androidx.core.content.c.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/c/c$c.class */
    public static final class C0271c {

        /* renamed from: a */
        private final String f1673a;

        /* renamed from: b */
        private int f1674b;

        /* renamed from: c */
        private boolean f1675c;

        /* renamed from: d */
        private String f1676d;

        /* renamed from: e */
        private int f1677e;

        /* renamed from: f */
        private int f1678f;

        public C0271c(String str, int i, boolean z, String str2, int i2, int i3) {
            this.f1673a = str;
            this.f1674b = i;
            this.f1675c = z;
            this.f1676d = str2;
            this.f1677e = i2;
            this.f1678f = i3;
        }

        /* renamed from: a */
        public String m13516a() {
            return this.f1673a;
        }

        /* renamed from: b */
        public int m13515b() {
            return this.f1678f;
        }

        /* renamed from: c */
        public int m13514c() {
            return this.f1677e;
        }

        /* renamed from: d */
        public String m13513d() {
            return this.f1676d;
        }

        /* renamed from: e */
        public int m13512e() {
            return this.f1674b;
        }

        /* renamed from: f */
        public boolean m13511f() {
            return this.f1675c;
        }
    }

    /* renamed from: a */
    private static int m13524a(TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return typedArray.getType(i);
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i, typedValue);
        return typedValue.type;
    }

    /* renamed from: b */
    public static AbstractC0270a m13523b(XmlPullParser xmlPullParser, Resources resources) {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return m13521d(xmlPullParser, resources);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: c */
    public static List<List<byte[]>> m13522c(Resources resources, int i) {
        if (i == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (obtainTypedArray.length() == 0) {
                List<List<byte[]>> emptyList = Collections.emptyList();
                obtainTypedArray.recycle();
                return emptyList;
            }
            ArrayList arrayList = new ArrayList();
            if (m13524a(obtainTypedArray, 0) == 1) {
                for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                    int resourceId = obtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        arrayList.add(m13517h(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(m13517h(resources.getStringArray(i)));
            }
            obtainTypedArray.recycle();
            return arrayList;
        } catch (Throwable th) {
            obtainTypedArray.recycle();
            throw th;
        }
    }

    /* renamed from: d */
    private static AbstractC0270a m13521d(XmlPullParser xmlPullParser, Resources resources) {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return m13520e(xmlPullParser, resources);
        }
        m13518g(xmlPullParser);
        return null;
    }

    /* renamed from: e */
    private static AbstractC0270a m13520e(XmlPullParser xmlPullParser, Resources resources) {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), d.FontFamily);
        String string = obtainAttributes.getString(d.FontFamily_fontProviderAuthority);
        String string2 = obtainAttributes.getString(d.FontFamily_fontProviderPackage);
        String string3 = obtainAttributes.getString(d.FontFamily_fontProviderQuery);
        int resourceId = obtainAttributes.getResourceId(d.FontFamily_fontProviderCerts, 0);
        int integer = obtainAttributes.getInteger(d.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = obtainAttributes.getInteger(d.FontFamily_fontProviderFetchTimeout, 500);
        obtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                m13518g(xmlPullParser);
            }
            return new d(new a(string, string2, string3, m13522c(resources, resourceId)), integer, integer2);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList.add(m13519f(xmlPullParser, resources));
                } else {
                    m13518g(xmlPullParser);
                }
            }
        }
        if (!arrayList.isEmpty()) {
            return new b((C0271c[]) arrayList.toArray(new C0271c[arrayList.size()]));
        }
        return null;
    }

    /* renamed from: f */
    private static C0271c m13519f(XmlPullParser xmlPullParser, Resources resources) {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), d.FontFamilyFont);
        int i = d.FontFamilyFont_fontWeight;
        if (!obtainAttributes.hasValue(i)) {
            i = d.FontFamilyFont_android_fontWeight;
        }
        int i2 = obtainAttributes.getInt(i, 400);
        int i3 = d.FontFamilyFont_fontStyle;
        if (!obtainAttributes.hasValue(i3)) {
            i3 = d.FontFamilyFont_android_fontStyle;
        }
        boolean z = 1 == obtainAttributes.getInt(i3, 0);
        int i4 = d.FontFamilyFont_ttcIndex;
        if (!obtainAttributes.hasValue(i4)) {
            i4 = d.FontFamilyFont_android_ttcIndex;
        }
        int i5 = d.FontFamilyFont_fontVariationSettings;
        if (!obtainAttributes.hasValue(i5)) {
            i5 = d.FontFamilyFont_android_fontVariationSettings;
        }
        String string = obtainAttributes.getString(i5);
        int i6 = obtainAttributes.getInt(i4, 0);
        int i7 = d.FontFamilyFont_font;
        if (!obtainAttributes.hasValue(i7)) {
            i7 = d.FontFamilyFont_android_font;
        }
        int resourceId = obtainAttributes.getResourceId(i7, 0);
        String string2 = obtainAttributes.getString(i7);
        obtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            m13518g(xmlPullParser);
        }
        return new C0271c(string2, i2, z, string, i6, resourceId);
    }

    /* renamed from: g */
    private static void m13518g(XmlPullParser xmlPullParser) {
        int i = 1;
        while (i > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }

    /* renamed from: h */
    private static List<byte[]> m13517h(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }
}
