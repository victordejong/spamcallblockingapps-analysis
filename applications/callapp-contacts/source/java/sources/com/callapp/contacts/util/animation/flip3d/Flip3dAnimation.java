package com.callapp.contacts.util.animation.flip3d;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/animation/flip3d/Flip3dAnimation.class */
public class Flip3dAnimation extends Animation {

    /* renamed from: a */
    private final float f28138a;

    /* renamed from: b */
    private final float f28139b;

    /* renamed from: c */
    private final float f28140c;

    /* renamed from: d */
    private final float f28141d;

    /* renamed from: e */
    private Camera f28142e;

    public Flip3dAnimation(float f, float f2, float f3, float f4) {
        this.f28138a = f;
        this.f28139b = f2;
        this.f28140c = f3;
        this.f28141d = f4;
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f, Transformation transformation) {
        float f2 = this.f28138a;
        float f3 = this.f28139b;
        float f4 = this.f28140c;
        float f5 = this.f28141d;
        Camera camera = this.f28142e;
        Matrix matrix = transformation.getMatrix();
        camera.save();
        camera.rotateY(f2 + ((f3 - f2) * f));
        camera.getMatrix(matrix);
        camera.restore();
        matrix.preTranslate(-f4, -f5);
        matrix.postTranslate(f4, f5);
    }

    @Override // android.view.animation.Animation
    public void initialize(int i, int i2, int i3, int i4) {
        super.initialize(i, i2, i3, i4);
        this.f28142e = new Camera();
    }
}
