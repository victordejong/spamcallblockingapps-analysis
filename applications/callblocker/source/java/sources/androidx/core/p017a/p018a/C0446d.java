package androidx.core.p017a.p018a;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import androidx.core.C0433a;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.core.a.a.d */
/* loaded from: classes-dex2jar.jar:androidx/core/a/a/d.class */
public final class C0446d {

    /* renamed from: androidx.core.a.a.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/a/a/d$a.class */
    public static final class C0447a {

        /* renamed from: a */
        final int[] f1743a;

        /* renamed from: b */
        final float[] f1744b;

        C0447a(int i, int i2) {
            this.f1743a = new int[]{i, i2};
            this.f1744b = new float[]{0.0f, 1.0f};
        }

        C0447a(int i, int i2, int i3) {
            this.f1743a = new int[]{i, i2, i3};
            this.f1744b = new float[]{0.0f, 0.5f, 1.0f};
        }

        C0447a(List<Integer> list, List<Float> list2) {
            int size = list.size();
            this.f1743a = new int[size];
            this.f1744b = new float[size];
            for (int i = 0; i < size; i++) {
                this.f1743a[i] = list.get(i).intValue();
                this.f1744b[i] = list2.get(i).floatValue();
            }
        }
    }

    /* renamed from: a */
    private static Shader.TileMode m20855a(int i) {
        Shader.TileMode tileMode;
        switch (i) {
            case 1:
                tileMode = Shader.TileMode.REPEAT;
                break;
            case 2:
                tileMode = Shader.TileMode.MIRROR;
                break;
            default:
                tileMode = Shader.TileMode.CLAMP;
                break;
        }
        return tileMode;
    }

    /* renamed from: a */
    public static Shader m20854a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        Shader sweepGradient;
        String name = xmlPullParser.getName();
        if (!name.equals("gradient")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
        }
        TypedArray m20840a = C0453g.m20840a(resources, theme, attributeSet, C0433a.C0437d.GradientColor);
        float m20836a = C0453g.m20836a(m20840a, xmlPullParser, "startX", C0433a.C0437d.GradientColor_android_startX, 0.0f);
        float m20836a2 = C0453g.m20836a(m20840a, xmlPullParser, "startY", C0433a.C0437d.GradientColor_android_startY, 0.0f);
        float m20836a3 = C0453g.m20836a(m20840a, xmlPullParser, "endX", C0433a.C0437d.GradientColor_android_endX, 0.0f);
        float m20836a4 = C0453g.m20836a(m20840a, xmlPullParser, "endY", C0433a.C0437d.GradientColor_android_endY, 0.0f);
        float m20836a5 = C0453g.m20836a(m20840a, xmlPullParser, "centerX", C0433a.C0437d.GradientColor_android_centerX, 0.0f);
        float m20836a6 = C0453g.m20836a(m20840a, xmlPullParser, "centerY", C0433a.C0437d.GradientColor_android_centerY, 0.0f);
        int m20835a = C0453g.m20835a(m20840a, xmlPullParser, "type", C0433a.C0437d.GradientColor_android_type, 0);
        int m20830b = C0453g.m20830b(m20840a, xmlPullParser, "startColor", C0433a.C0437d.GradientColor_android_startColor, 0);
        boolean m20832a = C0453g.m20832a(xmlPullParser, "centerColor");
        int m20830b2 = C0453g.m20830b(m20840a, xmlPullParser, "centerColor", C0433a.C0437d.GradientColor_android_centerColor, 0);
        int m20830b3 = C0453g.m20830b(m20840a, xmlPullParser, "endColor", C0433a.C0437d.GradientColor_android_endColor, 0);
        int m20835a2 = C0453g.m20835a(m20840a, xmlPullParser, "tileMode", C0433a.C0437d.GradientColor_android_tileMode, 0);
        float m20836a7 = C0453g.m20836a(m20840a, xmlPullParser, "gradientRadius", C0433a.C0437d.GradientColor_android_gradientRadius, 0.0f);
        m20840a.recycle();
        C0447a m20853a = m20853a(m20852b(resources, xmlPullParser, attributeSet, theme), m20830b, m20830b3, m20832a, m20830b2);
        switch (m20835a) {
            case 1:
                if (m20836a7 > 0.0f) {
                    sweepGradient = new RadialGradient(m20836a5, m20836a6, m20836a7, m20853a.f1743a, m20853a.f1744b, m20855a(m20835a2));
                    break;
                } else {
                    throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
                }
            case 2:
                sweepGradient = new SweepGradient(m20836a5, m20836a6, m20853a.f1743a, m20853a.f1744b);
                break;
            default:
                sweepGradient = new LinearGradient(m20836a, m20836a2, m20836a3, m20836a4, m20853a.f1743a, m20853a.f1744b, m20855a(m20835a2));
                break;
        }
        return sweepGradient;
    }

    /* renamed from: a */
    private static C0447a m20853a(C0447a c0447a, int i, int i2, boolean z, int i3) {
        if (c0447a == null) {
            c0447a = z ? new C0447a(i, i3, i2) : new C0447a(i, i2);
        }
        return c0447a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00e6, code lost:
        if (r0.size() <= 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00e9, code lost:
        r5 = new androidx.core.p017a.p018a.C0446d.C0447a(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00f6, code lost:
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00f7, code lost:
        r5 = null;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.core.p017a.p018a.C0446d.C0447a m20852b(android.content.res.Resources r5, org.xmlpull.v1.XmlPullParser r6, android.util.AttributeSet r7, android.content.res.Resources.Theme r8) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.p017a.p018a.C0446d.m20852b(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):androidx.core.a.a.d$a");
    }
}
