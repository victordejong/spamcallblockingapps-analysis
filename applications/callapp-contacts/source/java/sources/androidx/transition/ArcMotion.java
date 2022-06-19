package androidx.transition;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.util.AttributeSet;
import androidx.core.content.res.C0810g;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/ArcMotion.class */
public class ArcMotion extends PathMotion {

    /* renamed from: a */
    private static final float f10644a = (float) Math.tan(Math.toRadians(35.0d));

    /* renamed from: b */
    private float f10645b;

    /* renamed from: c */
    private float f10646c;

    /* renamed from: d */
    private float f10647d;

    /* renamed from: e */
    private float f10648e;

    /* renamed from: f */
    private float f10649f;

    /* renamed from: g */
    private float f10650g;

    public ArcMotion() {
        this.f10645b = BitmapDescriptorFactory.HUE_RED;
        this.f10646c = BitmapDescriptorFactory.HUE_RED;
        this.f10647d = 70.0f;
        this.f10648e = BitmapDescriptorFactory.HUE_RED;
        this.f10649f = BitmapDescriptorFactory.HUE_RED;
        this.f10650g = f10644a;
    }

    public ArcMotion(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10645b = BitmapDescriptorFactory.HUE_RED;
        this.f10646c = BitmapDescriptorFactory.HUE_RED;
        this.f10647d = 70.0f;
        this.f10648e = BitmapDescriptorFactory.HUE_RED;
        this.f10649f = BitmapDescriptorFactory.HUE_RED;
        this.f10650g = f10644a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2906s.f10916j);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        float m44455a = C0810g.m44455a(obtainStyledAttributes, xmlPullParser, "minimumVerticalAngle", 1, (float) BitmapDescriptorFactory.HUE_RED);
        this.f10646c = m44455a;
        this.f10649f = m39840a(m44455a);
        float m44455a2 = C0810g.m44455a(obtainStyledAttributes, xmlPullParser, "minimumHorizontalAngle", 0, (float) BitmapDescriptorFactory.HUE_RED);
        this.f10645b = m44455a2;
        this.f10648e = m39840a(m44455a2);
        float m44455a3 = C0810g.m44455a(obtainStyledAttributes, xmlPullParser, "maximumAngle", 2, 70.0f);
        this.f10647d = m44455a3;
        this.f10650g = m39840a(m44455a3);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private static float m39840a(float f) {
        if (f < BitmapDescriptorFactory.HUE_RED || f > 90.0f) {
            throw new IllegalArgumentException("Arc must be between 0 and 90 degrees");
        }
        return (float) Math.tan(Math.toRadians(f / 2.0f));
    }

    @Override // androidx.transition.PathMotion
    /* renamed from: a */
    public final Path mo39793a(float f, float f2, float f3, float f4) {
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
            f6 = this.f10649f;
        } else {
            float f14 = f10 / (f8 * 2.0f);
            if (z) {
                f7 = f2;
                f5 = f14 + f;
            } else {
                f5 = f3 - f14;
                f7 = f4;
            }
            f6 = this.f10648e;
        }
        float f15 = f13 * f6 * f6;
        float f16 = f11 - f5;
        float f17 = f12 - f7;
        float f18 = (f16 * f16) + (f17 * f17);
        float f19 = this.f10650g;
        float f20 = f13 * f19 * f19;
        if (f18 >= f15) {
            f15 = f18 > f20 ? f20 : 0.0f;
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
