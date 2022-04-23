package androidx.core.content.res;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import androidx.core.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/core/content/res/c.class */
public final class c {

    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/c$a.class */
    public interface a {
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/c$b.class */
    public static final class b implements a {

        /* renamed from: a  reason: collision with root package name */
        public final C0045c[] f1836a;

        public b(C0045c[] cVarArr) {
            this.f1836a = cVarArr;
        }
    }

    /* renamed from: androidx.core.content.res.c$c  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/c$c.class */
    public static final class C0045c {

        /* renamed from: a  reason: collision with root package name */
        public final String f1837a;

        /* renamed from: b  reason: collision with root package name */
        public int f1838b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f1839c;

        /* renamed from: d  reason: collision with root package name */
        public String f1840d;
        public int e;
        public int f;

        public C0045c(String str, int i, boolean z, String str2, int i2, int i3) {
            this.f1837a = str;
            this.f1838b = i;
            this.f1839c = z;
            this.f1840d = str2;
            this.e = i2;
            this.f = i3;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/c$d.class */
    public static final class d implements a {

        /* renamed from: a  reason: collision with root package name */
        public final androidx.core.c.a f1841a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1842b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1843c;

        public d(androidx.core.c.a aVar, int i, int i2) {
            this.f1841a = aVar;
            this.f1843c = i;
            this.f1842b = i2;
        }
    }

    private c() {
    }

    public static a a(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            xmlPullParser.require(2, null, "font-family");
            if (xmlPullParser.getName().equals("font-family")) {
                return b(xmlPullParser, resources);
            }
            a(xmlPullParser);
            return null;
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static List<List<byte[]>> a(Resources resources, int i) {
        int i2;
        if (i == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (Build.VERSION.SDK_INT >= 21) {
                i2 = obtainTypedArray.getType(0);
            } else {
                TypedValue typedValue = new TypedValue();
                obtainTypedArray.getValue(0, typedValue);
                i2 = typedValue.type;
            }
            if (i2 == 1) {
                for (int i3 = 0; i3 < obtainTypedArray.length(); i3++) {
                    int resourceId = obtainTypedArray.getResourceId(i3, 0);
                    if (resourceId != 0) {
                        arrayList.add(a(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(a(resources.getStringArray(i)));
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    private static List<byte[]> a(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }

    private static void a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
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

    private static a b(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), a.d.FontFamily);
        String string = obtainAttributes.getString(a.d.FontFamily_fontProviderAuthority);
        String string2 = obtainAttributes.getString(a.d.FontFamily_fontProviderPackage);
        String string3 = obtainAttributes.getString(a.d.FontFamily_fontProviderQuery);
        int resourceId = obtainAttributes.getResourceId(a.d.FontFamily_fontProviderCerts, 0);
        int integer = obtainAttributes.getInteger(a.d.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = obtainAttributes.getInteger(a.d.FontFamily_fontProviderFetchTimeout, 500);
        obtainAttributes.recycle();
        if (string == null || string2 == null || string3 == null) {
            ArrayList arrayList = new ArrayList();
            while (xmlPullParser.next() != 3) {
                if (xmlPullParser.getEventType() == 2) {
                    if (xmlPullParser.getName().equals("font")) {
                        arrayList.add(c(xmlPullParser, resources));
                    } else {
                        a(xmlPullParser);
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            return new b((C0045c[]) arrayList.toArray(new C0045c[arrayList.size()]));
        }
        while (xmlPullParser.next() != 3) {
            a(xmlPullParser);
        }
        return new d(new androidx.core.c.a(string, string2, string3, a(resources, resourceId)), integer, integer2);
    }

    private static C0045c c(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), a.d.FontFamilyFont);
        int i = obtainAttributes.getInt(obtainAttributes.hasValue(a.d.FontFamilyFont_fontWeight) ? a.d.FontFamilyFont_fontWeight : a.d.FontFamilyFont_android_fontWeight, 400);
        boolean z = 1 == obtainAttributes.getInt(obtainAttributes.hasValue(a.d.FontFamilyFont_fontStyle) ? a.d.FontFamilyFont_fontStyle : a.d.FontFamilyFont_android_fontStyle, 0);
        int i2 = obtainAttributes.hasValue(a.d.FontFamilyFont_ttcIndex) ? a.d.FontFamilyFont_ttcIndex : a.d.FontFamilyFont_android_ttcIndex;
        String string = obtainAttributes.getString(obtainAttributes.hasValue(a.d.FontFamilyFont_fontVariationSettings) ? a.d.FontFamilyFont_fontVariationSettings : a.d.FontFamilyFont_android_fontVariationSettings);
        int i3 = obtainAttributes.getInt(i2, 0);
        int i4 = obtainAttributes.hasValue(a.d.FontFamilyFont_font) ? a.d.FontFamilyFont_font : a.d.FontFamilyFont_android_font;
        int resourceId = obtainAttributes.getResourceId(i4, 0);
        String string2 = obtainAttributes.getString(i4);
        obtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            a(xmlPullParser);
        }
        return new C0045c(string2, i, z, string, i3, resourceId);
    }
}
