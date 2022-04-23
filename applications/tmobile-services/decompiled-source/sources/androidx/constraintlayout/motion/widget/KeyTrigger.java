package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.widget.C0178R;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyTrigger.class */
public class KeyTrigger extends Key {

    /* renamed from: g */
    private int f1762g;

    /* renamed from: j */
    private int f1765j;

    /* renamed from: k */
    private int f1766k;

    /* renamed from: r */
    private Method f1773r;

    /* renamed from: s */
    private Method f1774s;

    /* renamed from: t */
    private Method f1775t;

    /* renamed from: u */
    private float f1776u;

    /* renamed from: f */
    private String f1761f = null;

    /* renamed from: h */
    private String f1763h = null;

    /* renamed from: i */
    private String f1764i = null;

    /* renamed from: l */
    private View f1767l = null;

    /* renamed from: m */
    float f1768m = 0.1f;

    /* renamed from: n */
    private boolean f1769n = true;

    /* renamed from: o */
    private boolean f1770o = true;

    /* renamed from: p */
    private boolean f1771p = true;

    /* renamed from: q */
    private float f1772q = Float.NaN;

    /* renamed from: v */
    private boolean f1777v = false;

    /* renamed from: w */
    RectF f1778w = new RectF();

    /* renamed from: x */
    RectF f1779x = new RectF();

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyTrigger$Loader.class */
    private static class Loader {

        /* renamed from: a */
        private static SparseIntArray f1780a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1780a = sparseIntArray;
            sparseIntArray.append(C0178R.styleable.KeyTrigger_framePosition, 8);
            f1780a.append(C0178R.styleable.KeyTrigger_onCross, 4);
            f1780a.append(C0178R.styleable.KeyTrigger_onNegativeCross, 1);
            f1780a.append(C0178R.styleable.KeyTrigger_onPositiveCross, 2);
            f1780a.append(C0178R.styleable.KeyTrigger_motionTarget, 7);
            f1780a.append(C0178R.styleable.KeyTrigger_triggerId, 6);
            f1780a.append(C0178R.styleable.KeyTrigger_triggerSlack, 5);
            f1780a.append(C0178R.styleable.KeyTrigger_motion_triggerOnCollision, 9);
            f1780a.append(C0178R.styleable.KeyTrigger_motion_postLayoutCollision, 10);
            f1780a.append(C0178R.styleable.KeyTrigger_triggerReceiver, 11);
        }

        private Loader() {
        }

        /* renamed from: a */
        public static void m20792a(KeyTrigger keyTrigger, TypedArray typedArray, Context context) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f1780a.get(index)) {
                    case 1:
                        keyTrigger.f1763h = typedArray.getString(index);
                        continue;
                    case 2:
                        keyTrigger.f1764i = typedArray.getString(index);
                        continue;
                    case 4:
                        keyTrigger.f1761f = typedArray.getString(index);
                        continue;
                    case 5:
                        keyTrigger.f1768m = typedArray.getFloat(index, keyTrigger.f1768m);
                        continue;
                    case 6:
                        keyTrigger.f1765j = typedArray.getResourceId(index, keyTrigger.f1765j);
                        continue;
                    case 7:
                        if (MotionLayout.f1830J0) {
                            int resourceId = typedArray.getResourceId(index, keyTrigger.f1669b);
                            keyTrigger.f1669b = resourceId;
                            if (resourceId == -1) {
                                keyTrigger.f1670c = typedArray.getString(index);
                            } else {
                                continue;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            keyTrigger.f1670c = typedArray.getString(index);
                        } else {
                            keyTrigger.f1669b = typedArray.getResourceId(index, keyTrigger.f1669b);
                        }
                    case 8:
                        int integer = typedArray.getInteger(index, keyTrigger.f1668a);
                        keyTrigger.f1668a = integer;
                        keyTrigger.f1772q = (integer + 0.5f) / 100.0f;
                        continue;
                    case 9:
                        keyTrigger.f1766k = typedArray.getResourceId(index, keyTrigger.f1766k);
                        continue;
                    case 10:
                        keyTrigger.f1777v = typedArray.getBoolean(index, keyTrigger.f1777v);
                        continue;
                    case 11:
                        keyTrigger.f1762g = typedArray.getResourceId(index, keyTrigger.f1762g);
                        break;
                }
                Log.e("KeyTrigger", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1780a.get(index));
            }
        }
    }

    public KeyTrigger() {
        int i = Key.f1667e;
        this.f1762g = i;
        this.f1765j = i;
        this.f1766k = i;
        this.f1671d = new HashMap<>();
    }

    /* renamed from: s */
    private void m20793s(RectF rectF, View view, boolean z) {
        rectF.top = view.getTop();
        rectF.bottom = view.getBottom();
        rectF.left = view.getLeft();
        rectF.right = view.getRight();
        if (z) {
            view.getMatrix().mapRect(rectF);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: a */
    public void mo20809a(HashMap<String, SplineSet> hashMap) {
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: b */
    public void mo20808b(HashSet<String> hashSet) {
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: c */
    public void mo20807c(Context context, AttributeSet attributeSet) {
        Loader.m20792a(this, context.obtainStyledAttributes(attributeSet, C0178R.styleable.KeyTrigger), context);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x017f  */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m20794r(float r6, android.view.View r7) {
        /*
            Method dump skipped, instructions count: 1117
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyTrigger.m20794r(float, android.view.View):void");
    }
}
