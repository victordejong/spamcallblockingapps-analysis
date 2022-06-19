package androidx.transition;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import androidx.core.content.res.C0810g;
import androidx.core.graphics.C0836c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/PatternPathMotion.class */
public class PatternPathMotion extends PathMotion {

    /* renamed from: a */
    private Path f10733a;

    /* renamed from: b */
    private final Path f10734b;

    /* renamed from: c */
    private final Matrix f10735c;

    public PatternPathMotion() {
        Path path = new Path();
        this.f10734b = path;
        this.f10735c = new Matrix();
        path.lineTo(1.0f, BitmapDescriptorFactory.HUE_RED);
        this.f10733a = path;
    }

    public PatternPathMotion(Context context, AttributeSet attributeSet) {
        this.f10734b = new Path();
        this.f10735c = new Matrix();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2906s.f10917k);
        try {
            String m44450c = C0810g.m44450c(obtainStyledAttributes, (XmlPullParser) attributeSet, "patternPathData", 0);
            if (m44450c == null) {
                throw new RuntimeException("pathData must be supplied for patternPathMotion");
            }
            m39819a(C0836c.m44391a(m44450c));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public PatternPathMotion(Path path) {
        this.f10734b = new Path();
        this.f10735c = new Matrix();
        m39819a(path);
    }

    /* renamed from: a */
    private static float m39820a(float f, float f2) {
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    /* renamed from: a */
    private void m39819a(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        float[] fArr = new float[2];
        pathMeasure.getPosTan(length, fArr, null);
        float f = fArr[0];
        float f2 = fArr[1];
        pathMeasure.getPosTan(BitmapDescriptorFactory.HUE_RED, fArr, null);
        float f3 = fArr[0];
        float f4 = fArr[1];
        if (f3 == f && f4 == f2) {
            throw new IllegalArgumentException("pattern must not end at the starting point");
        }
        this.f10735c.setTranslate(-f3, -f4);
        float f5 = f - f3;
        float f6 = f2 - f4;
        float m39820a = 1.0f / m39820a(f5, f6);
        this.f10735c.postScale(m39820a, m39820a);
        this.f10735c.postRotate((float) Math.toDegrees(-Math.atan2(f6, f5)));
        path.transform(this.f10735c, this.f10734b);
        this.f10733a = path;
    }

    @Override // androidx.transition.PathMotion
    /* renamed from: a */
    public final Path mo39793a(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        float m39820a = m39820a(f5, f6);
        double atan2 = Math.atan2(f6, f5);
        this.f10735c.setScale(m39820a, m39820a);
        this.f10735c.postRotate((float) Math.toDegrees(atan2));
        this.f10735c.postTranslate(f, f2);
        Path path = new Path();
        this.f10734b.transform(this.f10735c, path);
        return path;
    }
}
