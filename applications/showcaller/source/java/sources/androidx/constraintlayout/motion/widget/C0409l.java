package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.widget.C0523e;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
/* renamed from: androidx.constraintlayout.motion.widget.l */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/l.class */
public class C0409l extends AbstractC0380c {

    /* renamed from: i */
    private int f1782i;

    /* renamed from: l */
    private int f1785l;

    /* renamed from: m */
    private int f1786m;

    /* renamed from: t */
    private Method f1793t;

    /* renamed from: u */
    private Method f1794u;

    /* renamed from: v */
    private Method f1795v;

    /* renamed from: w */
    private float f1796w;

    /* renamed from: g */
    private int f1780g = -1;

    /* renamed from: h */
    private String f1781h = null;

    /* renamed from: j */
    private String f1783j = null;

    /* renamed from: k */
    private String f1784k = null;

    /* renamed from: n */
    private View f1787n = null;

    /* renamed from: o */
    float f1788o = 0.1f;

    /* renamed from: p */
    private boolean f1789p = true;

    /* renamed from: q */
    private boolean f1790q = true;

    /* renamed from: r */
    private boolean f1791r = true;

    /* renamed from: s */
    private float f1792s = Float.NaN;

    /* renamed from: x */
    private boolean f1797x = false;

    /* renamed from: y */
    RectF f1798y = new RectF();

    /* renamed from: z */
    RectF f1799z = new RectF();

    /* renamed from: androidx.constraintlayout.motion.widget.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/l$a.class */
    private static class C0410a {

        /* renamed from: a */
        private static SparseIntArray f1800a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1800a = sparseIntArray;
            sparseIntArray.append(C0523e.KeyTrigger_framePosition, 8);
            f1800a.append(C0523e.KeyTrigger_onCross, 4);
            f1800a.append(C0523e.KeyTrigger_onNegativeCross, 1);
            f1800a.append(C0523e.KeyTrigger_onPositiveCross, 2);
            f1800a.append(C0523e.KeyTrigger_motionTarget, 7);
            f1800a.append(C0523e.KeyTrigger_triggerId, 6);
            f1800a.append(C0523e.KeyTrigger_triggerSlack, 5);
            f1800a.append(C0523e.KeyTrigger_motion_triggerOnCollision, 9);
            f1800a.append(C0523e.KeyTrigger_motion_postLayoutCollision, 10);
            f1800a.append(C0523e.KeyTrigger_triggerReceiver, 11);
        }

        /* renamed from: a */
        public static void m34342a(C0409l c0409l, TypedArray typedArray, Context context) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f1800a.get(index)) {
                    case 1:
                        c0409l.f1783j = typedArray.getString(index);
                        continue;
                    case 2:
                        c0409l.f1784k = typedArray.getString(index);
                        continue;
                    case 4:
                        c0409l.f1781h = typedArray.getString(index);
                        continue;
                    case 5:
                        c0409l.f1788o = typedArray.getFloat(index, c0409l.f1788o);
                        continue;
                    case 6:
                        c0409l.f1785l = typedArray.getResourceId(index, c0409l.f1785l);
                        continue;
                    case 7:
                        if (MotionLayout.f1551A) {
                            int resourceId = typedArray.getResourceId(index, c0409l.f1677c);
                            c0409l.f1677c = resourceId;
                            if (resourceId == -1) {
                                c0409l.f1678d = typedArray.getString(index);
                            } else {
                                continue;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            c0409l.f1678d = typedArray.getString(index);
                        } else {
                            c0409l.f1677c = typedArray.getResourceId(index, c0409l.f1677c);
                        }
                    case 8:
                        int integer = typedArray.getInteger(index, c0409l.f1676b);
                        c0409l.f1676b = integer;
                        c0409l.f1792s = (integer + 0.5f) / 100.0f;
                        continue;
                    case 9:
                        c0409l.f1786m = typedArray.getResourceId(index, c0409l.f1786m);
                        continue;
                    case 10:
                        c0409l.f1797x = typedArray.getBoolean(index, c0409l.f1797x);
                        continue;
                    case 11:
                        c0409l.f1782i = typedArray.getResourceId(index, c0409l.f1782i);
                        break;
                }
                Log.e("KeyTrigger", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1800a.get(index));
            }
        }
    }

    public C0409l() {
        int i = AbstractC0380c.f1675a;
        this.f1782i = i;
        this.f1785l = i;
        this.f1786m = i;
        this.f1679e = 5;
        this.f1680f = new HashMap<>();
    }

    /* renamed from: s */
    private void m34343s(RectF rectF, View view, boolean z) {
        rectF.top = view.getTop();
        rectF.bottom = view.getBottom();
        rectF.left = view.getLeft();
        rectF.right = view.getRight();
        if (z) {
            view.getMatrix().mapRect(rectF);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0380c
    /* renamed from: a */
    public void mo34359a(HashMap<String, AbstractC0419r> hashMap) {
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0380c
    /* renamed from: b */
    public void mo34358b(HashSet<String> hashSet) {
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0380c
    /* renamed from: c */
    public void mo34357c(Context context, AttributeSet attributeSet) {
        C0410a.m34342a(this, context.obtainStyledAttributes(attributeSet, C0523e.KeyTrigger), context);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x017e  */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m34344r(float r6, android.view.View r7) {
        /*
            Method dump skipped, instructions count: 1116
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.C0409l.m34344r(float, android.view.View):void");
    }
}
