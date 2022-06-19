package androidx.core.content.p007d;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p020b.p041h.C1518a;
import p020b.p041h.C1521d;
/* renamed from: androidx.core.content.d.a */
/* loaded from: classes-dex2jar.jar:androidx/core/content/d/a.class */
public final class C0595a {

    /* renamed from: a */
    private static final ThreadLocal<TypedValue> f2954a = new ThreadLocal<>();

    /* renamed from: a */
    public static ColorStateList m33323a(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return m33322b(resources, xmlPullParser, asAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: b */
    public static ColorStateList m33322b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (name.equals("selector")) {
            return m33319e(resources, xmlPullParser, attributeSet, theme);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
    }

    /* renamed from: c */
    private static TypedValue m33321c() {
        ThreadLocal<TypedValue> threadLocal = f2954a;
        TypedValue typedValue = threadLocal.get();
        TypedValue typedValue2 = typedValue;
        if (typedValue == null) {
            typedValue2 = new TypedValue();
            threadLocal.set(typedValue2);
        }
        return typedValue2;
    }

    /* renamed from: d */
    public static ColorStateList m33320d(Resources resources, int i, Resources.Theme theme) {
        try {
            return m33323a(resources, resources.getXml(i), theme);
        } catch (Exception e) {
            Log.e("CSLCompat", "Failed to inflate ColorStateList.", e);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [int[], int[][], java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v59, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v61, types: [int[][]] */
    /* renamed from: e */
    private static ColorStateList m33319e(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int i;
        int depth;
        int i2;
        int i3;
        int depth2 = xmlPullParser.getDepth() + 1;
        int[] iArr = new int[20];
        int[] iArr2 = new int[20];
        int i4 = 0;
        while (true) {
            i = i4;
            int next = xmlPullParser.next();
            if (next == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            int[] iArr3 = iArr2;
            int[] iArr4 = iArr;
            int i5 = i;
            if (next == 2) {
                iArr3 = iArr2;
                iArr4 = iArr;
                i5 = i;
                if (depth <= depth2) {
                    if (!xmlPullParser.getName().equals("item")) {
                        iArr3 = iArr2;
                        iArr4 = iArr;
                        i5 = i;
                    } else {
                        TypedArray m33316h = m33316h(resources, theme, attributeSet, C1521d.ColorStateListItem);
                        int i6 = C1521d.ColorStateListItem_android_color;
                        int resourceId = m33316h.getResourceId(i6, -1);
                        if (resourceId == -1 || m33318f(resources, resourceId)) {
                            i2 = m33316h.getColor(i6, -65281);
                        } else {
                            try {
                                i2 = m33323a(resources, resources.getXml(resourceId), theme).getDefaultColor();
                            } catch (Exception e) {
                                i2 = m33316h.getColor(C1521d.ColorStateListItem_android_color, -65281);
                            }
                        }
                        float f = 1.0f;
                        int i7 = C1521d.ColorStateListItem_android_alpha;
                        if (m33316h.hasValue(i7)) {
                            f = m33316h.getFloat(i7, 1.0f);
                        } else {
                            int i8 = C1521d.ColorStateListItem_alpha;
                            if (m33316h.hasValue(i8)) {
                                f = m33316h.getFloat(i8, 1.0f);
                            }
                        }
                        m33316h.recycle();
                        int attributeCount = attributeSet.getAttributeCount();
                        int[] iArr5 = new int[attributeCount];
                        int i9 = 0;
                        int i10 = 0;
                        while (true) {
                            i3 = i10;
                            if (i9 >= attributeCount) {
                                break;
                            }
                            int attributeNameResource = attributeSet.getAttributeNameResource(i9);
                            int i11 = i3;
                            if (attributeNameResource != 16843173) {
                                i11 = i3;
                                if (attributeNameResource != 16843551) {
                                    i11 = i3;
                                    if (attributeNameResource != C1518a.alpha) {
                                        iArr5[i3] = attributeSet.getAttributeBooleanValue(i9, false) ? attributeNameResource : -attributeNameResource;
                                        i11 = i3 + 1;
                                    }
                                }
                            }
                            i9++;
                            i10 = i11;
                        }
                        int[] trimStateSet = StateSet.trimStateSet(iArr5, i3);
                        iArr3 = C0604e.m33280a(iArr2, i, m33317g(i2, f));
                        iArr4 = (int[][]) C0604e.m33279b(iArr, i, trimStateSet);
                        i5 = i + 1;
                    }
                }
            }
            iArr2 = iArr3;
            iArr = iArr4;
            i4 = i5;
        }
        int[] iArr6 = new int[i];
        ?? r0 = new int[i];
        System.arraycopy(iArr2, 0, iArr6, 0, i);
        System.arraycopy(iArr, 0, r0, 0, i);
        return new ColorStateList(r0, iArr6);
    }

    /* renamed from: f */
    private static boolean m33318f(Resources resources, int i) {
        TypedValue m33321c = m33321c();
        boolean z = true;
        resources.getValue(i, m33321c, true);
        int i2 = m33321c.type;
        if (i2 < 28 || i2 > 31) {
            z = false;
        }
        return z;
    }

    /* renamed from: g */
    private static int m33317g(int i, float f) {
        return (i & 16777215) | (Math.round(Color.alpha(i) * f) << 24);
    }

    /* renamed from: h */
    private static TypedArray m33316h(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }
}
