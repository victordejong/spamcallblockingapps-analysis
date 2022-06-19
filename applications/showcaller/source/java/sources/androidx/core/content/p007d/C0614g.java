package androidx.core.content.p007d;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.core.content.d.g */
/* loaded from: classes-dex2jar.jar:androidx/core/content/d/g.class */
public class C0614g {
    /* renamed from: a */
    public static boolean m33259a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, boolean z) {
        return !m33250j(xmlPullParser, str) ? z : typedArray.getBoolean(i, z);
    }

    /* renamed from: b */
    public static int m33258b(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m33250j(xmlPullParser, str) ? i2 : typedArray.getColor(i, i2);
    }

    /* renamed from: c */
    public static ColorStateList m33257c(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i) {
        if (m33250j(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            int i2 = typedValue.type;
            if (i2 != 2) {
                return (i2 < 28 || i2 > 31) ? C0595a.m33320d(typedArray.getResources(), typedArray.getResourceId(i, 0), theme) : m33256d(typedValue);
            }
            throw new UnsupportedOperationException("Failed to resolve attribute at index " + i + ": " + typedValue);
        }
        return null;
    }

    /* renamed from: d */
    private static ColorStateList m33256d(TypedValue typedValue) {
        return ColorStateList.valueOf(typedValue.data);
    }

    /* renamed from: e */
    public static C0596b m33255e(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i, int i2) {
        if (m33250j(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            int i3 = typedValue.type;
            if (i3 >= 28 && i3 <= 31) {
                return C0596b.m33314b(typedValue.data);
            }
            C0596b m33309g = C0596b.m33309g(typedArray.getResources(), typedArray.getResourceId(i, 0), theme);
            if (m33309g != null) {
                return m33309g;
            }
        }
        return C0596b.m33314b(i2);
    }

    /* renamed from: f */
    public static float m33254f(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, float f) {
        return !m33250j(xmlPullParser, str) ? f : typedArray.getFloat(i, f);
    }

    /* renamed from: g */
    public static int m33253g(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m33250j(xmlPullParser, str) ? i2 : typedArray.getInt(i, i2);
    }

    /* renamed from: h */
    public static int m33252h(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m33250j(xmlPullParser, str) ? i2 : typedArray.getResourceId(i, i2);
    }

    /* renamed from: i */
    public static String m33251i(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (!m33250j(xmlPullParser, str)) {
            return null;
        }
        return typedArray.getString(i);
    }

    /* renamed from: j */
    public static boolean m33250j(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    /* renamed from: k */
    public static TypedArray m33249k(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* renamed from: l */
    public static TypedValue m33248l(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (!m33250j(xmlPullParser, str)) {
            return null;
        }
        return typedArray.peekValue(i);
    }
}
