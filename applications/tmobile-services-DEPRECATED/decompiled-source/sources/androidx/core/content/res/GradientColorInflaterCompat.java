package androidx.core.content.res;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.C0189R;
import java.io.IOException;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/core/content/res/GradientColorInflaterCompat.class */
public final class GradientColorInflaterCompat {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/GradientColorInflaterCompat$ColorStops.class */
    public static final class ColorStops {

        /* renamed from: a */
        final int[] f3005a;

        /* renamed from: b */
        final float[] f3006b;

        ColorStops(@ColorInt int i, @ColorInt int i2) {
            this.f3005a = new int[]{i, i2};
            this.f3006b = new float[]{0.0f, 1.0f};
        }

        ColorStops(@ColorInt int i, @ColorInt int i2, @ColorInt int i3) {
            this.f3005a = new int[]{i, i2, i3};
            this.f3006b = new float[]{0.0f, 0.5f, 1.0f};
        }

        ColorStops(@NonNull List<Integer> list, @NonNull List<Float> list2) {
            int size = list.size();
            this.f3005a = new int[size];
            this.f3006b = new float[size];
            for (int i = 0; i < size; i++) {
                this.f3005a[i] = list.get(i).intValue();
                this.f3006b[i] = list2.get(i).floatValue();
            }
        }
    }

    private GradientColorInflaterCompat() {
    }

    /* renamed from: a */
    private static ColorStops m19620a(@Nullable ColorStops colorStops, @ColorInt int i, @ColorInt int i2, boolean z, @ColorInt int i3) {
        return colorStops != null ? colorStops : z ? new ColorStops(i, i3, i2) : new ColorStops(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static Shader m19619b(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws IOException, XmlPullParserException {
        String name = xmlPullParser.getName();
        if (name.equals("gradient")) {
            TypedArray k = TypedArrayUtils.m19592k(resources, theme, attributeSet, C0189R.styleable.GradientColor);
            float f = TypedArrayUtils.m19597f(k, xmlPullParser, "startX", C0189R.styleable.GradientColor_android_startX, 0.0f);
            float f2 = TypedArrayUtils.m19597f(k, xmlPullParser, "startY", C0189R.styleable.GradientColor_android_startY, 0.0f);
            float f3 = TypedArrayUtils.m19597f(k, xmlPullParser, "endX", C0189R.styleable.GradientColor_android_endX, 0.0f);
            float f4 = TypedArrayUtils.m19597f(k, xmlPullParser, "endY", C0189R.styleable.GradientColor_android_endY, 0.0f);
            float f5 = TypedArrayUtils.m19597f(k, xmlPullParser, "centerX", C0189R.styleable.GradientColor_android_centerX, 0.0f);
            float f6 = TypedArrayUtils.m19597f(k, xmlPullParser, "centerY", C0189R.styleable.GradientColor_android_centerY, 0.0f);
            int g = TypedArrayUtils.m19596g(k, xmlPullParser, "type", C0189R.styleable.GradientColor_android_type, 0);
            int b = TypedArrayUtils.m19601b(k, xmlPullParser, "startColor", C0189R.styleable.GradientColor_android_startColor, 0);
            boolean j = TypedArrayUtils.m19593j(xmlPullParser, "centerColor");
            int b2 = TypedArrayUtils.m19601b(k, xmlPullParser, "centerColor", C0189R.styleable.GradientColor_android_centerColor, 0);
            int b3 = TypedArrayUtils.m19601b(k, xmlPullParser, "endColor", C0189R.styleable.GradientColor_android_endColor, 0);
            int g2 = TypedArrayUtils.m19596g(k, xmlPullParser, "tileMode", C0189R.styleable.GradientColor_android_tileMode, 0);
            float f7 = TypedArrayUtils.m19597f(k, xmlPullParser, "gradientRadius", C0189R.styleable.GradientColor_android_gradientRadius, 0.0f);
            k.recycle();
            ColorStops a = m19620a(m19618c(resources, xmlPullParser, attributeSet, theme), b, b3, j, b2);
            if (g != 1) {
                return g != 2 ? new LinearGradient(f, f2, f3, f4, a.f3005a, a.f3006b, m19617d(g2)) : new SweepGradient(f5, f6, a.f3005a, a.f3006b);
            }
            if (f7 > 0.0f) {
                return new RadialGradient(f5, f6, f7, a.f3005a, a.f3006b, m19617d(g2));
            }
            throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00ea, code lost:
        throw new org.xmlpull.v1.XmlPullParserException(r6.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.core.content.res.GradientColorInflaterCompat.ColorStops m19618c(@androidx.annotation.NonNull android.content.res.Resources r5, @androidx.annotation.NonNull org.xmlpull.v1.XmlPullParser r6, @androidx.annotation.NonNull android.util.AttributeSet r7, @androidx.annotation.Nullable android.content.res.Resources.Theme r8) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.GradientColorInflaterCompat.m19618c(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):androidx.core.content.res.GradientColorInflaterCompat$ColorStops");
    }

    /* renamed from: d */
    private static Shader.TileMode m19617d(int i) {
        return i != 1 ? i != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.MIRROR : Shader.TileMode.REPEAT;
    }
}
