package androidx.transition;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import androidx.core.content.res.g;
import androidx.core.graphics.c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/PatternPathMotion.class */
public class PatternPathMotion extends PathMotion {

    /* renamed from: a  reason: collision with root package name */
    private Path f5726a;

    /* renamed from: b  reason: collision with root package name */
    private final Path f5727b;

    /* renamed from: c  reason: collision with root package name */
    private final Matrix f5728c;

    public PatternPathMotion() {
        Path path = new Path();
        this.f5727b = path;
        this.f5728c = new Matrix();
        path.lineTo(1.0f, BitmapDescriptorFactory.HUE_RED);
        this.f5726a = path;
    }

    public PatternPathMotion(Context context, AttributeSet attributeSet) {
        this.f5727b = new Path();
        this.f5728c = new Matrix();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, s.k);
        try {
            String c2 = g.c(obtainStyledAttributes, (XmlPullParser) attributeSet, "patternPathData", 0);
            if (c2 != null) {
                a(c.a(c2));
                return;
            }
            throw new RuntimeException("pathData must be supplied for patternPathMotion");
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public PatternPathMotion(Path path) {
        this.f5727b = new Path();
        this.f5728c = new Matrix();
        a(path);
    }

    private static float a(float f, float f2) {
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    private void a(Path path) {
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
        this.f5728c.setTranslate(-f3, -f4);
        float f5 = f - f3;
        float f6 = f2 - f4;
        float a2 = 1.0f / a(f5, f6);
        this.f5728c.postScale(a2, a2);
        this.f5728c.postRotate((float) Math.toDegrees(-Math.atan2(f6, f5)));
        path.transform(this.f5728c, this.f5727b);
        this.f5726a = path;
    }

    @Override // androidx.transition.PathMotion
    public final Path a(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        float a2 = a(f5, f6);
        double atan2 = Math.atan2(f6, f5);
        this.f5728c.setScale(a2, a2);
        this.f5728c.postRotate((float) Math.toDegrees(atan2));
        this.f5728c.postTranslate(f, f2);
        Path path = new Path();
        this.f5727b.transform(this.f5728c, path);
        return path;
    }
}
