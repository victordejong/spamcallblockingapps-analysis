package androidx.core.content.p007d;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p020b.p041h.C1521d;
import p020b.p041h.p046h.C1549d;
/* renamed from: androidx.core.content.d.c */
/* loaded from: classes-dex2jar.jar:androidx/core/content/d/c.class */
public class C0597c {

    /* renamed from: androidx.core.content.d.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/d/c$a.class */
    public interface AbstractC0598a {
    }

    /* renamed from: androidx.core.content.d.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/d/c$b.class */
    public static final class C0599b implements AbstractC0598a {

        /* renamed from: a */
        private final C0600c[] f2958a;

        public C0599b(C0600c[] c0600cArr) {
            this.f2958a = c0600cArr;
        }

        /* renamed from: a */
        public C0600c[] m33295a() {
            return this.f2958a;
        }
    }

    /* renamed from: androidx.core.content.d.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/d/c$c.class */
    public static final class C0600c {

        /* renamed from: a */
        private final String f2959a;

        /* renamed from: b */
        private int f2960b;

        /* renamed from: c */
        private boolean f2961c;

        /* renamed from: d */
        private String f2962d;

        /* renamed from: e */
        private int f2963e;

        /* renamed from: f */
        private int f2964f;

        public C0600c(String str, int i, boolean z, String str2, int i2, int i3) {
            this.f2959a = str;
            this.f2960b = i;
            this.f2961c = z;
            this.f2962d = str2;
            this.f2963e = i2;
            this.f2964f = i3;
        }

        /* renamed from: a */
        public String m33294a() {
            return this.f2959a;
        }

        /* renamed from: b */
        public int m33293b() {
            return this.f2964f;
        }

        /* renamed from: c */
        public int m33292c() {
            return this.f2963e;
        }

        /* renamed from: d */
        public String m33291d() {
            return this.f2962d;
        }

        /* renamed from: e */
        public int m33290e() {
            return this.f2960b;
        }

        /* renamed from: f */
        public boolean m33289f() {
            return this.f2961c;
        }
    }

    /* renamed from: androidx.core.content.d.c$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/d/c$d.class */
    public static final class C0601d implements AbstractC0598a {

        /* renamed from: a */
        private final C1549d f2965a;

        /* renamed from: b */
        private final int f2966b;

        /* renamed from: c */
        private final int f2967c;

        /* renamed from: d */
        private final String f2968d;

        public C0601d(C1549d c1549d, int i, int i2, String str) {
            this.f2965a = c1549d;
            this.f2967c = i;
            this.f2966b = i2;
            this.f2968d = str;
        }

        /* renamed from: a */
        public int m33288a() {
            return this.f2967c;
        }

        /* renamed from: b */
        public C1549d m33287b() {
            return this.f2965a;
        }

        /* renamed from: c */
        public String m33286c() {
            return this.f2968d;
        }

        /* renamed from: d */
        public int m33285d() {
            return this.f2966b;
        }
    }

    /* renamed from: a */
    private static int m33303a(TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return typedArray.getType(i);
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i, typedValue);
        return typedValue.type;
    }

    /* renamed from: b */
    public static AbstractC0598a m33302b(XmlPullParser xmlPullParser, Resources resources) {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return m33300d(xmlPullParser, resources);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: c */
    public static List<List<byte[]>> m33301c(Resources resources, int i) {
        if (i == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (m33303a(obtainTypedArray, 0) == 1) {
                for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                    int resourceId = obtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        arrayList.add(m33296h(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(m33296h(resources.getStringArray(i)));
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    /* renamed from: d */
    private static AbstractC0598a m33300d(XmlPullParser xmlPullParser, Resources resources) {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return m33299e(xmlPullParser, resources);
        }
        m33297g(xmlPullParser);
        return null;
    }

    /* renamed from: e */
    private static AbstractC0598a m33299e(XmlPullParser xmlPullParser, Resources resources) {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C1521d.FontFamily);
        String string = obtainAttributes.getString(C1521d.FontFamily_fontProviderAuthority);
        String string2 = obtainAttributes.getString(C1521d.FontFamily_fontProviderPackage);
        String string3 = obtainAttributes.getString(C1521d.FontFamily_fontProviderQuery);
        int resourceId = obtainAttributes.getResourceId(C1521d.FontFamily_fontProviderCerts, 0);
        int integer = obtainAttributes.getInteger(C1521d.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = obtainAttributes.getInteger(C1521d.FontFamily_fontProviderFetchTimeout, 500);
        String string4 = obtainAttributes.getString(C1521d.FontFamily_fontProviderSystemFontFamily);
        obtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                m33297g(xmlPullParser);
            }
            return new C0601d(new C1549d(string, string2, string3, m33301c(resources, resourceId)), integer, integer2, string4);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList.add(m33298f(xmlPullParser, resources));
                } else {
                    m33297g(xmlPullParser);
                }
            }
        }
        if (!arrayList.isEmpty()) {
            return new C0599b((C0600c[]) arrayList.toArray(new C0600c[arrayList.size()]));
        }
        return null;
    }

    /* renamed from: f */
    private static C0600c m33298f(XmlPullParser xmlPullParser, Resources resources) {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C1521d.FontFamilyFont);
        int i = C1521d.FontFamilyFont_fontWeight;
        if (!obtainAttributes.hasValue(i)) {
            i = C1521d.FontFamilyFont_android_fontWeight;
        }
        int i2 = obtainAttributes.getInt(i, 400);
        int i3 = C1521d.FontFamilyFont_fontStyle;
        if (!obtainAttributes.hasValue(i3)) {
            i3 = C1521d.FontFamilyFont_android_fontStyle;
        }
        boolean z = 1 == obtainAttributes.getInt(i3, 0);
        int i4 = C1521d.FontFamilyFont_ttcIndex;
        if (!obtainAttributes.hasValue(i4)) {
            i4 = C1521d.FontFamilyFont_android_ttcIndex;
        }
        int i5 = C1521d.FontFamilyFont_fontVariationSettings;
        if (!obtainAttributes.hasValue(i5)) {
            i5 = C1521d.FontFamilyFont_android_fontVariationSettings;
        }
        String string = obtainAttributes.getString(i5);
        int i6 = obtainAttributes.getInt(i4, 0);
        int i7 = C1521d.FontFamilyFont_font;
        if (!obtainAttributes.hasValue(i7)) {
            i7 = C1521d.FontFamilyFont_android_font;
        }
        int resourceId = obtainAttributes.getResourceId(i7, 0);
        String string2 = obtainAttributes.getString(i7);
        obtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            m33297g(xmlPullParser);
        }
        return new C0600c(string2, i2, z, string, i6, resourceId);
    }

    /* renamed from: g */
    private static void m33297g(XmlPullParser xmlPullParser) {
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
    private static List<byte[]> m33296h(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }
}
