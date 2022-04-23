package androidx.transition;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.util.AttributeSet;
import androidx.core.content.res.g;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/ArcMotion.class */
public class ArcMotion extends PathMotion {

    /* renamed from: a  reason: collision with root package name */
    private static final float f5677a = (float) Math.tan(Math.toRadians(35.0d));

    /* renamed from: b  reason: collision with root package name */
    private float f5678b;

    /* renamed from: c  reason: collision with root package name */
    private float f5679c;

    /* renamed from: d  reason: collision with root package name */
    private float f5680d;
    private float e;
    private float f;
    private float g;

    public ArcMotion() {
        this.f5678b = BitmapDescriptorFactory.HUE_RED;
        this.f5679c = BitmapDescriptorFactory.HUE_RED;
        this.f5680d = 70.0f;
        this.e = BitmapDescriptorFactory.HUE_RED;
        this.f = BitmapDescriptorFactory.HUE_RED;
        this.g = f5677a;
    }

    public ArcMotion(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5678b = BitmapDescriptorFactory.HUE_RED;
        this.f5679c = BitmapDescriptorFactory.HUE_RED;
        this.f5680d = 70.0f;
        this.e = BitmapDescriptorFactory.HUE_RED;
        this.f = BitmapDescriptorFactory.HUE_RED;
        this.g = f5677a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, s.j);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        float a2 = g.a(obtainStyledAttributes, xmlPullParser, "minimumVerticalAngle", 1, (float) BitmapDescriptorFactory.HUE_RED);
        this.f5679c = a2;
        this.f = a(a2);
        float a3 = g.a(obtainStyledAttributes, xmlPullParser, "minimumHorizontalAngle", 0, (float) BitmapDescriptorFactory.HUE_RED);
        this.f5678b = a3;
        this.e = a(a3);
        float a4 = g.a(obtainStyledAttributes, xmlPullParser, "maximumAngle", 2, 70.0f);
        this.f5680d = a4;
        this.g = a(a4);
        obtainStyledAttributes.recycle();
    }

    private static float a(float f) {
        if (f >= BitmapDescriptorFactory.HUE_RED && f <= 90.0f) {
            return (float) Math.tan(Math.toRadians(f / 2.0f));
        }
        throw new IllegalArgumentException("Arc must be between 0 and 90 degrees");
    }

    @Override // androidx.transition.PathMotion
    public final Path a(float f, float f2, float f3, float f4) {
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
            f6 = this.f;
        } else {
            float f14 = f10 / (f8 * 2.0f);
            if (z) {
                f7 = f2;
                f5 = f14 + f;
            } else {
                f5 = f3 - f14;
                f7 = f4;
            }
            f6 = this.e;
        }
        float f15 = f13 * f6 * f6;
        float f16 = f11 - f5;
        float f17 = f12 - f7;
        float f18 = (f16 * f16) + (f17 * f17);
        float f19 = this.g;
        float f20 = f13 * f19 * f19;
        if (f18 >= f15) {
            f15 = f18 > f20 ? f20 : BitmapDescriptorFactory.HUE_RED;
        }
        float f21 = f7;
        float f22 = f5;
        if (f15 != BitmapDescriptorFactory.HUE_RED) {
            float sqrt = (float) Math.sqrt(f15 / f18);
            f22 = ((f5 - f11) * sqrt) + f11;
            f21 = f12 + (sqrt * (f7 - f12));
        }
        path.cubicTo((f + f22) / 2.0f, (f2 + f21) / 2.0f, (f22 + f3) / 2.0f, (f21 + f4) / 2.0f, f3, f4);
        return path;
    }
}
