package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.widget.C0687e;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
/* renamed from: androidx.constraintlayout.motion.widget.k */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/k.class */
public class C0621k extends AbstractC0592b {

    /* renamed from: s */
    Method f2672s;

    /* renamed from: t */
    Method f2673t;

    /* renamed from: u */
    Method f2674u;

    /* renamed from: v */
    float f2675v;

    /* renamed from: z */
    private int f2679z = -1;

    /* renamed from: g */
    String f2660g = null;

    /* renamed from: h */
    int f2661h = f2555a;

    /* renamed from: i */
    String f2662i = null;

    /* renamed from: j */
    String f2663j = null;

    /* renamed from: k */
    int f2664k = f2555a;

    /* renamed from: l */
    int f2665l = f2555a;

    /* renamed from: m */
    View f2666m = null;

    /* renamed from: n */
    float f2667n = 0.1f;

    /* renamed from: o */
    boolean f2668o = true;

    /* renamed from: p */
    boolean f2669p = true;

    /* renamed from: q */
    boolean f2670q = true;

    /* renamed from: r */
    float f2671r = Float.NaN;

    /* renamed from: w */
    boolean f2676w = false;

    /* renamed from: x */
    RectF f2677x = new RectF();

    /* renamed from: y */
    RectF f2678y = new RectF();

    /* renamed from: androidx.constraintlayout.motion.widget.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/k$a.class */
    static final class C0622a {

        /* renamed from: a */
        private static SparseIntArray f2680a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f2680a = sparseIntArray;
            sparseIntArray.append(C0687e.C0689b.KeyTrigger_framePosition, 8);
            f2680a.append(C0687e.C0689b.KeyTrigger_onCross, 4);
            f2680a.append(C0687e.C0689b.KeyTrigger_onNegativeCross, 1);
            f2680a.append(C0687e.C0689b.KeyTrigger_onPositiveCross, 2);
            f2680a.append(C0687e.C0689b.KeyTrigger_motionTarget, 7);
            f2680a.append(C0687e.C0689b.KeyTrigger_triggerId, 6);
            f2680a.append(C0687e.C0689b.KeyTrigger_triggerSlack, 5);
            f2680a.append(C0687e.C0689b.KeyTrigger_motion_triggerOnCollision, 9);
            f2680a.append(C0687e.C0689b.KeyTrigger_motion_postLayoutCollision, 10);
            f2680a.append(C0687e.C0689b.KeyTrigger_triggerReceiver, 11);
        }

        private C0622a() {
        }

        /* renamed from: a */
        public static void m44850a(C0621k c0621k, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f2680a.get(index)) {
                    case 1:
                        c0621k.f2662i = typedArray.getString(index);
                        continue;
                    case 2:
                        c0621k.f2663j = typedArray.getString(index);
                        continue;
                    case 4:
                        c0621k.f2660g = typedArray.getString(index);
                        continue;
                    case 5:
                        c0621k.f2667n = typedArray.getFloat(index, c0621k.f2667n);
                        continue;
                    case 6:
                        c0621k.f2664k = typedArray.getResourceId(index, c0621k.f2664k);
                        continue;
                    case 7:
                        if (MotionLayout.f2439a) {
                            c0621k.f2557c = typedArray.getResourceId(index, c0621k.f2557c);
                            if (c0621k.f2557c == -1) {
                                c0621k.f2558d = typedArray.getString(index);
                            } else {
                                continue;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            c0621k.f2558d = typedArray.getString(index);
                        } else {
                            c0621k.f2557c = typedArray.getResourceId(index, c0621k.f2557c);
                        }
                    case 8:
                        c0621k.f2556b = typedArray.getInteger(index, c0621k.f2556b);
                        c0621k.f2671r = (c0621k.f2556b + 0.5f) / 100.0f;
                        continue;
                    case 9:
                        c0621k.f2665l = typedArray.getResourceId(index, c0621k.f2665l);
                        continue;
                    case 10:
                        c0621k.f2676w = typedArray.getBoolean(index, c0621k.f2676w);
                        continue;
                    case 11:
                        c0621k.f2661h = typedArray.getResourceId(index, c0621k.f2661h);
                        break;
                }
                Log.e("KeyTrigger", "unused attribute 0x" + Integer.toHexString(index) + "   " + f2680a.get(index));
            }
        }
    }

    public C0621k() {
        this.f2559e = 5;
        this.f2560f = new HashMap<>();
    }

    /* renamed from: a */
    public static void m44865a(RectF rectF, View view, boolean z) {
        rectF.top = view.getTop();
        rectF.bottom = view.getBottom();
        rectF.left = view.getLeft();
        rectF.right = view.getRight();
        if (z) {
            view.getMatrix().mapRect(rectF);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0592b
    /* renamed from: a */
    public final void mo44866a(Context context, AttributeSet attributeSet) {
        C0622a.m44850a(this, context.obtainStyledAttributes(attributeSet, C0687e.C0689b.KeyTrigger));
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0592b
    /* renamed from: a */
    public final void mo44859a(HashMap<String, AbstractC0631q> hashMap) {
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0592b
    /* renamed from: a */
    public final void mo44858a(HashSet<String> hashSet) {
    }
}
