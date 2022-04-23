package androidx.constraintlayout.motion.widget;

import android.content.res.TypedArray;
import android.os.Build;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.C0229e;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/k$a.class */
class k$a {

    /* renamed from: a */
    private static SparseIntArray f867a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f867a = sparseIntArray;
        sparseIntArray.append(C0229e.KeyTimeCycle_android_alpha, 1);
        f867a.append(C0229e.KeyTimeCycle_android_elevation, 2);
        f867a.append(C0229e.KeyTimeCycle_android_rotation, 4);
        f867a.append(C0229e.KeyTimeCycle_android_rotationX, 5);
        f867a.append(C0229e.KeyTimeCycle_android_rotationY, 6);
        f867a.append(C0229e.KeyTimeCycle_android_scaleX, 7);
        f867a.append(C0229e.KeyTimeCycle_transitionPathRotate, 8);
        f867a.append(C0229e.KeyTimeCycle_transitionEasing, 9);
        f867a.append(C0229e.KeyTimeCycle_motionTarget, 10);
        f867a.append(C0229e.KeyTimeCycle_framePosition, 12);
        f867a.append(C0229e.KeyTimeCycle_curveFit, 13);
        f867a.append(C0229e.KeyTimeCycle_android_scaleY, 14);
        f867a.append(C0229e.KeyTimeCycle_android_translationX, 15);
        f867a.append(C0229e.KeyTimeCycle_android_translationY, 16);
        f867a.append(C0229e.KeyTimeCycle_android_translationZ, 17);
        f867a.append(C0229e.KeyTimeCycle_motionProgress, 18);
        f867a.append(C0229e.KeyTimeCycle_wavePeriod, 20);
        f867a.append(C0229e.KeyTimeCycle_waveOffset, 21);
        f867a.append(C0229e.KeyTimeCycle_waveShape, 19);
    }

    /* renamed from: a */
    public static void m14251a(k kVar, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            switch (f867a.get(index)) {
                case 1:
                    k.g(kVar, typedArray.getFloat(index, k.f(kVar)));
                    break;
                case 2:
                    k.j(kVar, typedArray.getDimension(index, k.h(kVar)));
                    break;
                case 3:
                case 11:
                default:
                    Log.e("KeyTimeCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + f867a.get(index));
                    break;
                case 4:
                    k.x(kVar, typedArray.getFloat(index, k.w(kVar)));
                    break;
                case 5:
                    k.J(kVar, typedArray.getFloat(index, k.I(kVar)));
                    break;
                case 6:
                    k.L(kVar, typedArray.getFloat(index, k.K(kVar)));
                    break;
                case 7:
                    k.H(kVar, typedArray.getFloat(index, k.G(kVar)));
                    break;
                case 8:
                    k.n(kVar, typedArray.getFloat(index, k.m(kVar)));
                    break;
                case 9:
                    k.i(kVar, typedArray.getString(index));
                    break;
                case 10:
                    if (MotionLayout.D0) {
                        int resourceId = typedArray.getResourceId(index, kVar.f840b);
                        kVar.f840b = resourceId;
                        if (resourceId != -1) {
                            break;
                        }
                        kVar.f841c = typedArray.getString(index);
                        break;
                    } else {
                        if (typedArray.peekValue(index).type != 3) {
                            kVar.f840b = typedArray.getResourceId(index, kVar.f840b);
                            break;
                        }
                        kVar.f841c = typedArray.getString(index);
                    }
                case 12:
                    kVar.f839a = typedArray.getInt(index, kVar.f839a);
                    break;
                case 13:
                    k.z(kVar, typedArray.getInteger(index, k.y(kVar)));
                    break;
                case 14:
                    k.l(kVar, typedArray.getFloat(index, k.k(kVar)));
                    break;
                case 15:
                    k.p(kVar, typedArray.getDimension(index, k.o(kVar)));
                    break;
                case 16:
                    k.r(kVar, typedArray.getDimension(index, k.q(kVar)));
                    break;
                case 17:
                    if (Build.VERSION.SDK_INT >= 21) {
                        k.t(kVar, typedArray.getDimension(index, k.s(kVar)));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    k.v(kVar, typedArray.getFloat(index, k.u(kVar)));
                    break;
                case 19:
                    k.B(kVar, typedArray.getInt(index, k.A(kVar)));
                    break;
                case 20:
                    k.D(kVar, typedArray.getFloat(index, k.C(kVar)));
                    break;
                case 21:
                    k.F(kVar, typedArray.peekValue(index).type == 5 ? typedArray.getDimension(index, k.E(kVar)) : typedArray.getFloat(index, k.E(kVar)));
                    break;
            }
        }
    }
}
