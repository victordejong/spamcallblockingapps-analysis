package androidx.core.content.p003c;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import d.h.d;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.core.content.c.d */
/* loaded from: classes-dex2jar.jar:androidx/core/content/c/d.class */
public final class C0272d {

    /* renamed from: androidx.core.content.c.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/c/d$a.class */
    public static final class C0273a {

        /* renamed from: a */
        final int[] f1679a;

        /* renamed from: b */
        final float[] f1680b;

        C0273a(int i, int i2) {
            this.f1679a = new int[]{i, i2};
            this.f1680b = new float[]{0.0f, 1.0f};
        }

        C0273a(int i, int i2, int i3) {
            this.f1679a = new int[]{i, i2, i3};
            this.f1680b = new float[]{0.0f, 0.5f, 1.0f};
        }

        C0273a(List<Integer> list, List<Float> list2) {
            int size = list.size();
            this.f1679a = new int[size];
            this.f1680b = new float[size];
            for (int i = 0; i < size; i++) {
                this.f1679a[i] = list.get(i).intValue();
                this.f1680b[i] = list2.get(i).floatValue();
            }
        }
    }

    /* renamed from: a */
    private static C0273a m13510a(C0273a c0273a, int i, int i2, boolean z, int i3) {
        return c0273a != null ? c0273a : z ? new C0273a(i, i3, i2) : new C0273a(i, i2);
    }

    /* renamed from: b */
    public static Shader m13509b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (!name.equals("gradient")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
        }
        TypedArray m13480k = C0282g.m13480k(resources, theme, attributeSet, d.GradientColor);
        float m13485f = C0282g.m13485f(m13480k, xmlPullParser, "startX", d.GradientColor_android_startX, 0.0f);
        float m13485f2 = C0282g.m13485f(m13480k, xmlPullParser, "startY", d.GradientColor_android_startY, 0.0f);
        float m13485f3 = C0282g.m13485f(m13480k, xmlPullParser, "endX", d.GradientColor_android_endX, 0.0f);
        float m13485f4 = C0282g.m13485f(m13480k, xmlPullParser, "endY", d.GradientColor_android_endY, 0.0f);
        float m13485f5 = C0282g.m13485f(m13480k, xmlPullParser, "centerX", d.GradientColor_android_centerX, 0.0f);
        float m13485f6 = C0282g.m13485f(m13480k, xmlPullParser, "centerY", d.GradientColor_android_centerY, 0.0f);
        int m13484g = C0282g.m13484g(m13480k, xmlPullParser, "type", d.GradientColor_android_type, 0);
        int m13489b = C0282g.m13489b(m13480k, xmlPullParser, "startColor", d.GradientColor_android_startColor, 0);
        boolean m13481j = C0282g.m13481j(xmlPullParser, "centerColor");
        int m13489b2 = C0282g.m13489b(m13480k, xmlPullParser, "centerColor", d.GradientColor_android_centerColor, 0);
        int m13489b3 = C0282g.m13489b(m13480k, xmlPullParser, "endColor", d.GradientColor_android_endColor, 0);
        int m13484g2 = C0282g.m13484g(m13480k, xmlPullParser, "tileMode", d.GradientColor_android_tileMode, 0);
        float m13485f7 = C0282g.m13485f(m13480k, xmlPullParser, "gradientRadius", d.GradientColor_android_gradientRadius, 0.0f);
        m13480k.recycle();
        C0273a m13510a = m13510a(m13508c(resources, xmlPullParser, attributeSet, theme), m13489b, m13489b3, m13481j, m13489b2);
        if (m13484g != 1) {
            return m13484g != 2 ? new LinearGradient(m13485f, m13485f2, m13485f3, m13485f4, m13510a.f1679a, m13510a.f1680b, m13507d(m13484g2)) : new SweepGradient(m13485f5, m13485f6, m13510a.f1679a, m13510a.f1680b);
        } else if (m13485f7 <= 0.0f) {
            throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
        } else {
            return new RadialGradient(m13485f5, m13485f6, m13485f7, m13510a.f1679a, m13510a.f1680b, m13507d(m13484g2));
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
    private static androidx.core.content.p003c.C0272d.C0273a m13508c(android.content.res.Resources r5, org.xmlpull.v1.XmlPullParser r6, android.util.AttributeSet r7, android.content.res.Resources.Theme r8) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.p003c.C0272d.m13508c(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):androidx.core.content.c.d$a");
    }

    /* renamed from: d */
    private static Shader.TileMode m13507d(int i) {
        return i != 1 ? i != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.MIRROR : Shader.TileMode.REPEAT;
    }
}
