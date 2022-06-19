package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.C0523e;
import java.util.HashMap;
import java.util.HashSet;
/* renamed from: androidx.constraintlayout.motion.widget.k */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/k.class */
public class C0407k extends AbstractC0380c {

    /* renamed from: g */
    private String f1762g;

    /* renamed from: h */
    private int f1763h = -1;

    /* renamed from: i */
    private float f1764i = Float.NaN;

    /* renamed from: j */
    private float f1765j = Float.NaN;

    /* renamed from: k */
    private float f1766k = Float.NaN;

    /* renamed from: l */
    private float f1767l = Float.NaN;

    /* renamed from: m */
    private float f1768m = Float.NaN;

    /* renamed from: n */
    private float f1769n = Float.NaN;

    /* renamed from: o */
    private float f1770o = Float.NaN;

    /* renamed from: p */
    private float f1771p = Float.NaN;

    /* renamed from: q */
    private float f1772q = Float.NaN;

    /* renamed from: r */
    private float f1773r = Float.NaN;

    /* renamed from: s */
    private float f1774s = Float.NaN;

    /* renamed from: t */
    private float f1775t = Float.NaN;

    /* renamed from: u */
    private int f1776u = 0;

    /* renamed from: v */
    private float f1777v = Float.NaN;

    /* renamed from: w */
    private float f1778w = 0.0f;

    /* renamed from: androidx.constraintlayout.motion.widget.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/k$a.class */
    private static class C0408a {

        /* renamed from: a */
        private static SparseIntArray f1779a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1779a = sparseIntArray;
            sparseIntArray.append(C0523e.KeyTimeCycle_android_alpha, 1);
            f1779a.append(C0523e.KeyTimeCycle_android_elevation, 2);
            f1779a.append(C0523e.KeyTimeCycle_android_rotation, 4);
            f1779a.append(C0523e.KeyTimeCycle_android_rotationX, 5);
            f1779a.append(C0523e.KeyTimeCycle_android_rotationY, 6);
            f1779a.append(C0523e.KeyTimeCycle_android_scaleX, 7);
            f1779a.append(C0523e.KeyTimeCycle_transitionPathRotate, 8);
            f1779a.append(C0523e.KeyTimeCycle_transitionEasing, 9);
            f1779a.append(C0523e.KeyTimeCycle_motionTarget, 10);
            f1779a.append(C0523e.KeyTimeCycle_framePosition, 12);
            f1779a.append(C0523e.KeyTimeCycle_curveFit, 13);
            f1779a.append(C0523e.KeyTimeCycle_android_scaleY, 14);
            f1779a.append(C0523e.KeyTimeCycle_android_translationX, 15);
            f1779a.append(C0523e.KeyTimeCycle_android_translationY, 16);
            f1779a.append(C0523e.KeyTimeCycle_android_translationZ, 17);
            f1779a.append(C0523e.KeyTimeCycle_motionProgress, 18);
            f1779a.append(C0523e.KeyTimeCycle_wavePeriod, 20);
            f1779a.append(C0523e.KeyTimeCycle_waveOffset, 21);
            f1779a.append(C0523e.KeyTimeCycle_waveShape, 19);
        }

        /* renamed from: a */
        public static void m34360a(C0407k c0407k, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f1779a.get(index)) {
                    case 1:
                        c0407k.f1764i = typedArray.getFloat(index, c0407k.f1764i);
                        break;
                    case 2:
                        c0407k.f1765j = typedArray.getDimension(index, c0407k.f1765j);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyTimeCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1779a.get(index));
                        break;
                    case 4:
                        c0407k.f1766k = typedArray.getFloat(index, c0407k.f1766k);
                        break;
                    case 5:
                        c0407k.f1767l = typedArray.getFloat(index, c0407k.f1767l);
                        break;
                    case 6:
                        c0407k.f1768m = typedArray.getFloat(index, c0407k.f1768m);
                        break;
                    case 7:
                        c0407k.f1770o = typedArray.getFloat(index, c0407k.f1770o);
                        break;
                    case 8:
                        c0407k.f1769n = typedArray.getFloat(index, c0407k.f1769n);
                        break;
                    case 9:
                        c0407k.f1762g = typedArray.getString(index);
                        break;
                    case 10:
                        if (MotionLayout.f1551A) {
                            int resourceId = typedArray.getResourceId(index, c0407k.f1677c);
                            c0407k.f1677c = resourceId;
                            if (resourceId == -1) {
                                c0407k.f1678d = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            c0407k.f1678d = typedArray.getString(index);
                            break;
                        } else {
                            c0407k.f1677c = typedArray.getResourceId(index, c0407k.f1677c);
                            break;
                        }
                    case 12:
                        c0407k.f1676b = typedArray.getInt(index, c0407k.f1676b);
                        break;
                    case 13:
                        c0407k.f1763h = typedArray.getInteger(index, c0407k.f1763h);
                        break;
                    case 14:
                        c0407k.f1771p = typedArray.getFloat(index, c0407k.f1771p);
                        break;
                    case 15:
                        c0407k.f1772q = typedArray.getDimension(index, c0407k.f1772q);
                        break;
                    case 16:
                        c0407k.f1773r = typedArray.getDimension(index, c0407k.f1773r);
                        break;
                    case 17:
                        if (Build.VERSION.SDK_INT >= 21) {
                            c0407k.f1774s = typedArray.getDimension(index, c0407k.f1774s);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        c0407k.f1775t = typedArray.getFloat(index, c0407k.f1775t);
                        break;
                    case 19:
                        c0407k.f1776u = typedArray.getInt(index, c0407k.f1776u);
                        break;
                    case 20:
                        c0407k.f1777v = typedArray.getFloat(index, c0407k.f1777v);
                        break;
                    case 21:
                        if (typedArray.peekValue(index).type == 5) {
                            c0407k.f1778w = typedArray.getDimension(index, c0407k.f1778w);
                            break;
                        } else {
                            c0407k.f1778w = typedArray.getFloat(index, c0407k.f1778w);
                            break;
                        }
                }
            }
        }
    }

    public C0407k() {
        this.f1679e = 3;
        this.f1680f = new HashMap<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0130, code lost:
        if (r0.equals("scaleY") == false) goto L12;
     */
    /* renamed from: M */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m34383M(java.util.HashMap<java.lang.String, androidx.constraintlayout.motion.widget.AbstractC0436s> r8) {
        /*
            Method dump skipped, instructions count: 1003
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.C0407k.m34383M(java.util.HashMap):void");
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0380c
    /* renamed from: a */
    public void mo34359a(HashMap<String, AbstractC0419r> hashMap) {
        throw new IllegalArgumentException(" KeyTimeCycles do not support SplineSet");
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0380c
    /* renamed from: b */
    public void mo34358b(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f1764i)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f1765j)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f1766k)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f1767l)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f1768m)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f1772q)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f1773r)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f1774s)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.f1769n)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f1770o)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f1771p)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f1775t)) {
            hashSet.add("progress");
        }
        if (this.f1680f.size() > 0) {
            for (String str : this.f1680f.keySet()) {
                hashSet.add("CUSTOM," + str);
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0380c
    /* renamed from: c */
    public void mo34357c(Context context, AttributeSet attributeSet) {
        C0408a.m34360a(this, context.obtainStyledAttributes(attributeSet, C0523e.KeyTimeCycle));
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0380c
    /* renamed from: e */
    public void mo34382e(HashMap<String, Integer> hashMap) {
        if (this.f1763h == -1) {
            return;
        }
        if (!Float.isNaN(this.f1764i)) {
            hashMap.put("alpha", Integer.valueOf(this.f1763h));
        }
        if (!Float.isNaN(this.f1765j)) {
            hashMap.put("elevation", Integer.valueOf(this.f1763h));
        }
        if (!Float.isNaN(this.f1766k)) {
            hashMap.put("rotation", Integer.valueOf(this.f1763h));
        }
        if (!Float.isNaN(this.f1767l)) {
            hashMap.put("rotationX", Integer.valueOf(this.f1763h));
        }
        if (!Float.isNaN(this.f1768m)) {
            hashMap.put("rotationY", Integer.valueOf(this.f1763h));
        }
        if (!Float.isNaN(this.f1772q)) {
            hashMap.put("translationX", Integer.valueOf(this.f1763h));
        }
        if (!Float.isNaN(this.f1773r)) {
            hashMap.put("translationY", Integer.valueOf(this.f1763h));
        }
        if (!Float.isNaN(this.f1774s)) {
            hashMap.put("translationZ", Integer.valueOf(this.f1763h));
        }
        if (!Float.isNaN(this.f1769n)) {
            hashMap.put("transitionPathRotate", Integer.valueOf(this.f1763h));
        }
        if (!Float.isNaN(this.f1770o)) {
            hashMap.put("scaleX", Integer.valueOf(this.f1763h));
        }
        if (!Float.isNaN(this.f1770o)) {
            hashMap.put("scaleY", Integer.valueOf(this.f1763h));
        }
        if (!Float.isNaN(this.f1775t)) {
            hashMap.put("progress", Integer.valueOf(this.f1763h));
        }
        if (this.f1680f.size() <= 0) {
            return;
        }
        for (String str : this.f1680f.keySet()) {
            hashMap.put("CUSTOM," + str, Integer.valueOf(this.f1763h));
        }
    }
}
