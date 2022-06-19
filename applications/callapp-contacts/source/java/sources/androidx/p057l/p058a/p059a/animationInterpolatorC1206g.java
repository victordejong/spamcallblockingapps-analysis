package androidx.p057l.p058a.p059a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import androidx.core.content.res.C0810g;
import androidx.core.graphics.C0836c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.l.a.a.g */
/* loaded from: classes-dex2jar.jar:androidx/l/a/a/g.class */
public final class animationInterpolatorC1206g implements Interpolator {

    /* renamed from: a */
    private float[] f4691a;

    /* renamed from: b */
    private float[] f4692b;

    public animationInterpolatorC1206g(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    public animationInterpolatorC1206g(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray m44459a = C0810g.m44459a(resources, theme, attributeSet, C1195a.f4675l);
        if (C0810g.m44452a(xmlPullParser, "pathData")) {
            String m44450c = C0810g.m44450c(m44459a, xmlPullParser, "pathData", 4);
            Path m44391a = C0836c.m44391a(m44450c);
            if (m44391a == null) {
                throw new InflateException("The path is null, which is created from ".concat(String.valueOf(m44450c)));
            }
            m43358a(m44391a);
        } else if (!C0810g.m44452a(xmlPullParser, "controlX1")) {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        } else {
            if (!C0810g.m44452a(xmlPullParser, "controlY1")) {
                throw new InflateException("pathInterpolator requires the controlY1 attribute");
            }
            float m44455a = C0810g.m44455a(m44459a, xmlPullParser, "controlX1", 0, (float) BitmapDescriptorFactory.HUE_RED);
            float m44455a2 = C0810g.m44455a(m44459a, xmlPullParser, "controlY1", 1, (float) BitmapDescriptorFactory.HUE_RED);
            boolean m44452a = C0810g.m44452a(xmlPullParser, "controlX2");
            if (m44452a != C0810g.m44452a(xmlPullParser, "controlY2")) {
                throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
            }
            if (!m44452a) {
                Path path = new Path();
                path.moveTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                path.quadTo(m44455a, m44455a2, 1.0f, 1.0f);
                m43358a(path);
            } else {
                float m44455a3 = C0810g.m44455a(m44459a, xmlPullParser, "controlX2", 2, (float) BitmapDescriptorFactory.HUE_RED);
                float m44455a4 = C0810g.m44455a(m44459a, xmlPullParser, "controlY2", 3, (float) BitmapDescriptorFactory.HUE_RED);
                Path path2 = new Path();
                path2.moveTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                path2.cubicTo(m44455a, m44455a2, m44455a3, m44455a4, 1.0f, 1.0f);
                m43358a(path2);
            }
        }
        m44459a.recycle();
    }

    /* renamed from: a */
    private void m43358a(Path path) {
        int i = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int min = Math.min(3000, ((int) (length / 0.002f)) + 1);
        if (min > 0) {
            this.f4691a = new float[min];
            this.f4692b = new float[min];
            float[] fArr = new float[2];
            for (int i2 = 0; i2 < min; i2++) {
                pathMeasure.getPosTan((i2 * length) / (min - 1), fArr, null);
                this.f4691a[i2] = fArr[0];
                this.f4692b[i2] = fArr[1];
            }
            if (Math.abs(this.f4691a[0]) <= 1.0E-5d && Math.abs(this.f4692b[0]) <= 1.0E-5d) {
                int i3 = min - 1;
                if (Math.abs(this.f4691a[i3] - 1.0f) <= 1.0E-5d && Math.abs(this.f4692b[i3] - 1.0f) <= 1.0E-5d) {
                    float f = 0.0f;
                    int i4 = 0;
                    while (i < min) {
                        float[] fArr2 = this.f4691a;
                        float f2 = fArr2[i4];
                        if (f2 < f) {
                            throw new IllegalArgumentException("The Path cannot loop back on itself, x :".concat(String.valueOf(f2)));
                        }
                        fArr2[i] = f2;
                        i++;
                        f = f2;
                        i4++;
                    }
                    if (pathMeasure.nextContour()) {
                        throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
                    }
                    return;
                }
            }
            StringBuilder sb = new StringBuilder("The Path must start at (0,0) and end at (1,1) start: ");
            sb.append(this.f4691a[0]);
            sb.append(",");
            sb.append(this.f4692b[0]);
            sb.append(" end:");
            int i5 = min - 1;
            sb.append(this.f4691a[i5]);
            sb.append(",");
            sb.append(this.f4692b[i5]);
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
        int length = this.f4691a.length - 1;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f < this.f4691a[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float[] fArr = this.f4691a;
        float f2 = fArr[length] - fArr[i];
        if (f2 == BitmapDescriptorFactory.HUE_RED) {
            return this.f4692b[i];
        }
        float f3 = (f - fArr[i]) / f2;
        float[] fArr2 = this.f4692b;
        float f4 = fArr2[i];
        return f4 + (f3 * (fArr2[length] - f4));
    }
}
