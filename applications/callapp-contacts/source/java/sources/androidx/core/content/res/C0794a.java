package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.Xml;
import androidx.core.C0707a;
import java.io.IOException;
import java.lang.reflect.Array;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.core.content.res.a */
/* loaded from: classes-dex2jar.jar:androidx/core/content/res/a.class */
public final class C0794a {
    private C0794a() {
    }

    /* renamed from: a */
    public static ColorStateList m44487a(Resources resources, int i, Resources.Theme theme) {
        try {
            return m44486a(resources, resources.getXml(i), theme);
        } catch (Exception e) {
            Log.e("CSLCompat", "Failed to inflate ColorStateList.", e);
            return null;
        }
    }

    /* renamed from: a */
    public static ColorStateList m44486a(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return m44485a(resources, xmlPullParser, asAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: a */
    public static ColorStateList m44485a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (name.equals("selector")) {
            return m44484b(resources, xmlPullParser, attributeSet, theme);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [int[], int[][], java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v59, types: [int[][]] */
    /* JADX WARN: Type inference failed for: r0v66, types: [java.lang.Object[]] */
    /* renamed from: b */
    private static ColorStateList m44484b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth;
        int i;
        int depth2 = xmlPullParser.getDepth() + 1;
        int[] iArr = new int[20];
        int[] iArr2 = new int[20];
        int i2 = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            } else if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                int[] iArr3 = C0707a.C0711d.ColorStateListItem;
                TypedArray obtainAttributes = theme == null ? resources.obtainAttributes(attributeSet, iArr3) : theme.obtainStyledAttributes(attributeSet, iArr3, 0, 0);
                int color = obtainAttributes.getColor(C0707a.C0711d.ColorStateListItem_android_color, -65281);
                float f = 1.0f;
                if (obtainAttributes.hasValue(C0707a.C0711d.ColorStateListItem_android_alpha)) {
                    f = obtainAttributes.getFloat(C0707a.C0711d.ColorStateListItem_android_alpha, 1.0f);
                } else if (obtainAttributes.hasValue(C0707a.C0711d.ColorStateListItem_alpha)) {
                    f = obtainAttributes.getFloat(C0707a.C0711d.ColorStateListItem_alpha, 1.0f);
                }
                obtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr4 = new int[attributeCount];
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
                            if (attributeNameResource != C0707a.C0708a.alpha) {
                                iArr4[i] = attributeSet.getAttributeBooleanValue(i3, false) ? attributeNameResource : -attributeNameResource;
                                i5 = i + 1;
                            }
                        }
                    }
                    i3++;
                    i4 = i5;
                }
                int[] trimStateSet = StateSet.trimStateSet(iArr4, i);
                int round = Math.round(Color.alpha(color) * f);
                int i6 = i2 + 1;
                int[] iArr5 = iArr2;
                if (i6 > iArr2.length) {
                    iArr5 = new int[C0803e.m44469a(i2)];
                    System.arraycopy(iArr2, 0, iArr5, 0, i2);
                }
                iArr5[i2] = (round << 24) | (color & 16777215);
                int[] iArr6 = iArr;
                if (i6 > iArr.length) {
                    iArr6 = (Object[]) Array.newInstance(iArr.getClass().getComponentType(), C0803e.m44469a(i2));
                    System.arraycopy(iArr, 0, iArr6, 0, i2);
                }
                iArr6[i2] = trimStateSet;
                iArr = (int[][]) iArr6;
                i2 = i6;
                iArr2 = iArr5;
            }
        }
        int[] iArr7 = new int[i2];
        ?? r0 = new int[i2];
        System.arraycopy(iArr2, 0, iArr7, 0, i2);
        System.arraycopy(iArr, 0, r0, 0, i2);
        return new ColorStateList(r0, iArr7);
    }
}
