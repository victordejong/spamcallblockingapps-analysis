package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.Xml;
import androidx.core.C0214R;
import androidx.core.view.ViewCompat;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/core/content/res/ColorStateListInflaterCompat.class */
public final class ColorStateListInflaterCompat {
    private ColorStateListInflaterCompat() {
    }

    public static ColorStateList createFromXml(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return createFromXmlInner(resources, xmlPullParser, asAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static ColorStateList createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (name.equals("selector")) {
            return inflate(resources, xmlPullParser, attributeSet, theme);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
    }

    public static ColorStateList inflate(Resources resources, int i, Resources.Theme theme) {
        try {
            return createFromXml(resources, resources.getXml(i), theme);
        } catch (Exception e) {
            Log.e("CSLCompat", "Failed to inflate ColorStateList.", e);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.lang.Object, int[], int[][]] */
    /* JADX WARN: Type inference failed for: r0v46, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v48, types: [int[][]] */
    private static ColorStateList inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
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
                TypedArray obtainAttributes = obtainAttributes(resources, theme, attributeSet, C0214R.styleable.ColorStateListItem);
                int color = obtainAttributes.getColor(C0214R.styleable.ColorStateListItem_android_color, -65281);
                float f = 1.0f;
                if (obtainAttributes.hasValue(C0214R.styleable.ColorStateListItem_android_alpha)) {
                    f = obtainAttributes.getFloat(C0214R.styleable.ColorStateListItem_android_alpha, 1.0f);
                } else if (obtainAttributes.hasValue(C0214R.styleable.ColorStateListItem_alpha)) {
                    f = obtainAttributes.getFloat(C0214R.styleable.ColorStateListItem_alpha, 1.0f);
                }
                obtainAttributes.recycle();
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
                            if (attributeNameResource != C0214R.attr.alpha) {
                                iArr3[i] = attributeSet.getAttributeBooleanValue(i3, false) ? attributeNameResource : -attributeNameResource;
                                i5 = i + 1;
                            }
                        }
                    }
                    i3++;
                    i4 = i5;
                }
                int[] trimStateSet = StateSet.trimStateSet(iArr3, i);
                iArr2 = GrowingArrayUtils.append(iArr2, i2, modulateColorAlpha(color, f));
                iArr = (int[][]) GrowingArrayUtils.append((int[][]) iArr, i2, trimStateSet);
                i2++;
            }
        }
        int[] iArr4 = new int[i2];
        ?? r0 = new int[i2];
        System.arraycopy(iArr2, 0, iArr4, 0, i2);
        System.arraycopy(iArr, 0, r0, 0, i2);
        return new ColorStateList(r0, iArr4);
    }

    private static int modulateColorAlpha(int i, float f) {
        return (i & ViewCompat.MEASURED_SIZE_MASK) | (Math.round(Color.alpha(i) * f) << 24);
    }

    private static TypedArray obtainAttributes(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }
}
