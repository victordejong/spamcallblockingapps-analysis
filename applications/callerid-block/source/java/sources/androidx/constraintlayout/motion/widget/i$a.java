package androidx.constraintlayout.motion.widget;

import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.C0229e;
import d.f.a.a.c;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/i$a.class */
class i$a {

    /* renamed from: a */
    private static SparseIntArray f866a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f866a = sparseIntArray;
        sparseIntArray.append(C0229e.KeyPosition_motionTarget, 1);
        f866a.append(C0229e.KeyPosition_framePosition, 2);
        f866a.append(C0229e.KeyPosition_transitionEasing, 3);
        f866a.append(C0229e.KeyPosition_curveFit, 4);
        f866a.append(C0229e.KeyPosition_drawPath, 5);
        f866a.append(C0229e.KeyPosition_percentX, 6);
        f866a.append(C0229e.KeyPosition_percentY, 7);
        f866a.append(C0229e.KeyPosition_keyPositionType, 9);
        f866a.append(C0229e.KeyPosition_sizePercent, 8);
        f866a.append(C0229e.KeyPosition_percentWidth, 11);
        f866a.append(C0229e.KeyPosition_percentHeight, 12);
        f866a.append(C0229e.KeyPosition_pathMotionArc, 10);
    }

    /* renamed from: b */
    public static void m14252b(i iVar, TypedArray typedArray) {
        float f;
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            switch (f866a.get(index)) {
                case 1:
                    if (MotionLayout.D0) {
                        int resourceId = typedArray.getResourceId(index, iVar.f840b);
                        iVar.f840b = resourceId;
                        if (resourceId != -1) {
                        }
                        iVar.f841c = typedArray.getString(index);
                    } else {
                        if (typedArray.peekValue(index).type != 3) {
                            iVar.f840b = typedArray.getResourceId(index, iVar.f840b);
                            continue;
                        }
                        iVar.f841c = typedArray.getString(index);
                    }
                case 2:
                    iVar.f839a = typedArray.getInt(index, iVar.f839a);
                    continue;
                case 3:
                    iVar.g = typedArray.peekValue(index).type == 3 ? typedArray.getString(index) : c.c[typedArray.getInteger(index, 0)];
                    continue;
                case 4:
                    ((j) iVar).f = typedArray.getInteger(index, ((j) iVar).f);
                    continue;
                case 5:
                    iVar.i = typedArray.getInt(index, iVar.i);
                    continue;
                case 6:
                    iVar.l = typedArray.getFloat(index, iVar.l);
                    continue;
                case 7:
                    iVar.m = typedArray.getFloat(index, iVar.m);
                    continue;
                case 8:
                    f = typedArray.getFloat(index, iVar.k);
                    iVar.j = f;
                    break;
                case 9:
                    iVar.p = typedArray.getInt(index, iVar.p);
                    continue;
                case 10:
                    iVar.h = typedArray.getInt(index, iVar.h);
                    continue;
                case 11:
                    iVar.j = typedArray.getFloat(index, iVar.j);
                    continue;
                case 12:
                    f = typedArray.getFloat(index, iVar.k);
                    break;
                default:
                    Log.e("KeyPosition", "unused attribute 0x" + Integer.toHexString(index) + "   " + f866a.get(index));
                    continue;
            }
            iVar.k = f;
        }
        if (iVar.f839a == -1) {
            Log.e("KeyPosition", "no frame position");
        }
    }
}
