package p076e0;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.Base64;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p124i4.C3102d;
import p130j0.C3150e;
/* renamed from: e0.d */
/* loaded from: classes-dex2jar.jar:e0/d.class */
public class C2505d {

    /* renamed from: e0.d$a */
    /* loaded from: classes-dex2jar.jar:e0/d$a.class */
    public interface AbstractC2506a {
    }

    /* renamed from: e0.d$b */
    /* loaded from: classes-dex2jar.jar:e0/d$b.class */
    public static final class C2507b implements AbstractC2506a {

        /* renamed from: a */
        public final C2508c[] f8762a;

        public C2507b(C2508c[] c2508cArr) {
            this.f8762a = c2508cArr;
        }
    }

    /* renamed from: e0.d$c */
    /* loaded from: classes-dex2jar.jar:e0/d$c.class */
    public static final class C2508c {

        /* renamed from: a */
        public final String f8763a;

        /* renamed from: b */
        public int f8764b;

        /* renamed from: c */
        public boolean f8765c;

        /* renamed from: d */
        public String f8766d;

        /* renamed from: e */
        public int f8767e;

        /* renamed from: f */
        public int f8768f;

        public C2508c(String str, int i, boolean z, String str2, int i2, int i3) {
            this.f8763a = str;
            this.f8764b = i;
            this.f8765c = z;
            this.f8766d = str2;
            this.f8767e = i2;
            this.f8768f = i3;
        }
    }

    /* renamed from: e0.d$d */
    /* loaded from: classes-dex2jar.jar:e0/d$d.class */
    public static final class C2509d implements AbstractC2506a {

        /* renamed from: a */
        public final C3150e f8769a;

        /* renamed from: b */
        public final int f8770b;

        /* renamed from: c */
        public final int f8771c;

        /* renamed from: d */
        public final String f8772d;

        public C2509d(C3150e c3150e, int i, int i2, String str) {
            this.f8769a = c3150e;
            this.f8771c = i;
            this.f8770b = i2;
            this.f8772d = str;
        }
    }

    /* renamed from: a */
    public static AbstractC2506a m3499a(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        C2509d c2509d;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            xmlPullParser.require(2, null, "font-family");
            if (xmlPullParser.getName().equals("font-family")) {
                TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C3102d.f10499c);
                String string = obtainAttributes.getString(0);
                String string2 = obtainAttributes.getString(4);
                String string3 = obtainAttributes.getString(5);
                int resourceId = obtainAttributes.getResourceId(1, 0);
                int integer = obtainAttributes.getInteger(2, 1);
                int integer2 = obtainAttributes.getInteger(3, 500);
                String string4 = obtainAttributes.getString(6);
                obtainAttributes.recycle();
                if (string == null || string2 == null || string3 == null) {
                    ArrayList arrayList = new ArrayList();
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            if (xmlPullParser.getName().equals("font")) {
                                TypedArray obtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C3102d.f10500d);
                                int i = 8;
                                if (!obtainAttributes2.hasValue(8)) {
                                    i = 1;
                                }
                                int i2 = obtainAttributes2.getInt(i, 400);
                                boolean z = 1 == obtainAttributes2.getInt(obtainAttributes2.hasValue(6) ? 6 : 2, 0);
                                int i3 = 9;
                                if (!obtainAttributes2.hasValue(9)) {
                                    i3 = 3;
                                }
                                int i4 = 7;
                                if (!obtainAttributes2.hasValue(7)) {
                                    i4 = 4;
                                }
                                String string5 = obtainAttributes2.getString(i4);
                                int i5 = obtainAttributes2.getInt(i3, 0);
                                int i6 = obtainAttributes2.hasValue(5) ? 5 : 0;
                                int resourceId2 = obtainAttributes2.getResourceId(i6, 0);
                                String string6 = obtainAttributes2.getString(i6);
                                obtainAttributes2.recycle();
                                while (xmlPullParser.next() != 3) {
                                    m3497c(xmlPullParser);
                                }
                                arrayList.add(new C2508c(string6, i2, z, string5, i5, resourceId2));
                            } else {
                                m3497c(xmlPullParser);
                            }
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        c2509d = new C2507b((C2508c[]) arrayList.toArray(new C2508c[arrayList.size()]));
                    }
                } else {
                    while (xmlPullParser.next() != 3) {
                        m3497c(xmlPullParser);
                    }
                    c2509d = new C2509d(new C3150e(string, string2, string3, m3498b(resources, resourceId)), integer, integer2, string4);
                }
                return c2509d;
            }
            m3497c(xmlPullParser);
            c2509d = null;
            return c2509d;
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: b */
    public static List<List<byte[]>> m3498b(Resources resources, int i) {
        if (i == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (obtainTypedArray.getType(0) == 1) {
                for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                    int resourceId = obtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        arrayList.add(m3496d(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(m3496d(resources.getStringArray(i)));
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    /* renamed from: c */
    public static void m3497c(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
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

    /* renamed from: d */
    public static List<byte[]> m3496d(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }
}
