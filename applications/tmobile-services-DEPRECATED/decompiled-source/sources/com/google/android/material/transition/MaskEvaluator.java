package com.google.android.material.transition;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import com.google.android.material.transition.MaterialContainerTransform;
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/MaskEvaluator.class */
class MaskEvaluator {

    /* renamed from: a */
    private final Path f11668a = new Path();

    /* renamed from: b */
    private final Path f11669b = new Path();

    /* renamed from: c */
    private final Path f11670c = new Path();

    /* renamed from: d */
    private final ShapeAppearancePathProvider f11671d = new ShapeAppearancePathProvider();

    /* renamed from: e */
    private ShapeAppearanceModel f11672e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m8635a(Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 23) {
            canvas.clipPath(this.f11668a);
            return;
        }
        canvas.clipPath(this.f11669b);
        canvas.clipPath(this.f11670c, Region.Op.UNION);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m8634b(float f, ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, RectF rectF, RectF rectF2, RectF rectF3, MaterialContainerTransform.ProgressThresholds progressThresholds) {
        ShapeAppearanceModel m = TransitionUtils.m8558m(shapeAppearanceModel, shapeAppearanceModel2, rectF, rectF3, progressThresholds.m8612d(), progressThresholds.m8613c(), f);
        this.f11672e = m;
        this.f11671d.m9215d(m, 1.0f, rectF2, this.f11669b);
        this.f11671d.m9215d(this.f11672e, 1.0f, rectF3, this.f11670c);
        if (Build.VERSION.SDK_INT >= 23) {
            this.f11668a.op(this.f11669b, this.f11670c, Path.Op.UNION);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public ShapeAppearanceModel m8633c() {
        return this.f11672e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public Path m8632d() {
        return this.f11668a;
    }
}
