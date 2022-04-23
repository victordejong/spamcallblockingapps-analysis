package androidx.transition;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/PatternPathMotion.class */
public class PatternPathMotion extends PathMotion {

    /* renamed from: a */
    private final Path f5183a = new Path();

    /* renamed from: b */
    private final Matrix f5184b = new Matrix();

    public PatternPathMotion() {
        this.f5183a.lineTo(1.0f, 0.0f);
    }

    @SuppressLint({"RestrictedApi"})
    public PatternPathMotion(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.f5207i);
        try {
            String i = TypedArrayUtils.m19594i(obtainStyledAttributes, (XmlPullParser) attributeSet, "patternPathData", 0);
            if (i != null) {
                m16802c(PathParser.m19576e(i));
                return;
            }
            throw new RuntimeException("pathData must be supplied for patternPathMotion");
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    private static float m16803b(float f, float f2) {
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    @Override // androidx.transition.PathMotion
    /* renamed from: a */
    public Path mo8631a(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        float b = m16803b(f5, f6);
        double atan2 = Math.atan2(f6, f5);
        this.f5184b.setScale(b, b);
        this.f5184b.postRotate((float) Math.toDegrees(atan2));
        this.f5184b.postTranslate(f, f2);
        Path path = new Path();
        this.f5183a.transform(this.f5184b, path);
        return path;
    }

    /* renamed from: c */
    public void m16802c(Path path) {
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
        this.f5184b.setTranslate(-f3, -f4);
        float f5 = f - f3;
        float f6 = f2 - f4;
        float b = 1.0f / m16803b(f5, f6);
        this.f5184b.postScale(b, b);
        this.f5184b.postRotate((float) Math.toDegrees(-Math.atan2(f6, f5)));
        path.transform(this.f5184b, this.f5183a);
    }
}
