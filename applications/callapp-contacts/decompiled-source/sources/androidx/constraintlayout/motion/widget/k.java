package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.widget.e;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/k.class */
public class k extends b {
    Method s;
    Method t;
    Method u;
    float v;
    private int z = -1;
    String g = null;
    int h = f1492a;
    String i = null;
    String j = null;
    int k = f1492a;
    int l = f1492a;
    View m = null;
    float n = 0.1f;
    boolean o = true;
    boolean p = true;
    boolean q = true;
    float r = Float.NaN;
    boolean w = false;
    RectF x = new RectF();
    RectF y = new RectF();

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/k$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static SparseIntArray f1516a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1516a = sparseIntArray;
            sparseIntArray.append(e.b.KeyTrigger_framePosition, 8);
            f1516a.append(e.b.KeyTrigger_onCross, 4);
            f1516a.append(e.b.KeyTrigger_onNegativeCross, 1);
            f1516a.append(e.b.KeyTrigger_onPositiveCross, 2);
            f1516a.append(e.b.KeyTrigger_motionTarget, 7);
            f1516a.append(e.b.KeyTrigger_triggerId, 6);
            f1516a.append(e.b.KeyTrigger_triggerSlack, 5);
            f1516a.append(e.b.KeyTrigger_motion_triggerOnCollision, 9);
            f1516a.append(e.b.KeyTrigger_motion_postLayoutCollision, 10);
            f1516a.append(e.b.KeyTrigger_triggerReceiver, 11);
        }

        private a() {
        }

        public static void a(k kVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f1516a.get(index)) {
                    case 1:
                        kVar.i = typedArray.getString(index);
                        continue;
                    case 2:
                        kVar.j = typedArray.getString(index);
                        continue;
                    case 4:
                        kVar.g = typedArray.getString(index);
                        continue;
                    case 5:
                        kVar.n = typedArray.getFloat(index, kVar.n);
                        continue;
                    case 6:
                        kVar.k = typedArray.getResourceId(index, kVar.k);
                        continue;
                    case 7:
                        if (MotionLayout.f1463a) {
                            kVar.f1494c = typedArray.getResourceId(index, kVar.f1494c);
                            if (kVar.f1494c == -1) {
                                kVar.f1495d = typedArray.getString(index);
                            } else {
                                continue;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            kVar.f1495d = typedArray.getString(index);
                        } else {
                            kVar.f1494c = typedArray.getResourceId(index, kVar.f1494c);
                        }
                    case 8:
                        kVar.f1493b = typedArray.getInteger(index, kVar.f1493b);
                        kVar.r = (kVar.f1493b + 0.5f) / 100.0f;
                        continue;
                    case 9:
                        kVar.l = typedArray.getResourceId(index, kVar.l);
                        continue;
                    case 10:
                        kVar.w = typedArray.getBoolean(index, kVar.w);
                        continue;
                    case 11:
                        kVar.h = typedArray.getResourceId(index, kVar.h);
                        break;
                }
                Log.e("KeyTrigger", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1516a.get(index));
            }
        }
    }

    public k() {
        this.e = 5;
        this.f = new HashMap<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(RectF rectF, View view, boolean z) {
        rectF.top = view.getTop();
        rectF.bottom = view.getBottom();
        rectF.left = view.getLeft();
        rectF.right = view.getRight();
        if (z) {
            view.getMatrix().mapRect(rectF);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.b
    public final void a(Context context, AttributeSet attributeSet) {
        a.a(this, context.obtainStyledAttributes(attributeSet, e.b.KeyTrigger));
    }

    @Override // androidx.constraintlayout.motion.widget.b
    public final void a(HashMap<String, q> hashMap) {
    }

    @Override // androidx.constraintlayout.motion.widget.b
    public final void a(HashSet<String> hashSet) {
    }
}
