package androidx.core.content.p007d;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p020b.p041h.C1521d;
/* renamed from: androidx.core.content.d.d */
/* loaded from: classes-dex2jar.jar:androidx/core/content/d/d.class */
public final class C0602d {

    /* renamed from: androidx.core.content.d.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/d/d$a.class */
    public static final class C0603a {

        /* renamed from: a */
        final int[] f2969a;

        /* renamed from: b */
        final float[] f2970b;

        C0603a(int i, int i2) {
            this.f2969a = new int[]{i, i2};
            this.f2970b = new float[]{0.0f, 1.0f};
        }

        C0603a(int i, int i2, int i3) {
            this.f2969a = new int[]{i, i2, i3};
            this.f2970b = new float[]{0.0f, 0.5f, 1.0f};
        }

        C0603a(List<Integer> list, List<Float> list2) {
            int size = list.size();
            this.f2969a = new int[size];
            this.f2970b = new float[size];
            for (int i = 0; i < size; i++) {
                this.f2969a[i] = list.get(i).intValue();
                this.f2970b[i] = list2.get(i).floatValue();
            }
        }
    }

    /* renamed from: a */
    private static C0603a m33284a(C0603a c0603a, int i, int i2, boolean z, int i3) {
        return c0603a != null ? c0603a : z ? new C0603a(i, i3, i2) : new C0603a(i, i2);
    }

    /* renamed from: b */
    public static Shader m33283b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (!name.equals("gradient")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
        }
        TypedArray m33249k = C0614g.m33249k(resources, theme, attributeSet, C1521d.GradientColor);
        float m33254f = C0614g.m33254f(m33249k, xmlPullParser, "startX", C1521d.GradientColor_android_startX, 0.0f);
        float m33254f2 = C0614g.m33254f(m33249k, xmlPullParser, "startY", C1521d.GradientColor_android_startY, 0.0f);
        float m33254f3 = C0614g.m33254f(m33249k, xmlPullParser, "endX", C1521d.GradientColor_android_endX, 0.0f);
        float m33254f4 = C0614g.m33254f(m33249k, xmlPullParser, "endY", C1521d.GradientColor_android_endY, 0.0f);
        float m33254f5 = C0614g.m33254f(m33249k, xmlPullParser, "centerX", C1521d.GradientColor_android_centerX, 0.0f);
        float m33254f6 = C0614g.m33254f(m33249k, xmlPullParser, "centerY", C1521d.GradientColor_android_centerY, 0.0f);
        int m33253g = C0614g.m33253g(m33249k, xmlPullParser, "type", C1521d.GradientColor_android_type, 0);
        int m33258b = C0614g.m33258b(m33249k, xmlPullParser, "startColor", C1521d.GradientColor_android_startColor, 0);
        boolean m33250j = C0614g.m33250j(xmlPullParser, "centerColor");
        int m33258b2 = C0614g.m33258b(m33249k, xmlPullParser, "centerColor", C1521d.GradientColor_android_centerColor, 0);
        int m33258b3 = C0614g.m33258b(m33249k, xmlPullParser, "endColor", C1521d.GradientColor_android_endColor, 0);
        int m33253g2 = C0614g.m33253g(m33249k, xmlPullParser, "tileMode", C1521d.GradientColor_android_tileMode, 0);
        float m33254f7 = C0614g.m33254f(m33249k, xmlPullParser, "gradientRadius", C1521d.GradientColor_android_gradientRadius, 0.0f);
        m33249k.recycle();
        C0603a m33284a = m33284a(m33282c(resources, xmlPullParser, attributeSet, theme), m33258b, m33258b3, m33250j, m33258b2);
        if (m33253g != 1) {
            return m33253g != 2 ? new LinearGradient(m33254f, m33254f2, m33254f3, m33254f4, m33284a.f2969a, m33284a.f2970b, m33281d(m33253g2)) : new SweepGradient(m33254f5, m33254f6, m33284a.f2969a, m33284a.f2970b);
        } else if (m33254f7 <= 0.0f) {
            throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
        } else {
            return new RadialGradient(m33254f5, m33254f6, m33254f7, m33284a.f2969a, m33284a.f2970b, m33281d(m33253g2));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00f0, code lost:
        throw new org.xmlpull.v1.XmlPullParserException(r6.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.core.content.p007d.C0602d.C0603a m33282c(android.content.res.Resources r5, org.xmlpull.v1.XmlPullParser r6, android.util.AttributeSet r7, android.content.res.Resources.Theme r8) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.p007d.C0602d.m33282c(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):androidx.core.content.d.d$a");
    }

    /* renamed from: d */
    private static Shader.TileMode m33281d(int i) {
        return i != 1 ? i != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.MIRROR : Shader.TileMode.REPEAT;
    }
}
