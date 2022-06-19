package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.C0687e;
import java.util.HashMap;
import java.util.HashSet;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* renamed from: androidx.constraintlayout.motion.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/c.class */
public class C0593c extends AbstractC0592b {

    /* renamed from: g */
    private String f2561g;

    /* renamed from: h */
    private int f2562h = -1;

    /* renamed from: i */
    private boolean f2563i = false;

    /* renamed from: j */
    private float f2564j = Float.NaN;

    /* renamed from: k */
    private float f2565k = Float.NaN;

    /* renamed from: l */
    private float f2566l = Float.NaN;

    /* renamed from: m */
    private float f2567m = Float.NaN;

    /* renamed from: n */
    private float f2568n = Float.NaN;

    /* renamed from: o */
    private float f2569o = Float.NaN;

    /* renamed from: p */
    private float f2570p = Float.NaN;

    /* renamed from: q */
    private float f2571q = Float.NaN;

    /* renamed from: r */
    private float f2572r = Float.NaN;

    /* renamed from: s */
    private float f2573s = Float.NaN;

    /* renamed from: t */
    private float f2574t = Float.NaN;

    /* renamed from: u */
    private float f2575u = Float.NaN;

    /* renamed from: v */
    private float f2576v = Float.NaN;

    /* renamed from: w */
    private float f2577w = Float.NaN;

    /* renamed from: androidx.constraintlayout.motion.widget.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/c$a.class */
    static final class C0594a {

        /* renamed from: a */
        private static SparseIntArray f2578a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f2578a = sparseIntArray;
            sparseIntArray.append(C0687e.C0689b.KeyAttribute_android_alpha, 1);
            f2578a.append(C0687e.C0689b.KeyAttribute_android_elevation, 2);
            f2578a.append(C0687e.C0689b.KeyAttribute_android_rotation, 4);
            f2578a.append(C0687e.C0689b.KeyAttribute_android_rotationX, 5);
            f2578a.append(C0687e.C0689b.KeyAttribute_android_rotationY, 6);
            f2578a.append(C0687e.C0689b.KeyAttribute_android_transformPivotX, 19);
            f2578a.append(C0687e.C0689b.KeyAttribute_android_transformPivotY, 20);
            f2578a.append(C0687e.C0689b.KeyAttribute_android_scaleX, 7);
            f2578a.append(C0687e.C0689b.KeyAttribute_transitionPathRotate, 8);
            f2578a.append(C0687e.C0689b.KeyAttribute_transitionEasing, 9);
            f2578a.append(C0687e.C0689b.KeyAttribute_motionTarget, 10);
            f2578a.append(C0687e.C0689b.KeyAttribute_framePosition, 12);
            f2578a.append(C0687e.C0689b.KeyAttribute_curveFit, 13);
            f2578a.append(C0687e.C0689b.KeyAttribute_android_scaleY, 14);
            f2578a.append(C0687e.C0689b.KeyAttribute_android_translationX, 15);
            f2578a.append(C0687e.C0689b.KeyAttribute_android_translationY, 16);
            f2578a.append(C0687e.C0689b.KeyAttribute_android_translationZ, 17);
            f2578a.append(C0687e.C0689b.KeyAttribute_motionProgress, 18);
        }

        private C0594a() {
        }

        /* renamed from: a */
        public static void m44949a(C0593c c0593c, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f2578a.get(index)) {
                    case 1:
                        c0593c.f2564j = typedArray.getFloat(index, c0593c.f2564j);
                        break;
                    case 2:
                        c0593c.f2565k = typedArray.getDimension(index, c0593c.f2565k);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyAttribute", "unused attribute 0x" + Integer.toHexString(index) + "   " + f2578a.get(index));
                        break;
                    case 4:
                        c0593c.f2566l = typedArray.getFloat(index, c0593c.f2566l);
                        break;
                    case 5:
                        c0593c.f2567m = typedArray.getFloat(index, c0593c.f2567m);
                        break;
                    case 6:
                        c0593c.f2568n = typedArray.getFloat(index, c0593c.f2568n);
                        break;
                    case 7:
                        c0593c.f2572r = typedArray.getFloat(index, c0593c.f2572r);
                        break;
                    case 8:
                        c0593c.f2571q = typedArray.getFloat(index, c0593c.f2571q);
                        break;
                    case 9:
                        c0593c.f2561g = typedArray.getString(index);
                        break;
                    case 10:
                        if (MotionLayout.f2439a) {
                            c0593c.f2557c = typedArray.getResourceId(index, c0593c.f2557c);
                            if (c0593c.f2557c == -1) {
                                c0593c.f2558d = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            c0593c.f2558d = typedArray.getString(index);
                            break;
                        } else {
                            c0593c.f2557c = typedArray.getResourceId(index, c0593c.f2557c);
                            break;
                        }
                    case 12:
                        c0593c.f2556b = typedArray.getInt(index, c0593c.f2556b);
                        break;
                    case 13:
                        c0593c.f2562h = typedArray.getInteger(index, c0593c.f2562h);
                        break;
                    case 14:
                        c0593c.f2573s = typedArray.getFloat(index, c0593c.f2573s);
                        break;
                    case 15:
                        c0593c.f2574t = typedArray.getDimension(index, c0593c.f2574t);
                        break;
                    case 16:
                        c0593c.f2575u = typedArray.getDimension(index, c0593c.f2575u);
                        break;
                    case 17:
                        if (Build.VERSION.SDK_INT >= 21) {
                            c0593c.f2576v = typedArray.getDimension(index, c0593c.f2576v);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        c0593c.f2577w = typedArray.getFloat(index, c0593c.f2577w);
                        break;
                    case 19:
                        c0593c.f2569o = typedArray.getDimension(index, c0593c.f2569o);
                        break;
                    case 20:
                        c0593c.f2570p = typedArray.getDimension(index, c0593c.f2570p);
                        break;
                }
            }
        }
    }

    public C0593c() {
        this.f2559e = 1;
        this.f2560f = new HashMap<>();
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0592b
    /* renamed from: a */
    public final void mo44866a(Context context, AttributeSet attributeSet) {
        C0594a.m44949a(this, context.obtainStyledAttributes(attributeSet, C0687e.C0689b.KeyAttribute));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0162, code lost:
        if (r0.equals("scaleY") == false) goto L12;
     */
    @Override // androidx.constraintlayout.motion.widget.AbstractC0592b
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo44859a(java.util.HashMap<java.lang.String, androidx.constraintlayout.motion.widget.AbstractC0631q> r5) {
        /*
            Method dump skipped, instructions count: 950
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.C0593c.mo44859a(java.util.HashMap):void");
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0592b
    /* renamed from: a */
    public final void mo44858a(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f2564j)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f2565k)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f2566l)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f2567m)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f2568n)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f2569o)) {
            hashSet.add("transformPivotX");
        }
        if (!Float.isNaN(this.f2570p)) {
            hashSet.add("transformPivotY");
        }
        if (!Float.isNaN(this.f2574t)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f2575u)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f2576v)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.f2571q)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f2572r)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f2573s)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f2577w)) {
            hashSet.add(EventConstants.PROGRESS);
        }
        if (this.f2560f.size() > 0) {
            for (String str : this.f2560f.keySet()) {
                hashSet.add("CUSTOM,".concat(String.valueOf(str)));
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0592b
    /* renamed from: b */
    public final void mo44895b(HashMap<String, Integer> hashMap) {
        if (this.f2562h == -1) {
            return;
        }
        if (!Float.isNaN(this.f2564j)) {
            hashMap.put("alpha", Integer.valueOf(this.f2562h));
        }
        if (!Float.isNaN(this.f2565k)) {
            hashMap.put("elevation", Integer.valueOf(this.f2562h));
        }
        if (!Float.isNaN(this.f2566l)) {
            hashMap.put("rotation", Integer.valueOf(this.f2562h));
        }
        if (!Float.isNaN(this.f2567m)) {
            hashMap.put("rotationX", Integer.valueOf(this.f2562h));
        }
        if (!Float.isNaN(this.f2568n)) {
            hashMap.put("rotationY", Integer.valueOf(this.f2562h));
        }
        if (!Float.isNaN(this.f2569o)) {
            hashMap.put("transformPivotX", Integer.valueOf(this.f2562h));
        }
        if (!Float.isNaN(this.f2570p)) {
            hashMap.put("transformPivotY", Integer.valueOf(this.f2562h));
        }
        if (!Float.isNaN(this.f2574t)) {
            hashMap.put("translationX", Integer.valueOf(this.f2562h));
        }
        if (!Float.isNaN(this.f2575u)) {
            hashMap.put("translationY", Integer.valueOf(this.f2562h));
        }
        if (!Float.isNaN(this.f2576v)) {
            hashMap.put("translationZ", Integer.valueOf(this.f2562h));
        }
        if (!Float.isNaN(this.f2571q)) {
            hashMap.put("transitionPathRotate", Integer.valueOf(this.f2562h));
        }
        if (!Float.isNaN(this.f2572r)) {
            hashMap.put("scaleX", Integer.valueOf(this.f2562h));
        }
        if (!Float.isNaN(this.f2573s)) {
            hashMap.put("scaleY", Integer.valueOf(this.f2562h));
        }
        if (!Float.isNaN(this.f2577w)) {
            hashMap.put(EventConstants.PROGRESS, Integer.valueOf(this.f2562h));
        }
        if (this.f2560f.size() <= 0) {
            return;
        }
        for (String str : this.f2560f.keySet()) {
            hashMap.put("CUSTOM,".concat(String.valueOf(str)), Integer.valueOf(this.f2562h));
        }
    }
}
