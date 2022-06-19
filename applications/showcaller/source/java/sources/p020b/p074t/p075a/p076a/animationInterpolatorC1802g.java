package p020b.p074t.p075a.p076a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import androidx.core.content.p007d.C0614g;
import org.xmlpull.v1.XmlPullParser;
import p020b.p041h.p042e.C1524c;
/* renamed from: b.t.a.a.g */
/* loaded from: classes-dex2jar.jar:b/t/a/a/g.class */
public class animationInterpolatorC1802g implements Interpolator {

    /* renamed from: a */
    private float[] f6668a;

    /* renamed from: b */
    private float[] f6669b;

    public animationInterpolatorC1802g(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    public animationInterpolatorC1802g(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray m33249k = C0614g.m33249k(resources, theme, attributeSet, C1792a.f6652l);
        m28856d(m33249k, xmlPullParser);
        m33249k.recycle();
    }

    /* renamed from: a */
    private void m28859a(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f, f2, f3, f4, 1.0f, 1.0f);
        m28858b(path);
    }

    /* renamed from: b */
    private void m28858b(Path path) {
        int i = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int min = Math.min(3000, ((int) (length / 0.002f)) + 1);
        if (min <= 0) {
            throw new IllegalArgumentException("The Path has a invalid length " + length);
        }
        this.f6668a = new float[min];
        this.f6669b = new float[min];
        float[] fArr = new float[2];
        for (int i2 = 0; i2 < min; i2++) {
            pathMeasure.getPosTan((i2 * length) / (min - 1), fArr, null);
            this.f6668a[i2] = fArr[0];
            this.f6669b[i2] = fArr[1];
        }
        if (Math.abs(this.f6668a[0]) <= 1.0E-5d && Math.abs(this.f6669b[0]) <= 1.0E-5d) {
            int i3 = min - 1;
            if (Math.abs(this.f6668a[i3] - 1.0f) <= 1.0E-5d && Math.abs(this.f6669b[i3] - 1.0f) <= 1.0E-5d) {
                float f = 0.0f;
                int i4 = 0;
                while (i < min) {
                    float[] fArr2 = this.f6668a;
                    float f2 = fArr2[i4];
                    if (f2 < f) {
                        throw new IllegalArgumentException("The Path cannot loop back on itself, x :" + f2);
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
        StringBuilder sb = new StringBuilder();
        sb.append("The Path must start at (0,0) and end at (1,1) start: ");
        sb.append(this.f6668a[0]);
        sb.append(",");
        sb.append(this.f6669b[0]);
        sb.append(" end:");
        int i5 = min - 1;
        sb.append(this.f6668a[i5]);
        sb.append(",");
        sb.append(this.f6669b[i5]);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: c */
    private void m28857c(float f, float f2) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f, f2, 1.0f, 1.0f);
        m28858b(path);
    }

    /* renamed from: d */
    private void m28856d(TypedArray typedArray, XmlPullParser xmlPullParser) {
        if (C0614g.m33250j(xmlPullParser, "pathData")) {
            String m33251i = C0614g.m33251i(typedArray, xmlPullParser, "pathData", 4);
            Path m29838e = C1524c.m29838e(m33251i);
            if (m29838e != null) {
                m28858b(m29838e);
                return;
            }
            throw new InflateException("The path is null, which is created from " + m33251i);
        } else if (!C0614g.m33250j(xmlPullParser, "controlX1")) {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        } else {
            if (!C0614g.m33250j(xmlPullParser, "controlY1")) {
                throw new InflateException("pathInterpolator requires the controlY1 attribute");
            }
            float m33254f = C0614g.m33254f(typedArray, xmlPullParser, "controlX1", 0, 0.0f);
            float m33254f2 = C0614g.m33254f(typedArray, xmlPullParser, "controlY1", 1, 0.0f);
            boolean m33250j = C0614g.m33250j(xmlPullParser, "controlX2");
            if (m33250j != C0614g.m33250j(xmlPullParser, "controlY2")) {
                throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
            }
            if (!m33250j) {
                m28857c(m33254f, m33254f2);
            } else {
                m28859a(m33254f, m33254f2, C0614g.m33254f(typedArray, xmlPullParser, "controlX2", 2, 0.0f), C0614g.m33254f(typedArray, xmlPullParser, "controlY2", 3, 0.0f));
            }
        }
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
        int length = this.f6668a.length - 1;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f < this.f6668a[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float[] fArr = this.f6668a;
        float f2 = fArr[length] - fArr[i];
        if (f2 == 0.0f) {
            return this.f6669b[i];
        }
        float f3 = (f - fArr[i]) / f2;
        float[] fArr2 = this.f6669b;
        float f4 = fArr2[i];
        return f4 + (f3 * (fArr2[length] - f4));
    }
}
