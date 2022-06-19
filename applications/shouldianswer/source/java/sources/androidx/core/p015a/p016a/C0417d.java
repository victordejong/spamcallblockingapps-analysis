package androidx.core.p015a.p016a;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import androidx.core.C0404a;
import com.google.android.flexbox.FlexItem;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.core.a.a.d */
/* loaded from: classes-dex2jar.jar:androidx/core/a/a/d.class */
public final class C0417d {

    /* renamed from: androidx.core.a.a.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/a/a/d$a.class */
    public static final class C0418a {

        /* renamed from: a */
        final int[] f1563a;

        /* renamed from: b */
        final float[] f1564b;

        C0418a(int i, int i2) {
            this.f1563a = new int[]{i, i2};
            this.f1564b = new float[]{FlexItem.FLEX_GROW_DEFAULT, 1.0f};
        }

        C0418a(int i, int i2, int i3) {
            this.f1563a = new int[]{i, i2, i3};
            this.f1564b = new float[]{FlexItem.FLEX_GROW_DEFAULT, 0.5f, 1.0f};
        }

        C0418a(List<Integer> list, List<Float> list2) {
            int size = list.size();
            this.f1563a = new int[size];
            this.f1564b = new float[size];
            for (int i = 0; i < size; i++) {
                this.f1563a[i] = list.get(i).intValue();
                this.f1564b[i] = list2.get(i).floatValue();
            }
        }
    }

    /* renamed from: a */
    private static Shader.TileMode m6709a(int i) {
        return i != 1 ? i != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.MIRROR : Shader.TileMode.REPEAT;
    }

    /* renamed from: a */
    public static Shader m6708a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (!name.equals("gradient")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
        }
        TypedArray m6696a = C0424g.m6696a(resources, theme, attributeSet, C0404a.C0408d.GradientColor);
        float m6692a = C0424g.m6692a(m6696a, xmlPullParser, "startX", C0404a.C0408d.GradientColor_android_startX, (float) FlexItem.FLEX_GROW_DEFAULT);
        float m6692a2 = C0424g.m6692a(m6696a, xmlPullParser, "startY", C0404a.C0408d.GradientColor_android_startY, (float) FlexItem.FLEX_GROW_DEFAULT);
        float m6692a3 = C0424g.m6692a(m6696a, xmlPullParser, "endX", C0404a.C0408d.GradientColor_android_endX, (float) FlexItem.FLEX_GROW_DEFAULT);
        float m6692a4 = C0424g.m6692a(m6696a, xmlPullParser, "endY", C0404a.C0408d.GradientColor_android_endY, (float) FlexItem.FLEX_GROW_DEFAULT);
        float m6692a5 = C0424g.m6692a(m6696a, xmlPullParser, "centerX", C0404a.C0408d.GradientColor_android_centerX, (float) FlexItem.FLEX_GROW_DEFAULT);
        float m6692a6 = C0424g.m6692a(m6696a, xmlPullParser, "centerY", C0404a.C0408d.GradientColor_android_centerY, (float) FlexItem.FLEX_GROW_DEFAULT);
        int m6691a = C0424g.m6691a(m6696a, xmlPullParser, "type", C0404a.C0408d.GradientColor_android_type, 0);
        int m6686b = C0424g.m6686b(m6696a, xmlPullParser, "startColor", C0404a.C0408d.GradientColor_android_startColor, 0);
        boolean m6688a = C0424g.m6688a(xmlPullParser, "centerColor");
        int m6686b2 = C0424g.m6686b(m6696a, xmlPullParser, "centerColor", C0404a.C0408d.GradientColor_android_centerColor, 0);
        int m6686b3 = C0424g.m6686b(m6696a, xmlPullParser, "endColor", C0404a.C0408d.GradientColor_android_endColor, 0);
        int m6691a2 = C0424g.m6691a(m6696a, xmlPullParser, "tileMode", C0404a.C0408d.GradientColor_android_tileMode, 0);
        float m6692a7 = C0424g.m6692a(m6696a, xmlPullParser, "gradientRadius", C0404a.C0408d.GradientColor_android_gradientRadius, (float) FlexItem.FLEX_GROW_DEFAULT);
        m6696a.recycle();
        C0418a m6707a = m6707a(m6706b(resources, xmlPullParser, attributeSet, theme), m6686b, m6686b3, m6688a, m6686b2);
        if (m6691a != 1) {
            return m6691a != 2 ? new LinearGradient(m6692a, m6692a2, m6692a3, m6692a4, m6707a.f1563a, m6707a.f1564b, m6709a(m6691a2)) : new SweepGradient(m6692a5, m6692a6, m6707a.f1563a, m6707a.f1564b);
        } else if (m6692a7 <= FlexItem.FLEX_GROW_DEFAULT) {
            throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
        } else {
            return new RadialGradient(m6692a5, m6692a6, m6692a7, m6707a.f1563a, m6707a.f1564b, m6709a(m6691a2));
        }
    }

    /* renamed from: a */
    private static C0418a m6707a(C0418a c0418a, int i, int i2, boolean z, int i3) {
        return c0418a != null ? c0418a : z ? new C0418a(i, i3, i2) : new C0418a(i, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00ea, code lost:
        throw new org.xmlpull.v1.XmlPullParserException(r6.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.core.p015a.p016a.C0417d.C0418a m6706b(android.content.res.Resources r5, org.xmlpull.v1.XmlPullParser r6, android.util.AttributeSet r7, android.content.res.Resources.Theme r8) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.p015a.p016a.C0417d.m6706b(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):androidx.core.a.a.d$a");
    }
}
