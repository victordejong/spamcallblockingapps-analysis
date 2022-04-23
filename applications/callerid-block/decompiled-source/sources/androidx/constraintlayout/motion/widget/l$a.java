package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.C0229e;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/l$a.class */
class l$a {

    /* renamed from: a */
    private static SparseIntArray f868a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f868a = sparseIntArray;
        sparseIntArray.append(C0229e.KeyTrigger_framePosition, 8);
        f868a.append(C0229e.KeyTrigger_onCross, 4);
        f868a.append(C0229e.KeyTrigger_onNegativeCross, 1);
        f868a.append(C0229e.KeyTrigger_onPositiveCross, 2);
        f868a.append(C0229e.KeyTrigger_motionTarget, 7);
        f868a.append(C0229e.KeyTrigger_triggerId, 6);
        f868a.append(C0229e.KeyTrigger_triggerSlack, 5);
        f868a.append(C0229e.KeyTrigger_motion_triggerOnCollision, 9);
        f868a.append(C0229e.KeyTrigger_motion_postLayoutCollision, 10);
        f868a.append(C0229e.KeyTrigger_triggerReceiver, 11);
    }

    /* renamed from: a */
    public static void m14250a(l lVar, TypedArray typedArray, Context context) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            switch (f868a.get(index)) {
                case 1:
                    l.g(lVar, typedArray.getString(index));
                    continue;
                case 2:
                    l.h(lVar, typedArray.getString(index));
                    continue;
                case 4:
                    l.i(lVar, typedArray.getString(index));
                    continue;
                case 5:
                    lVar.m = typedArray.getFloat(index, lVar.m);
                    continue;
                case 6:
                    l.k(lVar, typedArray.getResourceId(index, l.j(lVar)));
                    continue;
                case 7:
                    if (MotionLayout.D0) {
                        int resourceId = typedArray.getResourceId(index, lVar.f840b);
                        lVar.f840b = resourceId;
                        if (resourceId != -1) {
                            continue;
                        }
                        lVar.f841c = typedArray.getString(index);
                    } else {
                        if (typedArray.peekValue(index).type != 3) {
                            lVar.f840b = typedArray.getResourceId(index, lVar.f840b);
                        }
                        lVar.f841c = typedArray.getString(index);
                    }
                case 8:
                    int integer = typedArray.getInteger(index, lVar.f839a);
                    lVar.f839a = integer;
                    l.f(lVar, (integer + 0.5f) / 100.0f);
                    continue;
                case 9:
                    l.m(lVar, typedArray.getResourceId(index, l.l(lVar)));
                    continue;
                case 10:
                    l.o(lVar, typedArray.getBoolean(index, l.n(lVar)));
                    continue;
                case 11:
                    l.q(lVar, typedArray.getResourceId(index, l.p(lVar)));
                    break;
            }
            Log.e("KeyTrigger", "unused attribute 0x" + Integer.toHexString(index) + "   " + f868a.get(index));
        }
    }
}
