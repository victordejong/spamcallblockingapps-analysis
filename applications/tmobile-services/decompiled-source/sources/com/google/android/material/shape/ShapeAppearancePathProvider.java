package com.google.android.material.shape;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
/* loaded from: classes-dex2jar.jar:com/google/android/material/shape/ShapeAppearancePathProvider.class */
public class ShapeAppearancePathProvider {

    /* renamed from: a */
    private final ShapePath[] f11135a = new ShapePath[4];

    /* renamed from: b */
    private final Matrix[] f11136b = new Matrix[4];

    /* renamed from: c */
    private final Matrix[] f11137c = new Matrix[4];

    /* renamed from: d */
    private final PointF f11138d = new PointF();

    /* renamed from: e */
    private final Path f11139e = new Path();

    /* renamed from: f */
    private final Path f11140f = new Path();

    /* renamed from: g */
    private final ShapePath f11141g = new ShapePath();

    /* renamed from: h */
    private final float[] f11142h = new float[2];

    /* renamed from: i */
    private final float[] f11143i = new float[2];

    /* renamed from: j */
    private boolean f11144j = true;

    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/shape/ShapeAppearancePathProvider$PathListener.class */
    public interface PathListener {
        /* renamed from: a */
        void mo9205a(ShapePath shapePath, Matrix matrix, int i);

        /* renamed from: b */
        void mo9204b(ShapePath shapePath, Matrix matrix, int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec.class */
    public static final class ShapeAppearancePathSpec {
        @NonNull

        /* renamed from: a */
        public final ShapeAppearanceModel f11145a;
        @NonNull

        /* renamed from: b */
        public final Path f11146b;
        @NonNull

        /* renamed from: c */
        public final RectF f11147c;
        @Nullable

        /* renamed from: d */
        public final PathListener f11148d;

        /* renamed from: e */
        public final float f11149e;

        ShapeAppearancePathSpec(@NonNull ShapeAppearanceModel shapeAppearanceModel, float f, RectF rectF, @Nullable PathListener pathListener, Path path) {
            this.f11148d = pathListener;
            this.f11145a = shapeAppearanceModel;
            this.f11149e = f;
            this.f11147c = rectF;
            this.f11146b = path;
        }
    }

    public ShapeAppearancePathProvider() {
        for (int i = 0; i < 4; i++) {
            this.f11135a[i] = new ShapePath();
            this.f11136b[i] = new Matrix();
            this.f11137c[i] = new Matrix();
        }
    }

    /* renamed from: a */
    private float m9218a(int i) {
        return (i + 1) * 90;
    }

    /* renamed from: b */
    private void m9217b(@NonNull ShapeAppearancePathSpec shapeAppearancePathSpec, int i) {
        this.f11142h[0] = this.f11135a[i].m9193k();
        this.f11142h[1] = this.f11135a[i].m9192l();
        this.f11136b[i].mapPoints(this.f11142h);
        if (i == 0) {
            Path path = shapeAppearancePathSpec.f11146b;
            float[] fArr = this.f11142h;
            path.moveTo(fArr[0], fArr[1]);
        } else {
            Path path2 = shapeAppearancePathSpec.f11146b;
            float[] fArr2 = this.f11142h;
            path2.lineTo(fArr2[0], fArr2[1]);
        }
        this.f11135a[i].m9200d(this.f11136b[i], shapeAppearancePathSpec.f11146b);
        PathListener pathListener = shapeAppearancePathSpec.f11148d;
        if (pathListener != null) {
            pathListener.mo9205a(this.f11135a[i], this.f11136b[i], i);
        }
    }

    /* renamed from: c */
    private void m9216c(@NonNull ShapeAppearancePathSpec shapeAppearancePathSpec, int i) {
        int i2 = (i + 1) % 4;
        this.f11142h[0] = this.f11135a[i].m9195i();
        this.f11142h[1] = this.f11135a[i].m9194j();
        this.f11136b[i].mapPoints(this.f11142h);
        this.f11143i[0] = this.f11135a[i2].m9193k();
        this.f11143i[1] = this.f11135a[i2].m9192l();
        this.f11136b[i2].mapPoints(this.f11143i);
        float[] fArr = this.f11142h;
        float f = fArr[0];
        float[] fArr2 = this.f11143i;
        float max = Math.max(((float) Math.hypot(f - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, 0.0f);
        float i3 = m9210i(shapeAppearancePathSpec.f11147c, i);
        this.f11141g.m9190n(0.0f, 0.0f);
        EdgeTreatment j = m9209j(i, shapeAppearancePathSpec.f11145a);
        j.mo9150b(max, i3, shapeAppearancePathSpec.f11149e, this.f11141g);
        Path path = new Path();
        this.f11141g.m9200d(this.f11137c[i], path);
        if (!this.f11144j || Build.VERSION.SDK_INT < 19 || (!j.mo9280a() && !m9208k(path, i) && !m9208k(path, i2))) {
            this.f11141g.m9200d(this.f11137c[i], shapeAppearancePathSpec.f11146b);
        } else {
            path.op(path, this.f11140f, Path.Op.DIFFERENCE);
            this.f11142h[0] = this.f11141g.m9193k();
            this.f11142h[1] = this.f11141g.m9192l();
            this.f11137c[i].mapPoints(this.f11142h);
            Path path2 = this.f11139e;
            float[] fArr3 = this.f11142h;
            path2.moveTo(fArr3[0], fArr3[1]);
            this.f11141g.m9200d(this.f11137c[i], this.f11139e);
        }
        PathListener pathListener = shapeAppearancePathSpec.f11148d;
        if (pathListener != null) {
            pathListener.mo9204b(this.f11141g, this.f11137c[i], i);
        }
    }

    /* renamed from: f */
    private void m9213f(int i, @NonNull RectF rectF, @NonNull PointF pointF) {
        if (i == 1) {
            pointF.set(rectF.right, rectF.bottom);
        } else if (i == 2) {
            pointF.set(rectF.left, rectF.bottom);
        } else if (i != 3) {
            pointF.set(rectF.right, rectF.top);
        } else {
            pointF.set(rectF.left, rectF.top);
        }
    }

    /* renamed from: g */
    private CornerSize m9212g(int i, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        return i != 1 ? i != 2 ? i != 3 ? shapeAppearanceModel.m9258t() : shapeAppearanceModel.m9260r() : shapeAppearanceModel.m9268j() : shapeAppearanceModel.m9266l();
    }

    /* renamed from: h */
    private CornerTreatment m9211h(int i, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        return i != 1 ? i != 2 ? i != 3 ? shapeAppearanceModel.m9259s() : shapeAppearanceModel.m9261q() : shapeAppearanceModel.m9269i() : shapeAppearanceModel.m9267k();
    }

    /* renamed from: i */
    private float m9210i(@NonNull RectF rectF, int i) {
        float[] fArr = this.f11142h;
        ShapePath[] shapePathArr = this.f11135a;
        fArr[0] = shapePathArr[i].f11152c;
        fArr[1] = shapePathArr[i].f11153d;
        this.f11136b[i].mapPoints(fArr);
        return (i == 1 || i == 3) ? Math.abs(rectF.centerX() - this.f11142h[0]) : Math.abs(rectF.centerY() - this.f11142h[1]);
    }

    /* renamed from: j */
    private EdgeTreatment m9209j(int i, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        return i != 1 ? i != 2 ? i != 3 ? shapeAppearanceModel.m9263o() : shapeAppearanceModel.m9262p() : shapeAppearanceModel.m9264n() : shapeAppearanceModel.m9270h();
    }

    @RequiresApi
    /* renamed from: k */
    private boolean m9208k(Path path, int i) {
        Path path2 = new Path();
        this.f11135a[i].m9200d(this.f11136b[i], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        boolean z = true;
        if (rectF.isEmpty()) {
            z = rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return z;
    }

    /* renamed from: l */
    private void m9207l(@NonNull ShapeAppearancePathSpec shapeAppearancePathSpec, int i) {
        m9211h(i, shapeAppearancePathSpec.f11145a).m9352c(this.f11135a[i], 90.0f, shapeAppearancePathSpec.f11149e, shapeAppearancePathSpec.f11147c, m9212g(i, shapeAppearancePathSpec.f11145a));
        float a = m9218a(i);
        this.f11136b[i].reset();
        m9213f(i, shapeAppearancePathSpec.f11147c, this.f11138d);
        Matrix matrix = this.f11136b[i];
        PointF pointF = this.f11138d;
        matrix.setTranslate(pointF.x, pointF.y);
        this.f11136b[i].preRotate(a);
    }

    /* renamed from: m */
    private void m9206m(int i) {
        this.f11142h[0] = this.f11135a[i].m9195i();
        this.f11142h[1] = this.f11135a[i].m9194j();
        this.f11136b[i].mapPoints(this.f11142h);
        float a = m9218a(i);
        this.f11137c[i].reset();
        Matrix matrix = this.f11137c[i];
        float[] fArr = this.f11142h;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.f11137c[i].preRotate(a);
    }

    /* renamed from: d */
    public void m9215d(ShapeAppearanceModel shapeAppearanceModel, float f, RectF rectF, @NonNull Path path) {
        m9214e(shapeAppearanceModel, f, rectF, null, path);
    }

    @RestrictTo
    /* renamed from: e */
    public void m9214e(ShapeAppearanceModel shapeAppearanceModel, float f, RectF rectF, PathListener pathListener, @NonNull Path path) {
        path.rewind();
        this.f11139e.rewind();
        this.f11140f.rewind();
        this.f11140f.addRect(rectF, Path.Direction.CW);
        ShapeAppearancePathSpec shapeAppearancePathSpec = new ShapeAppearancePathSpec(shapeAppearanceModel, f, rectF, pathListener, path);
        for (int i = 0; i < 4; i++) {
            m9207l(shapeAppearancePathSpec, i);
            m9206m(i);
        }
        for (int i2 = 0; i2 < 4; i2++) {
            m9217b(shapeAppearancePathSpec, i2);
            m9216c(shapeAppearancePathSpec, i2);
        }
        path.close();
        this.f11139e.close();
        if (Build.VERSION.SDK_INT >= 19 && !this.f11139e.isEmpty()) {
            path.op(this.f11139e, Path.Op.UNION);
        }
    }
}
