package androidx.transition;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.util.AttributeSet;
import androidx.core.content.p007d.C0614g;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/ArcMotion.class */
public class ArcMotion extends PathMotion {

    /* renamed from: a */
    private static final float f4706a = (float) Math.tan(Math.toRadians(35.0d));

    /* renamed from: b */
    private float f4707b = 0.0f;

    /* renamed from: c */
    private float f4708c = 0.0f;

    /* renamed from: d */
    private float f4709d = 70.0f;

    /* renamed from: e */
    private float f4710e = 0.0f;

    /* renamed from: f */
    private float f4711f = 0.0f;

    /* renamed from: g */
    private float f4712g = f4706a;

    public ArcMotion() {
    }

    @SuppressLint({"RestrictedApi"})
    public ArcMotion(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1166t.f4980j);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        m31081d(C0614g.m33254f(obtainStyledAttributes, xmlPullParser, "minimumVerticalAngle", 1, 0.0f));
        m31082c(C0614g.m33254f(obtainStyledAttributes, xmlPullParser, "minimumHorizontalAngle", 0, 0.0f));
        m31083b(C0614g.m33254f(obtainStyledAttributes, xmlPullParser, "maximumAngle", 2, 70.0f));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: e */
    private static float m31080e(float f) {
        if (f < 0.0f || f > 90.0f) {
            throw new IllegalArgumentException("Arc must be between 0 and 90 degrees");
        }
        return (float) Math.tan(Math.toRadians(f / 2.0f));
    }

    @Override // androidx.transition.PathMotion
    /* renamed from: a */
    public Path mo30984a(float f, float f2, float f3, float f4) {
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
                f7 = abs + f4;
                f5 = f3;
            } else {
                f7 = abs + f2;
                f5 = f;
            }
            f6 = this.f4711f;
        } else {
            float f14 = f10 / (f8 * 2.0f);
            if (z) {
                f7 = f2;
                f5 = f14 + f;
            } else {
                f5 = f3 - f14;
                f7 = f4;
            }
            f6 = this.f4710e;
        }
        float f15 = f13 * f6 * f6;
        float f16 = f11 - f5;
        float f17 = f12 - f7;
        float f18 = (f16 * f16) + (f17 * f17);
        float f19 = this.f4712g;
        float f20 = f13 * f19 * f19;
        if (f18 >= f15) {
            f15 = f18 > f20 ? f20 : 0.0f;
        }
        float f21 = f7;
        float f22 = f5;
        if (f15 != 0.0f) {
            float sqrt = (float) Math.sqrt(f15 / f18);
            f22 = ((f5 - f11) * sqrt) + f11;
            f21 = f12 + (sqrt * (f7 - f12));
        }
        path.cubicTo((f + f22) / 2.0f, (f2 + f21) / 2.0f, (f22 + f3) / 2.0f, (f21 + f4) / 2.0f, f3, f4);
        return path;
    }

    /* renamed from: b */
    public void m31083b(float f) {
        this.f4709d = f;
        this.f4712g = m31080e(f);
    }

    /* renamed from: c */
    public void m31082c(float f) {
        this.f4707b = f;
        this.f4710e = m31080e(f);
    }

    /* renamed from: d */
    public void m31081d(float f) {
        this.f4708c = f;
        this.f4711f = m31080e(f);
    }
}
