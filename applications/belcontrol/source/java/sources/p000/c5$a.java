package p000;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.widget.MotionLayout;
/* renamed from: c5$a */
/* loaded from: classes-dex2jar.jar:c5$a.class */
public class c5$a {

    /* renamed from: a */
    public static SparseIntArray f2157a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f2157a = sparseIntArray;
        sparseIntArray.append(C1278d7.KeyTrigger_framePosition, 8);
        f2157a.append(C1278d7.KeyTrigger_onCross, 4);
        f2157a.append(C1278d7.KeyTrigger_onNegativeCross, 1);
        f2157a.append(C1278d7.KeyTrigger_onPositiveCross, 2);
        f2157a.append(C1278d7.KeyTrigger_motionTarget, 7);
        f2157a.append(C1278d7.KeyTrigger_triggerId, 6);
        f2157a.append(C1278d7.KeyTrigger_triggerSlack, 5);
        f2157a.append(C1278d7.KeyTrigger_motion_triggerOnCollision, 9);
        f2157a.append(C1278d7.KeyTrigger_motion_postLayoutCollision, 10);
        f2157a.append(C1278d7.KeyTrigger_triggerReceiver, 11);
    }

    /* renamed from: a */
    public static void m5451a(c5 c5Var, TypedArray typedArray, Context context) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            switch (f2157a.get(index)) {
                case 1:
                    c5.g(c5Var, typedArray.getString(index));
                    continue;
                case 2:
                    c5.h(c5Var, typedArray.getString(index));
                    continue;
                case 4:
                    c5.i(c5Var, typedArray.getString(index));
                    continue;
                case 5:
                    c5Var.m = typedArray.getFloat(index, c5Var.m);
                    continue;
                case 6:
                    c5.k(c5Var, typedArray.getResourceId(index, c5.j(c5Var)));
                    continue;
                case 7:
                    if (MotionLayout.n0) {
                        int resourceId = typedArray.getResourceId(index, ((t4) c5Var).b);
                        ((t4) c5Var).b = resourceId;
                        if (resourceId != -1) {
                            continue;
                        }
                        ((t4) c5Var).c = typedArray.getString(index);
                    } else {
                        if (typedArray.peekValue(index).type != 3) {
                            ((t4) c5Var).b = typedArray.getResourceId(index, ((t4) c5Var).b);
                        }
                        ((t4) c5Var).c = typedArray.getString(index);
                    }
                case 8:
                    int integer = typedArray.getInteger(index, ((t4) c5Var).a);
                    ((t4) c5Var).a = integer;
                    c5.f(c5Var, (integer + 0.5f) / 100.0f);
                    continue;
                case 9:
                    c5.m(c5Var, typedArray.getResourceId(index, c5.l(c5Var)));
                    continue;
                case 10:
                    c5.o(c5Var, typedArray.getBoolean(index, c5.n(c5Var)));
                    continue;
                case 11:
                    c5.q(c5Var, typedArray.getResourceId(index, c5.p(c5Var)));
                    break;
            }
            Log.e("KeyTrigger", "unused attribute 0x" + Integer.toHexString(index) + "   " + f2157a.get(index));
        }
    }
}
