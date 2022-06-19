package androidx.constraintlayout.motion.widget;

import android.content.res.TypedArray;
import android.os.Build;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.C0229e;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/d$a.class */
class d$a {

    /* renamed from: a */
    private static SparseIntArray f843a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f843a = sparseIntArray;
        sparseIntArray.append(C0229e.KeyAttribute_android_alpha, 1);
        f843a.append(C0229e.KeyAttribute_android_elevation, 2);
        f843a.append(C0229e.KeyAttribute_android_rotation, 4);
        f843a.append(C0229e.KeyAttribute_android_rotationX, 5);
        f843a.append(C0229e.KeyAttribute_android_rotationY, 6);
        f843a.append(C0229e.KeyAttribute_android_transformPivotX, 19);
        f843a.append(C0229e.KeyAttribute_android_transformPivotY, 20);
        f843a.append(C0229e.KeyAttribute_android_scaleX, 7);
        f843a.append(C0229e.KeyAttribute_transitionPathRotate, 8);
        f843a.append(C0229e.KeyAttribute_transitionEasing, 9);
        f843a.append(C0229e.KeyAttribute_motionTarget, 10);
        f843a.append(C0229e.KeyAttribute_framePosition, 12);
        f843a.append(C0229e.KeyAttribute_curveFit, 13);
        f843a.append(C0229e.KeyAttribute_android_scaleY, 14);
        f843a.append(C0229e.KeyAttribute_android_translationX, 15);
        f843a.append(C0229e.KeyAttribute_android_translationY, 16);
        f843a.append(C0229e.KeyAttribute_android_translationZ, 17);
        f843a.append(C0229e.KeyAttribute_motionProgress, 18);
    }

    /* renamed from: a */
    public static void m14274a(d dVar, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            switch (f843a.get(index)) {
                case 1:
                    d.g(dVar, typedArray.getFloat(index, d.f(dVar)));
                    break;
                case 2:
                    d.k(dVar, typedArray.getDimension(index, d.h(dVar)));
                    break;
                case 3:
                case 11:
                default:
                    Log.e("KeyAttribute", "unused attribute 0x" + Integer.toHexString(index) + "   " + f843a.get(index));
                    break;
                case 4:
                    d.w(dVar, typedArray.getFloat(index, d.v(dVar)));
                    break;
                case 5:
                    d.C(dVar, typedArray.getFloat(index, d.B(dVar)));
                    break;
                case 6:
                    d.E(dVar, typedArray.getFloat(index, d.D(dVar)));
                    break;
                case 7:
                    d.A(dVar, typedArray.getFloat(index, d.z(dVar)));
                    break;
                case 8:
                    d.m(dVar, typedArray.getFloat(index, d.l(dVar)));
                    break;
                case 9:
                    d.J(dVar, typedArray.getString(index));
                    break;
                case 10:
                    if (MotionLayout.D0) {
                        int resourceId = typedArray.getResourceId(index, dVar.f840b);
                        dVar.f840b = resourceId;
                        if (resourceId != -1) {
                            break;
                        }
                        dVar.f841c = typedArray.getString(index);
                        break;
                    } else {
                        if (typedArray.peekValue(index).type != 3) {
                            dVar.f840b = typedArray.getResourceId(index, dVar.f840b);
                            break;
                        }
                        dVar.f841c = typedArray.getString(index);
                    }
                case 12:
                    dVar.f839a = typedArray.getInt(index, dVar.f839a);
                    break;
                case 13:
                    d.y(dVar, typedArray.getInteger(index, d.x(dVar)));
                    break;
                case 14:
                    d.j(dVar, typedArray.getFloat(index, d.i(dVar)));
                    break;
                case 15:
                    d.o(dVar, typedArray.getDimension(index, d.n(dVar)));
                    break;
                case 16:
                    d.q(dVar, typedArray.getDimension(index, d.p(dVar)));
                    break;
                case 17:
                    if (Build.VERSION.SDK_INT >= 21) {
                        d.s(dVar, typedArray.getDimension(index, d.r(dVar)));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    d.u(dVar, typedArray.getFloat(index, d.t(dVar)));
                    break;
                case 19:
                    d.G(dVar, typedArray.getDimension(index, d.F(dVar)));
                    break;
                case 20:
                    d.I(dVar, typedArray.getDimension(index, d.H(dVar)));
                    break;
            }
        }
    }
}
