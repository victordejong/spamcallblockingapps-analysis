package com.google.android.material.transition.platform;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;
import androidx.annotation.RequiresApi;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import com.google.android.material.transition.platform.MaterialContainerTransform;
@RequiresApi
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/platform/MaskEvaluator.class */
class MaskEvaluator {

    /* renamed from: a */
    private final Path f11797a = new Path();

    /* renamed from: b */
    private final Path f11798b = new Path();

    /* renamed from: c */
    private final Path f11799c = new Path();

    /* renamed from: d */
    private final ShapeAppearancePathProvider f11800d = new ShapeAppearancePathProvider();

    /* renamed from: e */
    private ShapeAppearanceModel f11801e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m8538a(Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 23) {
            canvas.clipPath(this.f11797a);
            return;
        }
        canvas.clipPath(this.f11798b);
        canvas.clipPath(this.f11799c, Region.Op.UNION);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m8537b(float f, ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, RectF rectF, RectF rectF2, RectF rectF3, MaterialContainerTransform.ProgressThresholds progressThresholds) {
        ShapeAppearanceModel n = TransitionUtils.m8461n(shapeAppearanceModel, shapeAppearanceModel2, rectF, rectF3, progressThresholds.m8519d(), progressThresholds.m8520c(), f);
        this.f11801e = n;
        this.f11800d.m9215d(n, 1.0f, rectF2, this.f11798b);
        this.f11800d.m9215d(this.f11801e, 1.0f, rectF3, this.f11799c);
        if (Build.VERSION.SDK_INT >= 23) {
            this.f11797a.op(this.f11798b, this.f11799c, Path.Op.UNION);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public ShapeAppearanceModel m8536c() {
        return this.f11801e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public Path m8535d() {
        return this.f11797a;
    }
}
