package androidx.core.p015a.p016a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.Xml;
import androidx.core.C0404a;
import com.google.android.flexbox.FlexItem;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.core.a.a.a */
/* loaded from: classes-dex2jar.jar:androidx/core/a/a/a.class */
public final class C0410a {
    /* renamed from: a */
    private static int m6745a(int i, float f) {
        return (i & FlexItem.MAX_SIZE) | (Math.round(Color.alpha(i) * f) << 24);
    }

    /* renamed from: a */
    public static ColorStateList m6744a(Resources resources, int i, Resources.Theme theme) {
        try {
            return m6742a(resources, resources.getXml(i), theme);
        } catch (Exception e) {
            Log.e("CSLCompat", "Failed to inflate ColorStateList.", e);
            return null;
        }
    }

    /* renamed from: a */
    public static ColorStateList m6742a(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return m6741a(resources, xmlPullParser, asAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: a */
    public static ColorStateList m6741a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (name.equals("selector")) {
            return m6740b(resources, xmlPullParser, attributeSet, theme);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
    }

    /* renamed from: a */
    private static TypedArray m6743a(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [java.lang.Object, int[], int[][]] */
    /* JADX WARN: Type inference failed for: r0v47, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v49, types: [int[][]] */
    /* renamed from: b */
    private static ColorStateList m6740b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int depth;
        int i;
        int depth2 = xmlPullParser.getDepth() + 1;
        int[] iArr = new int[20];
        int[] iArr2 = new int[iArr.length];
        int i2 = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            } else if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray m6743a = m6743a(resources, theme, attributeSet, C0404a.C0408d.ColorStateListItem);
                int color = m6743a.getColor(C0404a.C0408d.ColorStateListItem_android_color, -65281);
                float f = 1.0f;
                if (m6743a.hasValue(C0404a.C0408d.ColorStateListItem_android_alpha)) {
                    f = m6743a.getFloat(C0404a.C0408d.ColorStateListItem_android_alpha, 1.0f);
                } else if (m6743a.hasValue(C0404a.C0408d.ColorStateListItem_alpha)) {
                    f = m6743a.getFloat(C0404a.C0408d.ColorStateListItem_alpha, 1.0f);
                }
                m6743a.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr3 = new int[attributeCount];
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    i = i4;
                    if (i3 >= attributeCount) {
                        break;
                    }
                    int attributeNameResource = attributeSet.getAttributeNameResource(i3);
                    int i5 = i;
                    if (attributeNameResource != 16843173) {
                        i5 = i;
                        if (attributeNameResource != 16843551) {
                            i5 = i;
                            if (attributeNameResource != C0404a.C0405a.alpha) {
                                iArr3[i] = attributeSet.getAttributeBooleanValue(i3, false) ? attributeNameResource : -attributeNameResource;
                                i5 = i + 1;
                            }
                        }
                    }
                    i3++;
                    i4 = i5;
                }
                int[] trimStateSet = StateSet.trimStateSet(iArr3, i);
                iArr2 = C0419e.m6704a(iArr2, i2, m6745a(color, f));
                iArr = (int[][]) C0419e.m6703a((int[][]) iArr, i2, trimStateSet);
                i2++;
            }
        }
        int[] iArr4 = new int[i2];
        ?? r0 = new int[i2];
        System.arraycopy(iArr2, 0, iArr4, 0, i2);
        System.arraycopy(iArr, 0, r0, 0, i2);
        return new ColorStateList(r0, iArr4);
    }
}
