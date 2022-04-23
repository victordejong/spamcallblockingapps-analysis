package androidx.l.a.a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import androidx.core.graphics.c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/l/a/a/g.class */
public final class g implements Interpolator {

    /* renamed from: a  reason: collision with root package name */
    private float[] f2498a;

    /* renamed from: b  reason: collision with root package name */
    private float[] f2499b;

    public g(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    public g(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray a2 = androidx.core.content.res.g.a(resources, theme, attributeSet, a.l);
        if (androidx.core.content.res.g.a(xmlPullParser, "pathData")) {
            String c2 = androidx.core.content.res.g.c(a2, xmlPullParser, "pathData", 4);
            Path a3 = c.a(c2);
            if (a3 != null) {
                a(a3);
            } else {
                throw new InflateException("The path is null, which is created from ".concat(String.valueOf(c2)));
            }
        } else if (!androidx.core.content.res.g.a(xmlPullParser, "controlX1")) {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        } else if (androidx.core.content.res.g.a(xmlPullParser, "controlY1")) {
            float a4 = androidx.core.content.res.g.a(a2, xmlPullParser, "controlX1", 0, (float) BitmapDescriptorFactory.HUE_RED);
            float a5 = androidx.core.content.res.g.a(a2, xmlPullParser, "controlY1", 1, (float) BitmapDescriptorFactory.HUE_RED);
            boolean a6 = androidx.core.content.res.g.a(xmlPullParser, "controlX2");
            if (a6 != androidx.core.content.res.g.a(xmlPullParser, "controlY2")) {
                throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
            } else if (!a6) {
                Path path = new Path();
                path.moveTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                path.quadTo(a4, a5, 1.0f, 1.0f);
                a(path);
            } else {
                float a7 = androidx.core.content.res.g.a(a2, xmlPullParser, "controlX2", 2, (float) BitmapDescriptorFactory.HUE_RED);
                float a8 = androidx.core.content.res.g.a(a2, xmlPullParser, "controlY2", 3, (float) BitmapDescriptorFactory.HUE_RED);
                Path path2 = new Path();
                path2.moveTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                path2.cubicTo(a4, a5, a7, a8, 1.0f, 1.0f);
                a(path2);
            }
        } else {
            throw new InflateException("pathInterpolator requires the controlY1 attribute");
        }
        a2.recycle();
    }

    private void a(Path path) {
        int i = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int min = Math.min(3000, ((int) (length / 0.002f)) + 1);
        if (min > 0) {
            this.f2498a = new float[min];
            this.f2499b = new float[min];
            float[] fArr = new float[2];
            for (int i2 = 0; i2 < min; i2++) {
                pathMeasure.getPosTan((i2 * length) / (min - 1), fArr, null);
                this.f2498a[i2] = fArr[0];
                this.f2499b[i2] = fArr[1];
            }
            if (Math.abs(this.f2498a[0]) <= 1.0E-5d && Math.abs(this.f2499b[0]) <= 1.0E-5d) {
                int i3 = min - 1;
                if (Math.abs(this.f2498a[i3] - 1.0f) <= 1.0E-5d && Math.abs(this.f2499b[i3] - 1.0f) <= 1.0E-5d) {
                    float f = BitmapDescriptorFactory.HUE_RED;
                    int i4 = 0;
                    while (i < min) {
                        float[] fArr2 = this.f2498a;
                        float f2 = fArr2[i4];
                        if (f2 >= f) {
                            fArr2[i] = f2;
                            i++;
                            f = f2;
                            i4++;
                        } else {
                            throw new IllegalArgumentException("The Path cannot loop back on itself, x :".concat(String.valueOf(f2)));
                        }
                    }
                    if (pathMeasure.nextContour()) {
                        throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
                    }
                    return;
                }
            }
            StringBuilder sb = new StringBuilder("The Path must start at (0,0) and end at (1,1) start: ");
            sb.append(this.f2498a[0]);
            sb.append(",");
            sb.append(this.f2499b[0]);
            sb.append(" end:");
            int i5 = min - 1;
            sb.append(this.f2498a[i5]);
            sb.append(",");
            sb.append(this.f2499b[i5]);
            throw new IllegalArgumentException(sb.toString());
        }
        throw new IllegalArgumentException("The Path has a invalid length ".concat(String.valueOf(length)));
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int i = 0;
        int length = this.f2498a.length - 1;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f < this.f2498a[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float[] fArr = this.f2498a;
        float f2 = fArr[length] - fArr[i];
        if (f2 == BitmapDescriptorFactory.HUE_RED) {
            return this.f2499b[i];
        }
        float f3 = (f - fArr[i]) / f2;
        float[] fArr2 = this.f2499b;
        float f4 = fArr2[i];
        return f4 + (f3 * (fArr2[length] - f4));
    }
}
