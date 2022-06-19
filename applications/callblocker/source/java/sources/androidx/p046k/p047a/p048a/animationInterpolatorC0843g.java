package androidx.p046k.p047a.p048a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import androidx.core.graphics.C0530b;
import androidx.core.p017a.p018a.C0453g;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.k.a.a.g */
/* loaded from: classes-dex2jar.jar:androidx/k/a/a/g.class */
public class animationInterpolatorC0843g implements Interpolator {

    /* renamed from: a */
    private float[] f2870a;

    /* renamed from: b */
    private float[] f2871b;

    public animationInterpolatorC0843g(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    public animationInterpolatorC0843g(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray m20840a = C0453g.m20840a(resources, theme, attributeSet, C0833a.f2854l);
        m19294a(m20840a, xmlPullParser);
        m20840a.recycle();
    }

    /* renamed from: a */
    private void m19296a(float f, float f2) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f, f2, 1.0f, 1.0f);
        m19293a(path);
    }

    /* renamed from: a */
    private void m19295a(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f, f2, f3, f4, 1.0f, 1.0f);
        m19293a(path);
    }

    /* renamed from: a */
    private void m19294a(TypedArray typedArray, XmlPullParser xmlPullParser) {
        if (C0453g.m20832a(xmlPullParser, "pathData")) {
            String m20837a = C0453g.m20837a(typedArray, xmlPullParser, "pathData", 4);
            Path m20631a = C0530b.m20631a(m20837a);
            if (m20631a == null) {
                throw new InflateException("The path is null, which is created from " + m20837a);
            }
            m19293a(m20631a);
        } else if (!C0453g.m20832a(xmlPullParser, "controlX1")) {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        } else {
            if (!C0453g.m20832a(xmlPullParser, "controlY1")) {
                throw new InflateException("pathInterpolator requires the controlY1 attribute");
            }
            float m20836a = C0453g.m20836a(typedArray, xmlPullParser, "controlX1", 0, 0.0f);
            float m20836a2 = C0453g.m20836a(typedArray, xmlPullParser, "controlY1", 1, 0.0f);
            boolean m20832a = C0453g.m20832a(xmlPullParser, "controlX2");
            if (m20832a != C0453g.m20832a(xmlPullParser, "controlY2")) {
                throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
            }
            if (!m20832a) {
                m19296a(m20836a, m20836a2);
            } else {
                m19295a(m20836a, m20836a2, C0453g.m20836a(typedArray, xmlPullParser, "controlX2", 2, 0.0f), C0453g.m20836a(typedArray, xmlPullParser, "controlY2", 3, 0.0f));
            }
        }
    }

    /* renamed from: a */
    private void m19293a(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int min = Math.min(3000, ((int) (length / 0.002f)) + 1);
        if (min <= 0) {
            throw new IllegalArgumentException("The Path has a invalid length " + length);
        }
        this.f2870a = new float[min];
        this.f2871b = new float[min];
        float[] fArr = new float[2];
        for (int i = 0; i < min; i++) {
            pathMeasure.getPosTan((i * length) / (min - 1), fArr, null);
            this.f2870a[i] = fArr[0];
            this.f2871b[i] = fArr[1];
        }
        if (Math.abs(this.f2870a[0]) > 1.0E-5d || Math.abs(this.f2871b[0]) > 1.0E-5d || Math.abs(this.f2870a[min - 1] - 1.0f) > 1.0E-5d || Math.abs(this.f2871b[min - 1] - 1.0f) > 1.0E-5d) {
            throw new IllegalArgumentException("The Path must start at (0,0) and end at (1,1) start: " + this.f2870a[0] + "," + this.f2871b[0] + " end:" + this.f2870a[min - 1] + "," + this.f2871b[min - 1]);
        }
        float f = 0.0f;
        int i2 = 0;
        int i3 = 0;
        while (i2 < min) {
            float f2 = this.f2870a[i3];
            if (f2 < f) {
                throw new IllegalArgumentException("The Path cannot loop back on itself, x :" + f2);
            }
            this.f2870a[i2] = f2;
            i2++;
            i3++;
            f = f2;
        }
        if (!pathMeasure.nextContour()) {
            return;
        }
        throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float f2 = 1.0f;
        if (f <= 0.0f) {
            f2 = 0.0f;
        } else if (f < 1.0f) {
            int i = 0;
            int length = this.f2870a.length - 1;
            while (length - i > 1) {
                int i2 = (i + length) / 2;
                if (f < this.f2870a[i2]) {
                    length = i2;
                } else {
                    i = i2;
                }
            }
            float f3 = this.f2870a[length] - this.f2870a[i];
            if (f3 == 0.0f) {
                f2 = this.f2871b[i];
            } else {
                float f4 = (f - this.f2870a[i]) / f3;
                float f5 = this.f2871b[i];
                f2 = ((this.f2871b[length] - f5) * f4) + f5;
            }
        }
        return f2;
    }
}
