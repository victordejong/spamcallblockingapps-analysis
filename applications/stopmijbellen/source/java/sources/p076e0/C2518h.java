package p076e0;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: e0.h */
/* loaded from: classes-dex2jar.jar:e0/h.class */
public class C2518h {
    /* renamed from: a */
    public static C2504c m3490a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i, int i2) {
        C2504c c2504c;
        if (m3488c(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            int i3 = typedValue.type;
            if (i3 >= 28 && i3 <= 31) {
                return new C2504c(null, null, typedValue.data);
            }
            try {
                c2504c = C2504c.m3503a(typedArray.getResources(), typedArray.getResourceId(i, 0), theme);
            } catch (Exception e) {
                c2504c = null;
            }
            if (c2504c != null) {
                return c2504c;
            }
        }
        return new C2504c(null, null, i2);
    }

    /* renamed from: b */
    public static String m3489b(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (!m3488c(xmlPullParser, str)) {
            return null;
        }
        return typedArray.getString(i);
    }

    /* renamed from: c */
    public static boolean m3488c(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    /* renamed from: d */
    public static TypedArray m3487d(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }
}
