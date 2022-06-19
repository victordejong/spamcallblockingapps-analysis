package p000;

import android.content.res.TypedArray;
import android.os.Build;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.widget.MotionLayout;
/* renamed from: b5$a */
/* loaded from: classes-dex2jar.jar:b5$a.class */
public class b5$a {

    /* renamed from: a */
    public static SparseIntArray f1789a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f1789a = sparseIntArray;
        sparseIntArray.append(C1278d7.KeyTimeCycle_android_alpha, 1);
        f1789a.append(C1278d7.KeyTimeCycle_android_elevation, 2);
        f1789a.append(C1278d7.KeyTimeCycle_android_rotation, 4);
        f1789a.append(C1278d7.KeyTimeCycle_android_rotationX, 5);
        f1789a.append(C1278d7.KeyTimeCycle_android_rotationY, 6);
        f1789a.append(C1278d7.KeyTimeCycle_android_scaleX, 7);
        f1789a.append(C1278d7.KeyTimeCycle_transitionPathRotate, 8);
        f1789a.append(C1278d7.KeyTimeCycle_transitionEasing, 9);
        f1789a.append(C1278d7.KeyTimeCycle_motionTarget, 10);
        f1789a.append(C1278d7.KeyTimeCycle_framePosition, 12);
        f1789a.append(C1278d7.KeyTimeCycle_curveFit, 13);
        f1789a.append(C1278d7.KeyTimeCycle_android_scaleY, 14);
        f1789a.append(C1278d7.KeyTimeCycle_android_translationX, 15);
        f1789a.append(C1278d7.KeyTimeCycle_android_translationY, 16);
        f1789a.append(C1278d7.KeyTimeCycle_android_translationZ, 17);
        f1789a.append(C1278d7.KeyTimeCycle_motionProgress, 18);
        f1789a.append(C1278d7.KeyTimeCycle_wavePeriod, 20);
        f1789a.append(C1278d7.KeyTimeCycle_waveOffset, 21);
        f1789a.append(C1278d7.KeyTimeCycle_waveShape, 19);
    }

    /* renamed from: a */
    public static void m5792a(b5 b5Var, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            switch (f1789a.get(index)) {
                case 1:
                    b5.g(b5Var, typedArray.getFloat(index, b5.f(b5Var)));
                    break;
                case 2:
                    b5.j(b5Var, typedArray.getDimension(index, b5.h(b5Var)));
                    break;
                case 3:
                case 11:
                default:
                    Log.e("KeyTimeCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1789a.get(index));
                    break;
                case 4:
                    b5.x(b5Var, typedArray.getFloat(index, b5.w(b5Var)));
                    break;
                case 5:
                    b5.J(b5Var, typedArray.getFloat(index, b5.I(b5Var)));
                    break;
                case 6:
                    b5.L(b5Var, typedArray.getFloat(index, b5.K(b5Var)));
                    break;
                case 7:
                    b5.H(b5Var, typedArray.getFloat(index, b5.G(b5Var)));
                    break;
                case 8:
                    b5.n(b5Var, typedArray.getFloat(index, b5.m(b5Var)));
                    break;
                case 9:
                    b5.i(b5Var, typedArray.getString(index));
                    break;
                case 10:
                    if (MotionLayout.n0) {
                        int resourceId = typedArray.getResourceId(index, ((t4) b5Var).b);
                        ((t4) b5Var).b = resourceId;
                        if (resourceId != -1) {
                            break;
                        }
                        ((t4) b5Var).c = typedArray.getString(index);
                        break;
                    } else {
                        if (typedArray.peekValue(index).type != 3) {
                            ((t4) b5Var).b = typedArray.getResourceId(index, ((t4) b5Var).b);
                            break;
                        }
                        ((t4) b5Var).c = typedArray.getString(index);
                    }
                case 12:
                    ((t4) b5Var).a = typedArray.getInt(index, ((t4) b5Var).a);
                    break;
                case 13:
                    b5.z(b5Var, typedArray.getInteger(index, b5.y(b5Var)));
                    break;
                case 14:
                    b5.l(b5Var, typedArray.getFloat(index, b5.k(b5Var)));
                    break;
                case 15:
                    b5.p(b5Var, typedArray.getDimension(index, b5.o(b5Var)));
                    break;
                case 16:
                    b5.r(b5Var, typedArray.getDimension(index, b5.q(b5Var)));
                    break;
                case 17:
                    if (Build.VERSION.SDK_INT >= 21) {
                        b5.t(b5Var, typedArray.getDimension(index, b5.s(b5Var)));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    b5.v(b5Var, typedArray.getFloat(index, b5.u(b5Var)));
                    break;
                case 19:
                    b5.B(b5Var, typedArray.getInt(index, b5.A(b5Var)));
                    break;
                case 20:
                    b5.D(b5Var, typedArray.getFloat(index, b5.C(b5Var)));
                    break;
                case 21:
                    b5.F(b5Var, typedArray.peekValue(index).type == 5 ? typedArray.getDimension(index, b5.E(b5Var)) : typedArray.getFloat(index, b5.E(b5Var)));
                    break;
            }
        }
    }
}
