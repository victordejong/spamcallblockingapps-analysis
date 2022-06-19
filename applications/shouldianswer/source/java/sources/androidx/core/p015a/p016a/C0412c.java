package androidx.core.p015a.p016a;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import androidx.core.C0404a;
import androidx.core.p020d.C0464a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.core.a.a.c */
/* loaded from: classes-dex2jar.jar:androidx/core/a/a/c.class */
public class C0412c {

    /* renamed from: androidx.core.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/a/a/c$a.class */
    public interface AbstractC0413a {
    }

    /* renamed from: androidx.core.a.a.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/a/a/c$b.class */
    public static final class C0414b implements AbstractC0413a {

        /* renamed from: a */
        private final C0415c[] f1553a;

        public C0414b(C0415c[] c0415cArr) {
            this.f1553a = c0415cArr;
        }

        /* renamed from: a */
        public C0415c[] m6719a() {
            return this.f1553a;
        }
    }

    /* renamed from: androidx.core.a.a.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/a/a/c$c.class */
    public static final class C0415c {

        /* renamed from: a */
        private final String f1554a;

        /* renamed from: b */
        private int f1555b;

        /* renamed from: c */
        private boolean f1556c;

        /* renamed from: d */
        private String f1557d;

        /* renamed from: e */
        private int f1558e;

        /* renamed from: f */
        private int f1559f;

        public C0415c(String str, int i, boolean z, String str2, int i2, int i3) {
            this.f1554a = str;
            this.f1555b = i;
            this.f1556c = z;
            this.f1557d = str2;
            this.f1558e = i2;
            this.f1559f = i3;
        }

        /* renamed from: a */
        public String m6718a() {
            return this.f1554a;
        }

        /* renamed from: b */
        public int m6717b() {
            return this.f1555b;
        }

        /* renamed from: c */
        public boolean m6716c() {
            return this.f1556c;
        }

        /* renamed from: d */
        public String m6715d() {
            return this.f1557d;
        }

        /* renamed from: e */
        public int m6714e() {
            return this.f1558e;
        }

        /* renamed from: f */
        public int m6713f() {
            return this.f1559f;
        }
    }

    /* renamed from: androidx.core.a.a.c$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/a/a/c$d.class */
    public static final class C0416d implements AbstractC0413a {

        /* renamed from: a */
        private final C0464a f1560a;

        /* renamed from: b */
        private final int f1561b;

        /* renamed from: c */
        private final int f1562c;

        public C0416d(C0464a c0464a, int i, int i2) {
            this.f1560a = c0464a;
            this.f1562c = i;
            this.f1561b = i2;
        }

        /* renamed from: a */
        public C0464a m6712a() {
            return this.f1560a;
        }

        /* renamed from: b */
        public int m6711b() {
            return this.f1562c;
        }

        /* renamed from: c */
        public int m6710c() {
            return this.f1561b;
        }
    }

    /* renamed from: a */
    private static int m6726a(TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return typedArray.getType(i);
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i, typedValue);
        return typedValue.type;
    }

    /* renamed from: a */
    public static AbstractC0413a m6724a(XmlPullParser xmlPullParser, Resources resources) {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return m6722b(xmlPullParser, resources);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: a */
    public static List<List<byte[]>> m6727a(Resources resources, int i) {
        if (i == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (m6726a(obtainTypedArray, 0) == 1) {
                for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                    int resourceId = obtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        arrayList.add(m6723a(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(m6723a(resources.getStringArray(i)));
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    /* renamed from: a */
    private static List<byte[]> m6723a(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }

    /* renamed from: a */
    private static void m6725a(XmlPullParser xmlPullParser) {
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
    private static AbstractC0413a m6722b(XmlPullParser xmlPullParser, Resources resources) {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return m6721c(xmlPullParser, resources);
        }
        m6725a(xmlPullParser);
        return null;
    }

    /* renamed from: c */
    private static AbstractC0413a m6721c(XmlPullParser xmlPullParser, Resources resources) {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C0404a.C0408d.FontFamily);
        String string = obtainAttributes.getString(C0404a.C0408d.FontFamily_fontProviderAuthority);
        String string2 = obtainAttributes.getString(C0404a.C0408d.FontFamily_fontProviderPackage);
        String string3 = obtainAttributes.getString(C0404a.C0408d.FontFamily_fontProviderQuery);
        int resourceId = obtainAttributes.getResourceId(C0404a.C0408d.FontFamily_fontProviderCerts, 0);
        int integer = obtainAttributes.getInteger(C0404a.C0408d.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = obtainAttributes.getInteger(C0404a.C0408d.FontFamily_fontProviderFetchTimeout, 500);
        obtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                m6725a(xmlPullParser);
            }
            return new C0416d(new C0464a(string, string2, string3, m6727a(resources, resourceId)), integer, integer2);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList.add(m6720d(xmlPullParser, resources));
                } else {
                    m6725a(xmlPullParser);
                }
            }
        }
        if (!arrayList.isEmpty()) {
            return new C0414b((C0415c[]) arrayList.toArray(new C0415c[arrayList.size()]));
        }
        return null;
    }

    /* renamed from: d */
    private static C0415c m6720d(XmlPullParser xmlPullParser, Resources resources) {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C0404a.C0408d.FontFamilyFont);
        int i = obtainAttributes.getInt(obtainAttributes.hasValue(C0404a.C0408d.FontFamilyFont_fontWeight) ? C0404a.C0408d.FontFamilyFont_fontWeight : C0404a.C0408d.FontFamilyFont_android_fontWeight, 400);
        boolean z = 1 == obtainAttributes.getInt(obtainAttributes.hasValue(C0404a.C0408d.FontFamilyFont_fontStyle) ? C0404a.C0408d.FontFamilyFont_fontStyle : C0404a.C0408d.FontFamilyFont_android_fontStyle, 0);
        int i2 = obtainAttributes.hasValue(C0404a.C0408d.FontFamilyFont_ttcIndex) ? C0404a.C0408d.FontFamilyFont_ttcIndex : C0404a.C0408d.FontFamilyFont_android_ttcIndex;
        String string = obtainAttributes.getString(obtainAttributes.hasValue(C0404a.C0408d.FontFamilyFont_fontVariationSettings) ? C0404a.C0408d.FontFamilyFont_fontVariationSettings : C0404a.C0408d.FontFamilyFont_android_fontVariationSettings);
        int i3 = obtainAttributes.getInt(i2, 0);
        int i4 = obtainAttributes.hasValue(C0404a.C0408d.FontFamilyFont_font) ? C0404a.C0408d.FontFamilyFont_font : C0404a.C0408d.FontFamilyFont_android_font;
        int resourceId = obtainAttributes.getResourceId(i4, 0);
        String string2 = obtainAttributes.getString(i4);
        obtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            m6725a(xmlPullParser);
        }
        return new C0415c(string2, i, z, string, i3, resourceId);
    }
}
