package androidx.transition;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.util.AttributeSet;
import androidx.core.content.res.TypedArrayUtils;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/ArcMotion.class */
public class ArcMotion extends PathMotion {

    /* renamed from: d */
    private static final float f5061d = (float) Math.tan(Math.toRadians(35.0d));

    /* renamed from: a */
    private float f5062a = 0.0f;

    /* renamed from: b */
    private float f5063b = 0.0f;

    /* renamed from: c */
    private float f5064c = f5061d;

    public ArcMotion() {
    }

    @SuppressLint({"RestrictedApi"})
    public ArcMotion(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.f5206h);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        m16907d(TypedArrayUtils.m19597f(obtainStyledAttributes, xmlPullParser, "minimumVerticalAngle", 1, 0.0f));
        m16908c(TypedArrayUtils.m19597f(obtainStyledAttributes, xmlPullParser, "minimumHorizontalAngle", 0, 0.0f));
        m16909b(TypedArrayUtils.m19597f(obtainStyledAttributes, xmlPullParser, "maximumAngle", 2, 70.0f));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: e */
    private static float m16906e(float f) {
        if (f >= 0.0f && f <= 90.0f) {
            return (float) Math.tan(Math.toRadians(f / 2.0f));
        }
        throw new IllegalArgumentException("Arc must be between 0 and 90 degrees");
    }

    @Override // androidx.transition.PathMotion
    /* renamed from: a */
    public Path mo8631a(float f, float f2, float f3, float f4) {
        float f5;
        float f6;
        float f7;
        Path path = new Path();
        path.moveTo(f, f2);
        float f8 = f3 - f;
        float f9 = f4 - f2;
        float f10 = (f8 * f8) + (f9 * f9);
        float f11 = (f + f3) / 2.0f;
        float f12 = (f2 + f4) / 2.0f;
        float f13 = 0.25f * f10;
        boolean z = f2 > f4;
        if (Math.abs(f8) < Math.abs(f9)) {
            float abs = Math.abs(f10 / (f9 * 2.0f));
            if (z) {
                f6 = abs + f4;
                f7 = f3;
            } else {
                f6 = abs + f2;
                f7 = f;
            }
            f5 = this.f5063b;
        } else {
            float f14 = f10 / (f8 * 2.0f);
            if (z) {
                f6 = f2;
                f7 = f14 + f;
            } else {
                f7 = f3 - f14;
                f6 = f4;
            }
            f5 = this.f5062a;
        }
        float f15 = f13 * f5 * f5;
        float f16 = f11 - f7;
        float f17 = f12 - f6;
        float f18 = (f16 * f16) + (f17 * f17);
        float f19 = this.f5064c;
        float f20 = f13 * f19 * f19;
        if (f18 >= f15) {
            f15 = f18 > f20 ? f20 : 0.0f;
        }
        float f21 = f6;
        float f22 = f7;
        if (f15 != 0.0f) {
            float sqrt = (float) Math.sqrt(f15 / f18);
            f22 = ((f7 - f11) * sqrt) + f11;
            f21 = f12 + (sqrt * (f6 - f12));
        }
        path.cubicTo((f + f22) / 2.0f, (f2 + f21) / 2.0f, (f22 + f3) / 2.0f, (f21 + f4) / 2.0f, f3, f4);
        return path;
    }

    /* renamed from: b */
    public void m16909b(float f) {
        this.f5064c = m16906e(f);
    }

    /* renamed from: c */
    public void m16908c(float f) {
        this.f5062a = m16906e(f);
    }

    /* renamed from: d */
    public void m16907d(float f) {
        this.f5063b = m16906e(f);
    }
}
