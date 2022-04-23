package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.a.c;
import androidx.constraintlayout.widget.e;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/h.class */
public class h extends i {
    String g = null;
    int h = f1492a;
    int i = 0;
    float j = Float.NaN;
    float k = Float.NaN;
    float l = Float.NaN;
    float m = Float.NaN;
    float n = Float.NaN;
    float o = Float.NaN;
    int p = 0;
    private float r = Float.NaN;
    private float s = Float.NaN;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/h$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static SparseIntArray f1514a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1514a = sparseIntArray;
            sparseIntArray.append(e.b.KeyPosition_motionTarget, 1);
            f1514a.append(e.b.KeyPosition_framePosition, 2);
            f1514a.append(e.b.KeyPosition_transitionEasing, 3);
            f1514a.append(e.b.KeyPosition_curveFit, 4);
            f1514a.append(e.b.KeyPosition_drawPath, 5);
            f1514a.append(e.b.KeyPosition_percentX, 6);
            f1514a.append(e.b.KeyPosition_percentY, 7);
            f1514a.append(e.b.KeyPosition_keyPositionType, 9);
            f1514a.append(e.b.KeyPosition_sizePercent, 8);
            f1514a.append(e.b.KeyPosition_percentWidth, 11);
            f1514a.append(e.b.KeyPosition_percentHeight, 12);
            f1514a.append(e.b.KeyPosition_pathMotionArc, 10);
        }

        private a() {
        }

        static /* synthetic */ void a(h hVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f1514a.get(index)) {
                    case 1:
                        if (!MotionLayout.f1463a) {
                            if (typedArray.peekValue(index).type == 3) {
                                hVar.f1495d = typedArray.getString(index);
                                break;
                            } else {
                                hVar.f1494c = typedArray.getResourceId(index, hVar.f1494c);
                                break;
                            }
                        } else {
                            hVar.f1494c = typedArray.getResourceId(index, hVar.f1494c);
                            if (hVar.f1494c == -1) {
                                hVar.f1495d = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        }
                    case 2:
                        hVar.f1493b = typedArray.getInt(index, hVar.f1493b);
                        break;
                    case 3:
                        if (typedArray.peekValue(index).type == 3) {
                            hVar.g = typedArray.getString(index);
                            break;
                        } else {
                            hVar.g = c.f1438c[typedArray.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        hVar.q = typedArray.getInteger(index, hVar.q);
                        break;
                    case 5:
                        hVar.i = typedArray.getInt(index, hVar.i);
                        break;
                    case 6:
                        hVar.l = typedArray.getFloat(index, hVar.l);
                        break;
                    case 7:
                        hVar.m = typedArray.getFloat(index, hVar.m);
                        break;
                    case 8:
                        float f = typedArray.getFloat(index, hVar.k);
                        hVar.j = f;
                        hVar.k = f;
                        break;
                    case 9:
                        hVar.p = typedArray.getInt(index, hVar.p);
                        break;
                    case 10:
                        hVar.h = typedArray.getInt(index, hVar.h);
                        break;
                    case 11:
                        hVar.j = typedArray.getFloat(index, hVar.j);
                        break;
                    case 12:
                        hVar.k = typedArray.getFloat(index, hVar.k);
                        break;
                    default:
                        Log.e("KeyPosition", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1514a.get(index));
                        break;
                }
            }
            if (hVar.f1493b == -1) {
                Log.e("KeyPosition", "no frame position");
            }
        }
    }

    public h() {
        this.e = 2;
    }

    @Override // androidx.constraintlayout.motion.widget.b
    public final void a(Context context, AttributeSet attributeSet) {
        a.a(this, context.obtainStyledAttributes(attributeSet, e.b.KeyPosition));
    }

    @Override // androidx.constraintlayout.motion.widget.b
    public final void a(HashMap<String, q> hashMap) {
    }
}
