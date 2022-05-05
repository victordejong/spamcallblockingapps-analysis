package androidx.vectordrawable.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import org.xmlpull.v1.XmlPullParser;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/vectordrawable/graphics/drawable/PathInterpolatorCompat.class */
public class PathInterpolatorCompat implements Interpolator {

    /* renamed from: a */
    private float[] f5366a;

    /* renamed from: b */
    private float[] f5367b;

    public PathInterpolatorCompat(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    public PathInterpolatorCompat(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray k = TypedArrayUtils.m19592k(resources, theme, attributeSet, AndroidResources.f5349l);
        m16619d(k, xmlPullParser);
        k.recycle();
    }

    /* renamed from: a */
    private void m16622a(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f, f2, f3, f4, 1.0f, 1.0f);
        m16621b(path);
    }

    /* renamed from: b */
    private void m16621b(Path path) {
        int i = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int min = Math.min(3000, ((int) (length / 0.002f)) + 1);
        if (min > 0) {
            this.f5366a = new float[min];
            this.f5367b = new float[min];
            float[] fArr = new float[2];
            for (int i2 = 0; i2 < min; i2++) {
                pathMeasure.getPosTan((i2 * length) / (min - 1), fArr, null);
                this.f5366a[i2] = fArr[0];
                this.f5367b[i2] = fArr[1];
            }
            if (Math.abs(this.f5366a[0]) <= 1.0E-5d && Math.abs(this.f5367b[0]) <= 1.0E-5d) {
                int i3 = min - 1;
                if (Math.abs(this.f5366a[i3] - 1.0f) <= 1.0E-5d && Math.abs(this.f5367b[i3] - 1.0f) <= 1.0E-5d) {
                    float f = 0.0f;
                    int i4 = 0;
                    while (i < min) {
                        float[] fArr2 = this.f5366a;
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
            sb.append(this.f5366a[0]);
            sb.append(",");
            sb.append(this.f5367b[0]);
            sb.append(" end:");
            int i5 = min - 1;
            sb.append(this.f5366a[i5]);
            sb.append(",");
            sb.append(this.f5367b[i5]);
            throw new IllegalArgumentException(sb.toString());
        }
        throw new IllegalArgumentException("The Path has a invalid length " + length);
    }

    /* renamed from: c */
    private void m16620c(float f, float f2) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f, f2, 1.0f, 1.0f);
        m16621b(path);
    }

    /* renamed from: d */
    private void m16619d(TypedArray typedArray, XmlPullParser xmlPullParser) {
        if (TypedArrayUtils.m19593j(xmlPullParser, "pathData")) {
            String i = TypedArrayUtils.m19594i(typedArray, xmlPullParser, "pathData", 4);
            Path e = PathParser.m19576e(i);
            if (e != null) {
                m16621b(e);
                return;
            }
            throw new InflateException("The path is null, which is created from " + i);
        } else if (!TypedArrayUtils.m19593j(xmlPullParser, "controlX1")) {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        } else if (TypedArrayUtils.m19593j(xmlPullParser, "controlY1")) {
            float f = TypedArrayUtils.m19597f(typedArray, xmlPullParser, "controlX1", 0, 0.0f);
            float f2 = TypedArrayUtils.m19597f(typedArray, xmlPullParser, "controlY1", 1, 0.0f);
            boolean j = TypedArrayUtils.m19593j(xmlPullParser, "controlX2");
            if (j != TypedArrayUtils.m19593j(xmlPullParser, "controlY2")) {
                throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
            } else if (!j) {
                m16620c(f, f2);
            } else {
                m16622a(f, f2, TypedArrayUtils.m19597f(typedArray, xmlPullParser, "controlX2", 2, 0.0f), TypedArrayUtils.m19597f(typedArray, xmlPullParser, "controlY2", 3, 0.0f));
            }
        } else {
            throw new InflateException("pathInterpolator requires the controlY1 attribute");
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
        int length = this.f5366a.length - 1;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f < this.f5366a[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float[] fArr = this.f5366a;
        float f2 = fArr[length] - fArr[i];
        if (f2 == 0.0f) {
            return this.f5367b[i];
        }
        float f3 = (f - fArr[i]) / f2;
        float[] fArr2 = this.f5367b;
        float f4 = fArr2[i];
        return f4 + (f3 * (fArr2[length] - f4));
    }
}
