package androidx.core.p017a.p018a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.Xml;
import androidx.core.C0433a;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.core.a.a.a */
/* loaded from: classes-dex2jar.jar:androidx/core/a/a/a.class */
public final class C0439a {
    /* renamed from: a */
    private static int m20891a(int i, float f) {
        return (Math.round(Color.alpha(i) * f) << 24) | (16777215 & i);
    }

    /* renamed from: a */
    public static ColorStateList m20890a(Resources resources, int i, Resources.Theme theme) {
        ColorStateList colorStateList;
        try {
            colorStateList = m20888a(resources, resources.getXml(i), theme);
        } catch (Exception e) {
            Log.e("CSLCompat", "Failed to inflate ColorStateList.", e);
            colorStateList = null;
        }
        return colorStateList;
    }

    /* renamed from: a */
    public static ColorStateList m20888a(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        return m20887a(resources, xmlPullParser, asAttributeSet, theme);
    }

    /* renamed from: a */
    public static ColorStateList m20887a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (!name.equals("selector")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
        }
        return m20886b(resources, xmlPullParser, attributeSet, theme);
    }

    /* renamed from: a */
    private static TypedArray m20889a(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [int[], int[][], java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v50, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v52, types: [int[][]] */
    /* renamed from: b */
    private static ColorStateList m20886b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int depth;
        int depth2 = xmlPullParser.getDepth() + 1;
        int[] iArr = new int[20];
        int[] iArr2 = new int[iArr.length];
        int i = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            } else if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray m20889a = m20889a(resources, theme, attributeSet, C0433a.C0437d.ColorStateListItem);
                int color = m20889a.getColor(C0433a.C0437d.ColorStateListItem_android_color, -65281);
                float f = 1.0f;
                if (m20889a.hasValue(C0433a.C0437d.ColorStateListItem_android_alpha)) {
                    f = m20889a.getFloat(C0433a.C0437d.ColorStateListItem_android_alpha, 1.0f);
                } else if (m20889a.hasValue(C0433a.C0437d.ColorStateListItem_alpha)) {
                    f = m20889a.getFloat(C0433a.C0437d.ColorStateListItem_alpha, 1.0f);
                }
                m20889a.recycle();
                int i2 = 0;
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr3 = new int[attributeCount];
                for (int i3 = 0; i3 < attributeCount; i3++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i3);
                    if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != C0433a.C0434a.alpha) {
                        if (!attributeSet.getAttributeBooleanValue(i3, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr3[i2] = attributeNameResource;
                        i2++;
                    }
                }
                int[] trimStateSet = StateSet.trimStateSet(iArr3, i2);
                iArr2 = C0448e.m20850a(iArr2, i, m20891a(color, f));
                iArr = (int[][]) C0448e.m20849a((int[][]) iArr, i, trimStateSet);
                i++;
            }
        }
        int[] iArr4 = new int[i];
        ?? r0 = new int[i];
        System.arraycopy(iArr2, 0, iArr4, 0, i);
        System.arraycopy(iArr, 0, r0, 0, i);
        return new ColorStateList(r0, iArr4);
    }
}
