package androidx.core.p017a.p018a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.core.a.a.g */
/* loaded from: classes-dex2jar.jar:androidx/core/a/a/g.class */
public class C0453g {
    /* renamed from: a */
    public static float m20836a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, float f) {
        if (m20832a(xmlPullParser, str)) {
            f = typedArray.getFloat(i, f);
        }
        return f;
    }

    /* renamed from: a */
    public static int m20835a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        if (m20832a(xmlPullParser, str)) {
            i2 = typedArray.getInt(i, i2);
        }
        return i2;
    }

    /* renamed from: a */
    public static ColorStateList m20839a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i) {
        ColorStateList colorStateList;
        if (m20832a(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            if (typedValue.type == 2) {
                throw new UnsupportedOperationException("Failed to resolve attribute at index " + i + ": " + typedValue);
            }
            colorStateList = (typedValue.type < 28 || typedValue.type > 31) ? C0439a.m20890a(typedArray.getResources(), typedArray.getResourceId(i, 0), theme) : m20833a(typedValue);
        } else {
            colorStateList = null;
        }
        return colorStateList;
    }

    /* renamed from: a */
    private static ColorStateList m20833a(TypedValue typedValue) {
        return ColorStateList.valueOf(typedValue.data);
    }

    /* renamed from: a */
    public static TypedArray m20840a(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0047, code lost:
        if (r0 == null) goto L13;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.core.p017a.p018a.C0440b m20838a(android.content.res.TypedArray r5, org.xmlpull.v1.XmlPullParser r6, android.content.res.Resources.Theme r7, java.lang.String r8, int r9, int r10) {
        /*
            r0 = r6
            r1 = r8
            boolean r0 = m20832a(r0, r1)
            if (r0 == 0) goto L4a
            android.util.TypedValue r0 = new android.util.TypedValue
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r5
            r1 = r9
            r2 = r6
            boolean r0 = r0.getValue(r1, r2)
            r0 = r6
            int r0 = r0.type
            r1 = 28
            if (r0 < r1) goto L34
            r0 = r6
            int r0 = r0.type
            r1 = 31
            if (r0 > r1) goto L34
            r0 = r6
            int r0 = r0.data
            androidx.core.a.a.b r0 = androidx.core.p017a.p018a.C0440b.m20884a(r0)
            r5 = r0
        L32:
            r0 = r5
            return r0
        L34:
            r0 = r5
            android.content.res.Resources r0 = r0.getResources()
            r1 = r5
            r2 = r9
            r3 = 0
            int r1 = r1.getResourceId(r2, r3)
            r2 = r7
            androidx.core.a.a.b r0 = androidx.core.p017a.p018a.C0440b.m20882a(r0, r1, r2)
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            if (r0 != 0) goto L32
        L4a:
            r0 = r10
            androidx.core.a.a.b r0 = androidx.core.p017a.p018a.C0440b.m20884a(r0)
            r5 = r0
            goto L32
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.p017a.p018a.C0453g.m20838a(android.content.res.TypedArray, org.xmlpull.v1.XmlPullParser, android.content.res.Resources$Theme, java.lang.String, int, int):androidx.core.a.a.b");
    }

    /* renamed from: a */
    public static String m20837a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        return !m20832a(xmlPullParser, str) ? null : typedArray.getString(i);
    }

    /* renamed from: a */
    public static boolean m20834a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, boolean z) {
        if (m20832a(xmlPullParser, str)) {
            z = typedArray.getBoolean(i, z);
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m20832a(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    /* renamed from: b */
    public static int m20830b(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        if (m20832a(xmlPullParser, str)) {
            i2 = typedArray.getColor(i, i2);
        }
        return i2;
    }

    /* renamed from: b */
    public static TypedValue m20831b(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        return !m20832a(xmlPullParser, str) ? null : typedArray.peekValue(i);
    }

    /* renamed from: c */
    public static int m20829c(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        if (m20832a(xmlPullParser, str)) {
            i2 = typedArray.getResourceId(i, i2);
        }
        return i2;
    }
}
