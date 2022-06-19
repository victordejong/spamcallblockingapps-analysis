package androidx.core.p015a.p016a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.core.a.a.g */
/* loaded from: classes-dex2jar.jar:androidx/core/a/a/g.class */
public class C0424g {
    /* renamed from: a */
    public static float m6692a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, float f) {
        return !m6688a(xmlPullParser, str) ? f : typedArray.getFloat(i, f);
    }

    /* renamed from: a */
    public static int m6691a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m6688a(xmlPullParser, str) ? i2 : typedArray.getInt(i, i2);
    }

    /* renamed from: a */
    public static ColorStateList m6695a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i) {
        if (m6688a(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            if (typedValue.type != 2) {
                return (typedValue.type < 28 || typedValue.type > 31) ? C0410a.m6744a(typedArray.getResources(), typedArray.getResourceId(i, 0), theme) : m6689a(typedValue);
            }
            throw new UnsupportedOperationException("Failed to resolve attribute at index " + i + ": " + typedValue);
        }
        return null;
    }

    /* renamed from: a */
    private static ColorStateList m6689a(TypedValue typedValue) {
        return ColorStateList.valueOf(typedValue.data);
    }

    /* renamed from: a */
    public static TypedArray m6696a(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* renamed from: a */
    public static C0411b m6694a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i, int i2) {
        if (m6688a(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            if (typedValue.type >= 28 && typedValue.type <= 31) {
                return C0411b.m6738a(typedValue.data);
            }
            C0411b m6736a = C0411b.m6736a(typedArray.getResources(), typedArray.getResourceId(i, 0), theme);
            if (m6736a != null) {
                return m6736a;
            }
        }
        return C0411b.m6738a(i2);
    }

    /* renamed from: a */
    public static String m6693a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (!m6688a(xmlPullParser, str)) {
            return null;
        }
        return typedArray.getString(i);
    }

    /* renamed from: a */
    public static boolean m6690a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, boolean z) {
        return !m6688a(xmlPullParser, str) ? z : typedArray.getBoolean(i, z);
    }

    /* renamed from: a */
    public static boolean m6688a(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    /* renamed from: b */
    public static int m6686b(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m6688a(xmlPullParser, str) ? i2 : typedArray.getColor(i, i2);
    }

    /* renamed from: b */
    public static TypedValue m6687b(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (!m6688a(xmlPullParser, str)) {
            return null;
        }
        return typedArray.peekValue(i);
    }

    /* renamed from: c */
    public static int m6685c(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m6688a(xmlPullParser, str) ? i2 : typedArray.getResourceId(i, i2);
    }
}
