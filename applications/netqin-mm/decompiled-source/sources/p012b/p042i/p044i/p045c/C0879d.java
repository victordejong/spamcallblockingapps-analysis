package p012b.p042i.p044i.p045c;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import java.io.IOException;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p012b.p042i.C0837g;
/* renamed from: b.i.i.c.d */
/* loaded from: classes-dex2jar.jar:b/i/i/c/d.class */
public final class C0879d {

    /* renamed from: b.i.i.c.d$a */
    /* loaded from: classes-dex2jar.jar:b/i/i/c/d$a.class */
    public static final class C0880a {

        /* renamed from: a */
        public final int[] f4074a;

        /* renamed from: b */
        public final float[] f4075b;

        public C0880a(int i, int i2) {
            this.f4074a = new int[]{i, i2};
            this.f4075b = new float[]{0.0f, 1.0f};
        }

        public C0880a(int i, int i2, int i3) {
            this.f4074a = new int[]{i, i2, i3};
            this.f4075b = new float[]{0.0f, 0.5f, 1.0f};
        }

        public C0880a(List<Integer> list, List<Float> list2) {
            int size = list.size();
            this.f4074a = new int[size];
            this.f4075b = new float[size];
            for (int i = 0; i < size; i++) {
                this.f4074a[i] = list.get(i).intValue();
                this.f4075b[i] = list2.get(i).floatValue();
            }
        }
    }

    /* renamed from: a */
    public static Shader.TileMode m35644a(int i) {
        return i != 1 ? i != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.MIRROR : Shader.TileMode.REPEAT;
    }

    /* renamed from: a */
    public static Shader m35643a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws IOException, XmlPullParserException {
        String name = xmlPullParser.getName();
        if (name.equals("gradient")) {
            TypedArray a = C0889g.m35626a(resources, theme, attributeSet, C0837g.GradientColor);
            float a2 = C0889g.m35622a(a, xmlPullParser, "startX", C0837g.GradientColor_android_startX, 0.0f);
            float a3 = C0889g.m35622a(a, xmlPullParser, "startY", C0837g.GradientColor_android_startY, 0.0f);
            float a4 = C0889g.m35622a(a, xmlPullParser, "endX", C0837g.GradientColor_android_endX, 0.0f);
            float a5 = C0889g.m35622a(a, xmlPullParser, "endY", C0837g.GradientColor_android_endY, 0.0f);
            float a6 = C0889g.m35622a(a, xmlPullParser, "centerX", C0837g.GradientColor_android_centerX, 0.0f);
            float a7 = C0889g.m35622a(a, xmlPullParser, "centerY", C0837g.GradientColor_android_centerY, 0.0f);
            int b = C0889g.m35616b(a, xmlPullParser, "type", C0837g.GradientColor_android_type, 0);
            int a8 = C0889g.m35621a(a, xmlPullParser, "startColor", C0837g.GradientColor_android_startColor, 0);
            boolean a9 = C0889g.m35618a(xmlPullParser, "centerColor");
            int a10 = C0889g.m35621a(a, xmlPullParser, "centerColor", C0837g.GradientColor_android_centerColor, 0);
            int a11 = C0889g.m35621a(a, xmlPullParser, "endColor", C0837g.GradientColor_android_endColor, 0);
            int b2 = C0889g.m35616b(a, xmlPullParser, "tileMode", C0837g.GradientColor_android_tileMode, 0);
            float a12 = C0889g.m35622a(a, xmlPullParser, "gradientRadius", C0837g.GradientColor_android_gradientRadius, 0.0f);
            a.recycle();
            C0880a a13 = m35642a(m35641b(resources, xmlPullParser, attributeSet, theme), a8, a11, a9, a10);
            if (b != 1) {
                return b != 2 ? new LinearGradient(a2, a3, a4, a5, a13.f4074a, a13.f4075b, m35644a(b2)) : new SweepGradient(a6, a7, a13.f4074a, a13.f4075b);
            }
            if (a12 > 0.0f) {
                return new RadialGradient(a6, a7, a12, a13.f4074a, a13.f4075b, m35644a(b2));
            }
            throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
    }

    /* renamed from: a */
    public static C0880a m35642a(C0880a aVar, int i, int i2, boolean z, int i3) {
        return aVar != null ? aVar : z ? new C0880a(i, i3, i2) : new C0880a(i, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00ea, code lost:
        throw new org.xmlpull.v1.XmlPullParserException(r6.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p012b.p042i.p044i.p045c.C0879d.C0880a m35641b(android.content.res.Resources r5, org.xmlpull.v1.XmlPullParser r6, android.util.AttributeSet r7, android.content.res.Resources.Theme r8) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p042i.p044i.p045c.C0879d.m35641b(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):b.i.i.c.d$a");
    }
}
