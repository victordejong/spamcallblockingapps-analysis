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
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.content.c.d */
/* loaded from: classes-dex2jar.jar:androidx/core/content/c/d.class */
public final class C0272d {

    /* JADX INFO: Access modifiers changed from: package-private */
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
    private static C0273a m13510a(C0273a aVar, int i, int i2, boolean z, int i3) {
        return aVar != null ? aVar : z ? new C0273a(i, i3, i2) : new C0273a(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static Shader m13509b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (name.equals("gradient")) {
            TypedArray k = C0282g.m13480k(resources, theme, attributeSet, d.GradientColor);
            float f = C0282g.m13485f(k, xmlPullParser, "startX", d.GradientColor_android_startX, 0.0f);
            float f2 = C0282g.m13485f(k, xmlPullParser, "startY", d.GradientColor_android_startY, 0.0f);
            float f3 = C0282g.m13485f(k, xmlPullParser, "endX", d.GradientColor_android_endX, 0.0f);
            float f4 = C0282g.m13485f(k, xmlPullParser, "endY", d.GradientColor_android_endY, 0.0f);
            float f5 = C0282g.m13485f(k, xmlPullParser, "centerX", d.GradientColor_android_centerX, 0.0f);
            float f6 = C0282g.m13485f(k, xmlPullParser, "centerY", d.GradientColor_android_centerY, 0.0f);
            int g = C0282g.m13484g(k, xmlPullParser, "type", d.GradientColor_android_type, 0);
            int b = C0282g.m13489b(k, xmlPullParser, "startColor", d.GradientColor_android_startColor, 0);
            boolean j = C0282g.m13481j(xmlPullParser, "centerColor");
            int b2 = C0282g.m13489b(k, xmlPullParser, "centerColor", d.GradientColor_android_centerColor, 0);
            int b3 = C0282g.m13489b(k, xmlPullParser, "endColor", d.GradientColor_android_endColor, 0);
            int g2 = C0282g.m13484g(k, xmlPullParser, "tileMode", d.GradientColor_android_tileMode, 0);
            float f7 = C0282g.m13485f(k, xmlPullParser, "gradientRadius", d.GradientColor_android_gradientRadius, 0.0f);
            k.recycle();
            C0273a a = m13510a(m13508c(resources, xmlPullParser, attributeSet, theme), b, b3, j, b2);
            if (g != 1) {
                return g != 2 ? new LinearGradient(f, f2, f3, f4, a.f1679a, a.f1680b, m13507d(g2)) : new SweepGradient(f5, f6, a.f1679a, a.f1680b);
            }
            if (f7 > 0.0f) {
                return new RadialGradient(f5, f6, f7, a.f1679a, a.f1680b, m13507d(g2));
            }
            throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
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
