package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.p029a.C0574c;
import androidx.constraintlayout.widget.C0687e;
import java.util.HashMap;
/* renamed from: androidx.constraintlayout.motion.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/h.class */
public class C0616h extends AbstractC0618i {

    /* renamed from: g */
    String f2628g = null;

    /* renamed from: h */
    int f2629h = f2555a;

    /* renamed from: i */
    int f2630i = 0;

    /* renamed from: j */
    float f2631j = Float.NaN;

    /* renamed from: k */
    float f2632k = Float.NaN;

    /* renamed from: l */
    float f2633l = Float.NaN;

    /* renamed from: m */
    float f2634m = Float.NaN;

    /* renamed from: n */
    float f2635n = Float.NaN;

    /* renamed from: o */
    float f2636o = Float.NaN;

    /* renamed from: p */
    int f2637p = 0;

    /* renamed from: r */
    private float f2638r = Float.NaN;

    /* renamed from: s */
    private float f2639s = Float.NaN;

    /* renamed from: androidx.constraintlayout.motion.widget.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/h$a.class */
    static final class C0617a {

        /* renamed from: a */
        private static SparseIntArray f2640a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f2640a = sparseIntArray;
            sparseIntArray.append(C0687e.C0689b.KeyPosition_motionTarget, 1);
            f2640a.append(C0687e.C0689b.KeyPosition_framePosition, 2);
            f2640a.append(C0687e.C0689b.KeyPosition_transitionEasing, 3);
            f2640a.append(C0687e.C0689b.KeyPosition_curveFit, 4);
            f2640a.append(C0687e.C0689b.KeyPosition_drawPath, 5);
            f2640a.append(C0687e.C0689b.KeyPosition_percentX, 6);
            f2640a.append(C0687e.C0689b.KeyPosition_percentY, 7);
            f2640a.append(C0687e.C0689b.KeyPosition_keyPositionType, 9);
            f2640a.append(C0687e.C0689b.KeyPosition_sizePercent, 8);
            f2640a.append(C0687e.C0689b.KeyPosition_percentWidth, 11);
            f2640a.append(C0687e.C0689b.KeyPosition_percentHeight, 12);
            f2640a.append(C0687e.C0689b.KeyPosition_pathMotionArc, 10);
        }

        private C0617a() {
        }

        /* renamed from: a */
        static /* synthetic */ void m44903a(C0616h c0616h, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f2640a.get(index)) {
                    case 1:
                        if (MotionLayout.f2439a) {
                            c0616h.f2557c = typedArray.getResourceId(index, c0616h.f2557c);
                            if (c0616h.f2557c == -1) {
                                c0616h.f2558d = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            c0616h.f2558d = typedArray.getString(index);
                            break;
                        } else {
                            c0616h.f2557c = typedArray.getResourceId(index, c0616h.f2557c);
                            break;
                        }
                    case 2:
                        c0616h.f2556b = typedArray.getInt(index, c0616h.f2556b);
                        break;
                    case 3:
                        if (typedArray.peekValue(index).type == 3) {
                            c0616h.f2628g = typedArray.getString(index);
                            break;
                        } else {
                            c0616h.f2628g = C0574c.f2393c[typedArray.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        c0616h.f2641q = typedArray.getInteger(index, c0616h.f2641q);
                        break;
                    case 5:
                        c0616h.f2630i = typedArray.getInt(index, c0616h.f2630i);
                        break;
                    case 6:
                        c0616h.f2633l = typedArray.getFloat(index, c0616h.f2633l);
                        break;
                    case 7:
                        c0616h.f2634m = typedArray.getFloat(index, c0616h.f2634m);
                        break;
                    case 8:
                        float f = typedArray.getFloat(index, c0616h.f2632k);
                        c0616h.f2631j = f;
                        c0616h.f2632k = f;
                        break;
                    case 9:
                        c0616h.f2637p = typedArray.getInt(index, c0616h.f2637p);
                        break;
                    case 10:
                        c0616h.f2629h = typedArray.getInt(index, c0616h.f2629h);
                        break;
                    case 11:
                        c0616h.f2631j = typedArray.getFloat(index, c0616h.f2631j);
                        break;
                    case 12:
                        c0616h.f2632k = typedArray.getFloat(index, c0616h.f2632k);
                        break;
                    default:
                        Log.e("KeyPosition", "unused attribute 0x" + Integer.toHexString(index) + "   " + f2640a.get(index));
                        break;
                }
            }
            if (c0616h.f2556b == -1) {
                Log.e("KeyPosition", "no frame position");
            }
        }
    }

    public C0616h() {
        this.f2559e = 2;
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0592b
    /* renamed from: a */
    public final void mo44866a(Context context, AttributeSet attributeSet) {
        C0617a.m44903a(this, context.obtainStyledAttributes(attributeSet, C0687e.C0689b.KeyPosition));
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0592b
    /* renamed from: a */
    public final void mo44859a(HashMap<String, AbstractC0631q> hashMap) {
    }
}
