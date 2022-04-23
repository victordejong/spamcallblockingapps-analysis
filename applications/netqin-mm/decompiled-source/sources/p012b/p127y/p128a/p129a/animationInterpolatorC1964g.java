package p012b.p127y.p128a.p129a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import com.android.volley.toolbox.BasicNetwork;
import org.xmlpull.v1.XmlPullParser;
import p012b.p042i.p044i.p045c.C0889g;
import p012b.p042i.p046j.C0893d;
/* renamed from: b.y.a.a.g  reason: invalid class name */
/* loaded from: classes-dex2jar.jar:b/y/a/a/g.class */
public class animationInterpolatorC1964g implements Interpolator {

    /* renamed from: a */
    public float[] f7716a;

    /* renamed from: b */
    public float[] f7717b;

    public animationInterpolatorC1964g(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    public animationInterpolatorC1964g(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray a = C0889g.m35626a(resources, theme, attributeSet, C1954a.f7702l);
        m31432a(a, xmlPullParser);
        a.recycle();
    }

    /* renamed from: a */
    public final void m31434a(float f, float f2) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f, f2, 1.0f, 1.0f);
        m31431a(path);
    }

    /* renamed from: a */
    public final void m31433a(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f, f2, f3, f4, 1.0f, 1.0f);
        m31431a(path);
    }

    /* renamed from: a */
    public final void m31432a(TypedArray typedArray, XmlPullParser xmlPullParser) {
        if (C0889g.m35618a(xmlPullParser, "pathData")) {
            String a = C0889g.m35623a(typedArray, xmlPullParser, "pathData", 4);
            Path b = C0893d.m35591b(a);
            if (b != null) {
                m31431a(b);
                return;
            }
            throw new InflateException("The path is null, which is created from " + a);
        } else if (!C0889g.m35618a(xmlPullParser, "controlX1")) {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        } else if (C0889g.m35618a(xmlPullParser, "controlY1")) {
            float a2 = C0889g.m35622a(typedArray, xmlPullParser, "controlX1", 0, 0.0f);
            float a3 = C0889g.m35622a(typedArray, xmlPullParser, "controlY1", 1, 0.0f);
            boolean a4 = C0889g.m35618a(xmlPullParser, "controlX2");
            if (a4 != C0889g.m35618a(xmlPullParser, "controlY2")) {
                throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
            } else if (!a4) {
                m31434a(a2, a3);
            } else {
                m31433a(a2, a3, C0889g.m35622a(typedArray, xmlPullParser, "controlX2", 2, 0.0f), C0889g.m35622a(typedArray, xmlPullParser, "controlY2", 3, 0.0f));
            }
        } else {
            throw new InflateException("pathInterpolator requires the controlY1 attribute");
        }
    }

    /* renamed from: a */
    public final void m31431a(Path path) {
        int i = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int min = Math.min((int) BasicNetwork.SLOW_REQUEST_THRESHOLD_MS, ((int) (length / 0.002f)) + 1);
        if (min > 0) {
            this.f7716a = new float[min];
            this.f7717b = new float[min];
            float[] fArr = new float[2];
            for (int i2 = 0; i2 < min; i2++) {
                pathMeasure.getPosTan((i2 * length) / (min - 1), fArr, null);
                this.f7716a[i2] = fArr[0];
                this.f7717b[i2] = fArr[1];
            }
            if (Math.abs(this.f7716a[0]) <= 1.0E-5d && Math.abs(this.f7717b[0]) <= 1.0E-5d) {
                int i3 = min - 1;
                if (Math.abs(this.f7716a[i3] - 1.0f) <= 1.0E-5d && Math.abs(this.f7717b[i3] - 1.0f) <= 1.0E-5d) {
                    float f = 0.0f;
                    int i4 = 0;
                    while (i < min) {
                        float[] fArr2 = this.f7716a;
                        float f2 = fArr2[i4];
                        if (f2 >= f) {
                            fArr2[i] = f2;
                            i++;
                            f = f2;
                            i4++;
                        } else {
                            throw new IllegalArgumentException("The Path cannot loop back on itself, x :" + f2);
                        }
                    }
                    if (pathMeasure.nextContour()) {
                        throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
                    }
                    return;
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("The Path must start at (0,0) and end at (1,1) start: ");
            sb.append(this.f7716a[0]);
            sb.append(",");
            sb.append(this.f7717b[0]);
            sb.append(" end:");
            int i5 = min - 1;
            sb.append(this.f7716a[i5]);
            sb.append(",");
            sb.append(this.f7717b[i5]);
            throw new IllegalArgumentException(sb.toString());
        }
        throw new IllegalArgumentException("The Path has a invalid length " + length);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int i = 0;
        int length = this.f7716a.length - 1;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f < this.f7716a[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float[] fArr = this.f7716a;
        float f2 = fArr[length] - fArr[i];
        if (f2 == 0.0f) {
            return this.f7717b[i];
        }
        float f3 = (f - fArr[i]) / f2;
        float[] fArr2 = this.f7717b;
        float f4 = fArr2[i];
        return f4 + (f3 * (fArr2[length] - f4));
    }
}
