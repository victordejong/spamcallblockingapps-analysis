package androidx.core.p017a.p018a;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import androidx.core.C0433a;
import androidx.core.p023e.C0488a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.core.a.a.c */
/* loaded from: classes-dex2jar.jar:androidx/core/a/a/c.class */
public class C0441c {

    /* renamed from: androidx.core.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/a/a/c$a.class */
    public interface AbstractC0442a {
    }

    /* renamed from: androidx.core.a.a.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/a/a/c$b.class */
    public static final class C0443b implements AbstractC0442a {

        /* renamed from: a */
        private final C0444c[] f1733a;

        public C0443b(C0444c[] c0444cArr) {
            this.f1733a = c0444cArr;
        }

        /* renamed from: a */
        public C0444c[] m20865a() {
            return this.f1733a;
        }
    }

    /* renamed from: androidx.core.a.a.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/a/a/c$c.class */
    public static final class C0444c {

        /* renamed from: a */
        private final String f1734a;

        /* renamed from: b */
        private int f1735b;

        /* renamed from: c */
        private boolean f1736c;

        /* renamed from: d */
        private String f1737d;

        /* renamed from: e */
        private int f1738e;

        /* renamed from: f */
        private int f1739f;

        public C0444c(String str, int i, boolean z, String str2, int i2, int i3) {
            this.f1734a = str;
            this.f1735b = i;
            this.f1736c = z;
            this.f1737d = str2;
            this.f1738e = i2;
            this.f1739f = i3;
        }

        /* renamed from: a */
        public String m20864a() {
            return this.f1734a;
        }

        /* renamed from: b */
        public int m20863b() {
            return this.f1735b;
        }

        /* renamed from: c */
        public boolean m20862c() {
            return this.f1736c;
        }

        /* renamed from: d */
        public String m20861d() {
            return this.f1737d;
        }

        /* renamed from: e */
        public int m20860e() {
            return this.f1738e;
        }

        /* renamed from: f */
        public int m20859f() {
            return this.f1739f;
        }
    }

    /* renamed from: androidx.core.a.a.c$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/a/a/c$d.class */
    public static final class C0445d implements AbstractC0442a {

        /* renamed from: a */
        private final C0488a f1740a;

        /* renamed from: b */
        private final int f1741b;

        /* renamed from: c */
        private final int f1742c;

        public C0445d(C0488a c0488a, int i, int i2) {
            this.f1740a = c0488a;
            this.f1742c = i;
            this.f1741b = i2;
        }

        /* renamed from: a */
        public C0488a m20858a() {
            return this.f1740a;
        }

        /* renamed from: b */
        public int m20857b() {
            return this.f1742c;
        }

        /* renamed from: c */
        public int m20856c() {
            return this.f1741b;
        }
    }

    /* renamed from: a */
    private static int m20872a(TypedArray typedArray, int i) {
        int i2;
        if (Build.VERSION.SDK_INT >= 21) {
            i2 = typedArray.getType(i);
        } else {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            i2 = typedValue.type;
        }
        return i2;
    }

    /* renamed from: a */
    public static AbstractC0442a m20870a(XmlPullParser xmlPullParser, Resources resources) {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        return m20868b(xmlPullParser, resources);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v26, types: [java.util.List] */
    /* renamed from: a */
    public static List<List<byte[]>> m20873a(Resources resources, int i) {
        ArrayList arrayList;
        if (i == 0) {
            arrayList = Collections.emptyList();
        } else {
            TypedArray obtainTypedArray = resources.obtainTypedArray(i);
            try {
                if (obtainTypedArray.length() == 0) {
                    arrayList = Collections.emptyList();
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    if (m20872a(obtainTypedArray, 0) == 1) {
                        for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                            int resourceId = obtainTypedArray.getResourceId(i2, 0);
                            if (resourceId != 0) {
                                arrayList2.add(m20869a(resources.getStringArray(resourceId)));
                            }
                        }
                    } else {
                        arrayList2.add(m20869a(resources.getStringArray(i)));
                    }
                    obtainTypedArray.recycle();
                    arrayList = arrayList2;
                }
            } finally {
                obtainTypedArray.recycle();
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private static List<byte[]> m20869a(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }

    /* renamed from: a */
    private static void m20871a(XmlPullParser xmlPullParser) {
        int i = 1;
        while (i > 0) {
            switch (xmlPullParser.next()) {
                case 2:
                    i++;
                    break;
                case 3:
                    i--;
                    break;
            }
        }
    }

    /* renamed from: b */
    private static AbstractC0442a m20868b(XmlPullParser xmlPullParser, Resources resources) {
        AbstractC0442a abstractC0442a;
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            abstractC0442a = m20867c(xmlPullParser, resources);
        } else {
            m20871a(xmlPullParser);
            abstractC0442a = null;
        }
        return abstractC0442a;
    }

    /* renamed from: c */
    private static AbstractC0442a m20867c(XmlPullParser xmlPullParser, Resources resources) {
        AbstractC0442a c0443b;
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C0433a.C0437d.FontFamily);
        String string = obtainAttributes.getString(C0433a.C0437d.FontFamily_fontProviderAuthority);
        String string2 = obtainAttributes.getString(C0433a.C0437d.FontFamily_fontProviderPackage);
        String string3 = obtainAttributes.getString(C0433a.C0437d.FontFamily_fontProviderQuery);
        int resourceId = obtainAttributes.getResourceId(C0433a.C0437d.FontFamily_fontProviderCerts, 0);
        int integer = obtainAttributes.getInteger(C0433a.C0437d.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = obtainAttributes.getInteger(C0433a.C0437d.FontFamily_fontProviderFetchTimeout, 500);
        obtainAttributes.recycle();
        if (string == null || string2 == null || string3 == null) {
            ArrayList arrayList = new ArrayList();
            while (xmlPullParser.next() != 3) {
                if (xmlPullParser.getEventType() == 2) {
                    if (xmlPullParser.getName().equals("font")) {
                        arrayList.add(m20866d(xmlPullParser, resources));
                    } else {
                        m20871a(xmlPullParser);
                    }
                }
            }
            c0443b = arrayList.isEmpty() ? null : new C0443b((C0444c[]) arrayList.toArray(new C0444c[arrayList.size()]));
        } else {
            while (xmlPullParser.next() != 3) {
                m20871a(xmlPullParser);
            }
            c0443b = new C0445d(new C0488a(string, string2, string3, m20873a(resources, resourceId)), integer, integer2);
        }
        return c0443b;
    }

    /* renamed from: d */
    private static C0444c m20866d(XmlPullParser xmlPullParser, Resources resources) {
        boolean z = true;
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C0433a.C0437d.FontFamilyFont);
        int i = obtainAttributes.getInt(obtainAttributes.hasValue(C0433a.C0437d.FontFamilyFont_fontWeight) ? C0433a.C0437d.FontFamilyFont_fontWeight : C0433a.C0437d.FontFamilyFont_android_fontWeight, 400);
        if (1 != obtainAttributes.getInt(obtainAttributes.hasValue(C0433a.C0437d.FontFamilyFont_fontStyle) ? C0433a.C0437d.FontFamilyFont_fontStyle : C0433a.C0437d.FontFamilyFont_android_fontStyle, 0)) {
            z = false;
        }
        int i2 = obtainAttributes.hasValue(C0433a.C0437d.FontFamilyFont_ttcIndex) ? C0433a.C0437d.FontFamilyFont_ttcIndex : C0433a.C0437d.FontFamilyFont_android_ttcIndex;
        String string = obtainAttributes.getString(obtainAttributes.hasValue(C0433a.C0437d.FontFamilyFont_fontVariationSettings) ? C0433a.C0437d.FontFamilyFont_fontVariationSettings : C0433a.C0437d.FontFamilyFont_android_fontVariationSettings);
        int i3 = obtainAttributes.getInt(i2, 0);
        int i4 = obtainAttributes.hasValue(C0433a.C0437d.FontFamilyFont_font) ? C0433a.C0437d.FontFamilyFont_font : C0433a.C0437d.FontFamilyFont_android_font;
        int resourceId = obtainAttributes.getResourceId(i4, 0);
        String string2 = obtainAttributes.getString(i4);
        obtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            m20871a(xmlPullParser);
        }
        return new C0444c(string2, i, z, string, i3, resourceId);
    }
}
