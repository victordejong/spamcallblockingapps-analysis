package androidx.core.content.p003c;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.core.content.c.g */
/* loaded from: classes-dex2jar.jar:androidx/core/content/c/g.class */
public class C0282g {
    /* renamed from: a */
    public static boolean m13490a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, boolean z) {
        return !m13481j(xmlPullParser, str) ? z : typedArray.getBoolean(i, z);
    }

    /* renamed from: b */
    public static int m13489b(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m13481j(xmlPullParser, str) ? i2 : typedArray.getColor(i, i2);
    }

    /* renamed from: c */
    public static ColorStateList m13488c(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i) {
        if (m13481j(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            int i2 = typedValue.type;
            if (i2 != 2) {
                return (i2 < 28 || i2 > 31) ? C0267a.m13540c(typedArray.getResources(), typedArray.getResourceId(i, 0), theme) : m13487d(typedValue);
            }
            throw new UnsupportedOperationException("Failed to resolve attribute at index " + i + ": " + typedValue);
        }
        return null;
    }

    /* renamed from: d */
    private static ColorStateList m13487d(TypedValue typedValue) {
        return ColorStateList.valueOf(typedValue.data);
    }

    /* renamed from: e */
    public static C0268b m13486e(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i, int i2) {
        if (m13481j(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            int i3 = typedValue.type;
            if (i3 >= 28 && i3 <= 31) {
                return C0268b.m13535b(typedValue.data);
            }
            C0268b m13530g = C0268b.m13530g(typedArray.getResources(), typedArray.getResourceId(i, 0), theme);
            if (m13530g != null) {
                return m13530g;
            }
        }
        return C0268b.m13535b(i2);
    }

    /* renamed from: f */
    public static float m13485f(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, float f) {
        return !m13481j(xmlPullParser, str) ? f : typedArray.getFloat(i, f);
    }

    /* renamed from: g */
    public static int m13484g(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m13481j(xmlPullParser, str) ? i2 : typedArray.getInt(i, i2);
    }

    /* renamed from: h */
    public static int m13483h(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m13481j(xmlPullParser, str) ? i2 : typedArray.getResourceId(i, i2);
    }

    /* renamed from: i */
    public static String m13482i(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (!m13481j(xmlPullParser, str)) {
            return null;
        }
        return typedArray.getString(i);
    }

    /* renamed from: j */
    public static boolean m13481j(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    /* renamed from: k */
    public static TypedArray m13480k(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* renamed from: l */
    public static TypedValue m13479l(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (!m13481j(xmlPullParser, str)) {
            return null;
        }
        return typedArray.peekValue(i);
    }
}
