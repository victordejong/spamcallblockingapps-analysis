package androidx.transition;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import androidx.core.content.p007d.C0614g;
import org.xmlpull.v1.XmlPullParser;
import p020b.p041h.p042e.C1524c;
/* loaded from: classes-dex2jar.jar:androidx/transition/PatternPathMotion.class */
public class PatternPathMotion extends PathMotion {

    /* renamed from: a */
    private Path f4795a;

    /* renamed from: b */
    private final Path f4796b;

    /* renamed from: c */
    private final Matrix f4797c;

    public PatternPathMotion() {
        Path path = new Path();
        this.f4796b = path;
        this.f4797c = new Matrix();
        path.lineTo(1.0f, 0.0f);
        this.f4795a = path;
    }

    @SuppressLint({"RestrictedApi"})
    public PatternPathMotion(Context context, AttributeSet attributeSet) {
        this.f4796b = new Path();
        this.f4797c = new Matrix();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1166t.f4981k);
        try {
            String m33251i = C0614g.m33251i(obtainStyledAttributes, (XmlPullParser) attributeSet, "patternPathData", 0);
            if (m33251i == null) {
                throw new RuntimeException("pathData must be supplied for patternPathMotion");
            }
            m31025c(C1524c.m29838e(m33251i));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    private static float m31026b(float f, float f2) {
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    @Override // androidx.transition.PathMotion
    /* renamed from: a */
    public Path mo30984a(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        float m31026b = m31026b(f5, f6);
        double atan2 = Math.atan2(f6, f5);
        this.f4797c.setScale(m31026b, m31026b);
        this.f4797c.postRotate((float) Math.toDegrees(atan2));
        this.f4797c.postTranslate(f, f2);
        Path path = new Path();
        this.f4796b.transform(this.f4797c, path);
        return path;
    }

    /* renamed from: c */
    public void m31025c(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        float[] fArr = new float[2];
        pathMeasure.getPosTan(length, fArr, null);
        float f = fArr[0];
        float f2 = fArr[1];
        pathMeasure.getPosTan(0.0f, fArr, null);
        float f3 = fArr[0];
        float f4 = fArr[1];
        if (f3 == f && f4 == f2) {
            throw new IllegalArgumentException("pattern must not end at the starting point");
        }
        this.f4797c.setTranslate(-f3, -f4);
        float f5 = f - f3;
        float f6 = f2 - f4;
        float m31026b = 1.0f / m31026b(f5, f6);
        this.f4797c.postScale(m31026b, m31026b);
        this.f4797c.postRotate((float) Math.toDegrees(-Math.atan2(f6, f5)));
        path.transform(this.f4797c, this.f4796b);
        this.f4795a = path;
    }
}
