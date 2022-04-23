package com.callapp.contacts.util.animation.flip3d;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/animation/flip3d/Flip3dAnimation.class */
public class Flip3dAnimation extends Animation {

    /* renamed from: a  reason: collision with root package name */
    private final float f16159a;

    /* renamed from: b  reason: collision with root package name */
    private final float f16160b;

    /* renamed from: c  reason: collision with root package name */
    private final float f16161c;

    /* renamed from: d  reason: collision with root package name */
    private final float f16162d;
    private Camera e;

    public Flip3dAnimation(float f, float f2, float f3, float f4) {
        this.f16159a = f;
        this.f16160b = f2;
        this.f16161c = f3;
        this.f16162d = f4;
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f, Transformation transformation) {
        float f2 = this.f16159a;
        float f3 = this.f16160b;
        float f4 = this.f16161c;
        float f5 = this.f16162d;
        Camera camera = this.e;
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
        this.e = new Camera();
    }
}
