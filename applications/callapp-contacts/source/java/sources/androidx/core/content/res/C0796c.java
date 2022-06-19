package androidx.core.content.res;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import androidx.core.C0707a;
import androidx.core.p033c.C0771a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.core.content.res.c */
/* loaded from: classes-dex2jar.jar:androidx/core/content/res/c.class */
public final class C0796c {

    /* renamed from: androidx.core.content.res.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/c$a.class */
    public interface AbstractC0797a {
    }

    /* renamed from: androidx.core.content.res.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/c$b.class */
    public static final class C0798b implements AbstractC0797a {

        /* renamed from: a */
        public final C0799c[] f3490a;

        public C0798b(C0799c[] c0799cArr) {
            this.f3490a = c0799cArr;
        }
    }

    /* renamed from: androidx.core.content.res.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/c$c.class */
    public static final class C0799c {

        /* renamed from: a */
        public final String f3491a;

        /* renamed from: b */
        public int f3492b;

        /* renamed from: c */
        public boolean f3493c;

        /* renamed from: d */
        public String f3494d;

        /* renamed from: e */
        public int f3495e;

        /* renamed from: f */
        public int f3496f;

        public C0799c(String str, int i, boolean z, String str2, int i2, int i3) {
            this.f3491a = str;
            this.f3492b = i;
            this.f3493c = z;
            this.f3494d = str2;
            this.f3495e = i2;
            this.f3496f = i3;
        }
    }

    /* renamed from: androidx.core.content.res.c$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/c$d.class */
    public static final class C0800d implements AbstractC0797a {

        /* renamed from: a */
        public final C0771a f3497a;

        /* renamed from: b */
        public final int f3498b;

        /* renamed from: c */
        public final int f3499c;

        public C0800d(C0771a c0771a, int i, int i2) {
            this.f3497a = c0771a;
            this.f3499c = i;
            this.f3498b = i2;
        }
    }

    private C0796c() {
    }

    /* renamed from: a */
    public static AbstractC0797a m44475a(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
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
                return m44473b(xmlPullParser, resources);
            }
            m44476a(xmlPullParser);
            return null;
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: a */
    public static List<List<byte[]>> m44477a(Resources resources, int i) {
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
                        arrayList.add(m44474a(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(m44474a(resources.getStringArray(i)));
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    /* renamed from: a */
    private static List<byte[]> m44474a(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }

    /* renamed from: a */
    private static void m44476a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
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

    /* renamed from: b */
    private static AbstractC0797a m44473b(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C0707a.C0711d.FontFamily);
        String string = obtainAttributes.getString(C0707a.C0711d.FontFamily_fontProviderAuthority);
        String string2 = obtainAttributes.getString(C0707a.C0711d.FontFamily_fontProviderPackage);
        String string3 = obtainAttributes.getString(C0707a.C0711d.FontFamily_fontProviderQuery);
        int resourceId = obtainAttributes.getResourceId(C0707a.C0711d.FontFamily_fontProviderCerts, 0);
        int integer = obtainAttributes.getInteger(C0707a.C0711d.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = obtainAttributes.getInteger(C0707a.C0711d.FontFamily_fontProviderFetchTimeout, 500);
        obtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                m44476a(xmlPullParser);
            }
            return new C0800d(new C0771a(string, string2, string3, m44477a(resources, resourceId)), integer, integer2);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList.add(m44472c(xmlPullParser, resources));
                } else {
                    m44476a(xmlPullParser);
                }
            }
        }
        if (!arrayList.isEmpty()) {
            return new C0798b((C0799c[]) arrayList.toArray(new C0799c[arrayList.size()]));
        }
        return null;
    }

    /* renamed from: c */
    private static C0799c m44472c(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C0707a.C0711d.FontFamilyFont);
        int i = obtainAttributes.getInt(obtainAttributes.hasValue(C0707a.C0711d.FontFamilyFont_fontWeight) ? C0707a.C0711d.FontFamilyFont_fontWeight : C0707a.C0711d.FontFamilyFont_android_fontWeight, 400);
        boolean z = 1 == obtainAttributes.getInt(obtainAttributes.hasValue(C0707a.C0711d.FontFamilyFont_fontStyle) ? C0707a.C0711d.FontFamilyFont_fontStyle : C0707a.C0711d.FontFamilyFont_android_fontStyle, 0);
        int i2 = obtainAttributes.hasValue(C0707a.C0711d.FontFamilyFont_ttcIndex) ? C0707a.C0711d.FontFamilyFont_ttcIndex : C0707a.C0711d.FontFamilyFont_android_ttcIndex;
        String string = obtainAttributes.getString(obtainAttributes.hasValue(C0707a.C0711d.FontFamilyFont_fontVariationSettings) ? C0707a.C0711d.FontFamilyFont_fontVariationSettings : C0707a.C0711d.FontFamilyFont_android_fontVariationSettings);
        int i3 = obtainAttributes.getInt(i2, 0);
        int i4 = obtainAttributes.hasValue(C0707a.C0711d.FontFamilyFont_font) ? C0707a.C0711d.FontFamilyFont_font : C0707a.C0711d.FontFamilyFont_android_font;
        int resourceId = obtainAttributes.getResourceId(i4, 0);
        String string2 = obtainAttributes.getString(i4);
        obtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            m44476a(xmlPullParser);
        }
        return new C0799c(string2, i, z, string, i3, resourceId);
    }
}
