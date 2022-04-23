package androidx.constraintlayout.motion.widget;

import android.content.res.TypedArray;
import android.os.Build;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.C0229e;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$a.class */
class f$a {

    /* renamed from: a */
    private static SparseIntArray f845a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f845a = sparseIntArray;
        sparseIntArray.append(C0229e.KeyCycle_motionTarget, 1);
        f845a.append(C0229e.KeyCycle_framePosition, 2);
        f845a.append(C0229e.KeyCycle_transitionEasing, 3);
        f845a.append(C0229e.KeyCycle_curveFit, 4);
        f845a.append(C0229e.KeyCycle_waveShape, 5);
        f845a.append(C0229e.KeyCycle_wavePeriod, 6);
        f845a.append(C0229e.KeyCycle_waveOffset, 7);
        f845a.append(C0229e.KeyCycle_waveVariesBy, 8);
        f845a.append(C0229e.KeyCycle_android_alpha, 9);
        f845a.append(C0229e.KeyCycle_android_elevation, 10);
        f845a.append(C0229e.KeyCycle_android_rotation, 11);
        f845a.append(C0229e.KeyCycle_android_rotationX, 12);
        f845a.append(C0229e.KeyCycle_android_rotationY, 13);
        f845a.append(C0229e.KeyCycle_transitionPathRotate, 14);
        f845a.append(C0229e.KeyCycle_android_scaleX, 15);
        f845a.append(C0229e.KeyCycle_android_scaleY, 16);
        f845a.append(C0229e.KeyCycle_android_translationX, 17);
        f845a.append(C0229e.KeyCycle_android_translationY, 18);
        f845a.append(C0229e.KeyCycle_android_translationZ, 19);
        f845a.append(C0229e.KeyCycle_motionProgress, 20);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m14270b(f fVar, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            switch (f845a.get(index)) {
                case 1:
                    if (MotionLayout.D0) {
                        int resourceId = typedArray.getResourceId(index, fVar.f840b);
                        fVar.f840b = resourceId;
                        if (resourceId != -1) {
                            break;
                        }
                        fVar.f841c = typedArray.getString(index);
                        break;
                    } else {
                        if (typedArray.peekValue(index).type != 3) {
                            fVar.f840b = typedArray.getResourceId(index, fVar.f840b);
                            break;
                        }
                        fVar.f841c = typedArray.getString(index);
                    }
                case 2:
                    fVar.f839a = typedArray.getInt(index, fVar.f839a);
                    break;
                case 3:
                    f.h(fVar, typedArray.getString(index));
                    break;
                case 4:
                    f.z(fVar, typedArray.getInteger(index, f.y(fVar)));
                    break;
                case 5:
                    f.B(fVar, typedArray.getInt(index, f.A(fVar)));
                    break;
                case 6:
                    f.D(fVar, typedArray.getFloat(index, f.C(fVar)));
                    break;
                case 7:
                    f.F(fVar, typedArray.peekValue(index).type == 5 ? typedArray.getDimension(index, f.E(fVar)) : typedArray.getFloat(index, f.E(fVar)));
                    break;
                case 8:
                    f.H(fVar, typedArray.getInt(index, f.G(fVar)));
                    break;
                case 9:
                    f.J(fVar, typedArray.getFloat(index, f.I(fVar)));
                    break;
                case 10:
                    f.L(fVar, typedArray.getDimension(index, f.K(fVar)));
                    break;
                case 11:
                    f.N(fVar, typedArray.getFloat(index, f.M(fVar)));
                    break;
                case 12:
                    f.g(fVar, typedArray.getFloat(index, f.f(fVar)));
                    break;
                case 13:
                    f.j(fVar, typedArray.getFloat(index, f.i(fVar)));
                    break;
                case 14:
                    f.l(fVar, typedArray.getFloat(index, f.k(fVar)));
                    break;
                case 15:
                    f.n(fVar, typedArray.getFloat(index, f.m(fVar)));
                    break;
                case 16:
                    f.p(fVar, typedArray.getFloat(index, f.o(fVar)));
                    break;
                case 17:
                    f.r(fVar, typedArray.getDimension(index, f.q(fVar)));
                    break;
                case 18:
                    f.t(fVar, typedArray.getDimension(index, f.s(fVar)));
                    break;
                case 19:
                    if (Build.VERSION.SDK_INT >= 21) {
                        f.v(fVar, typedArray.getDimension(index, f.u(fVar)));
                        break;
                    } else {
                        break;
                    }
                case 20:
                    f.x(fVar, typedArray.getFloat(index, f.w(fVar)));
                    break;
                default:
                    Log.e("KeyCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + f845a.get(index));
                    break;
            }
        }
    }
}
