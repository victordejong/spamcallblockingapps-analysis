package androidx.core.content.res;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.core.content.res.g */
/* loaded from: classes-dex2jar.jar:androidx/core/content/res/g.class */
public final class C0810g {
    private C0810g() {
    }

    /* renamed from: a */
    public static float m44455a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, float f) {
        return !m44452a(xmlPullParser, str) ? f : typedArray.getFloat(i, f);
    }

    /* renamed from: a */
    public static int m44456a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (!m44452a(xmlPullParser, str)) {
            return 0;
        }
        return typedArray.getColor(i, 0);
    }

    /* renamed from: a */
    public static int m44454a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m44452a(xmlPullParser, str) ? i2 : typedArray.getInt(i, i2);
    }

    /* renamed from: a */
    public static TypedArray m44459a(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* renamed from: a */
    public static TypedValue m44457a(TypedArray typedArray, XmlPullParser xmlPullParser, String str) {
        if (!m44452a(xmlPullParser, str)) {
            return null;
        }
        return typedArray.peekValue(0);
    }

    /* renamed from: a */
    public static C0795b m44458a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i) {
        if (m44452a(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            if (typedValue.type >= 28 && typedValue.type <= 31) {
                return C0795b.m44482a(typedValue.data);
            }
            C0795b m44481a = C0795b.m44481a(typedArray.getResources(), typedArray.getResourceId(i, 0), theme);
            if (m44481a != null) {
                return m44481a;
            }
        }
        return C0795b.m44482a(0);
    }

    /* renamed from: a */
    public static boolean m44453a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, boolean z) {
        return !m44452a(xmlPullParser, str) ? z : typedArray.getBoolean(i, z);
    }

    /* renamed from: a */
    public static boolean m44452a(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    /* renamed from: b */
    public static int m44451b(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (!m44452a(xmlPullParser, str)) {
            return 0;
        }
        return typedArray.getResourceId(i, 0);
    }

    /* renamed from: c */
    public static String m44450c(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (!m44452a(xmlPullParser, str)) {
            return null;
        }
        return typedArray.getString(i);
    }
}
