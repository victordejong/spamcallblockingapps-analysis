package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.C0687e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.HashMap;
import java.util.HashSet;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* renamed from: androidx.constraintlayout.motion.widget.j */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/j.class */
public class C0619j extends AbstractC0592b {

    /* renamed from: g */
    private String f2642g;

    /* renamed from: h */
    private int f2643h = -1;

    /* renamed from: i */
    private float f2644i = Float.NaN;

    /* renamed from: j */
    private float f2645j = Float.NaN;

    /* renamed from: k */
    private float f2646k = Float.NaN;

    /* renamed from: l */
    private float f2647l = Float.NaN;

    /* renamed from: m */
    private float f2648m = Float.NaN;

    /* renamed from: n */
    private float f2649n = Float.NaN;

    /* renamed from: o */
    private float f2650o = Float.NaN;

    /* renamed from: p */
    private float f2651p = Float.NaN;

    /* renamed from: q */
    private float f2652q = Float.NaN;

    /* renamed from: r */
    private float f2653r = Float.NaN;

    /* renamed from: s */
    private float f2654s = Float.NaN;

    /* renamed from: t */
    private float f2655t = Float.NaN;

    /* renamed from: u */
    private int f2656u = 0;

    /* renamed from: v */
    private float f2657v = Float.NaN;

    /* renamed from: w */
    private float f2658w = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: androidx.constraintlayout.motion.widget.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/j$a.class */
    static final class C0620a {

        /* renamed from: a */
        private static SparseIntArray f2659a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f2659a = sparseIntArray;
            sparseIntArray.append(C0687e.C0689b.KeyTimeCycle_android_alpha, 1);
            f2659a.append(C0687e.C0689b.KeyTimeCycle_android_elevation, 2);
            f2659a.append(C0687e.C0689b.KeyTimeCycle_android_rotation, 4);
            f2659a.append(C0687e.C0689b.KeyTimeCycle_android_rotationX, 5);
            f2659a.append(C0687e.C0689b.KeyTimeCycle_android_rotationY, 6);
            f2659a.append(C0687e.C0689b.KeyTimeCycle_android_scaleX, 7);
            f2659a.append(C0687e.C0689b.KeyTimeCycle_transitionPathRotate, 8);
            f2659a.append(C0687e.C0689b.KeyTimeCycle_transitionEasing, 9);
            f2659a.append(C0687e.C0689b.KeyTimeCycle_motionTarget, 10);
            f2659a.append(C0687e.C0689b.KeyTimeCycle_framePosition, 12);
            f2659a.append(C0687e.C0689b.KeyTimeCycle_curveFit, 13);
            f2659a.append(C0687e.C0689b.KeyTimeCycle_android_scaleY, 14);
            f2659a.append(C0687e.C0689b.KeyTimeCycle_android_translationX, 15);
            f2659a.append(C0687e.C0689b.KeyTimeCycle_android_translationY, 16);
            f2659a.append(C0687e.C0689b.KeyTimeCycle_android_translationZ, 17);
            f2659a.append(C0687e.C0689b.KeyTimeCycle_motionProgress, 18);
            f2659a.append(C0687e.C0689b.KeyTimeCycle_wavePeriod, 20);
            f2659a.append(C0687e.C0689b.KeyTimeCycle_waveOffset, 21);
            f2659a.append(C0687e.C0689b.KeyTimeCycle_waveShape, 19);
        }

        private C0620a() {
        }

        /* renamed from: a */
        public static void m44867a(C0619j c0619j, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f2659a.get(index)) {
                    case 1:
                        c0619j.f2644i = typedArray.getFloat(index, c0619j.f2644i);
                        break;
                    case 2:
                        c0619j.f2645j = typedArray.getDimension(index, c0619j.f2645j);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyTimeCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + f2659a.get(index));
                        break;
                    case 4:
                        c0619j.f2646k = typedArray.getFloat(index, c0619j.f2646k);
                        break;
                    case 5:
                        c0619j.f2647l = typedArray.getFloat(index, c0619j.f2647l);
                        break;
                    case 6:
                        c0619j.f2648m = typedArray.getFloat(index, c0619j.f2648m);
                        break;
                    case 7:
                        c0619j.f2650o = typedArray.getFloat(index, c0619j.f2650o);
                        break;
                    case 8:
                        c0619j.f2649n = typedArray.getFloat(index, c0619j.f2649n);
                        break;
                    case 9:
                        c0619j.f2642g = typedArray.getString(index);
                        break;
                    case 10:
                        if (MotionLayout.f2439a) {
                            c0619j.f2557c = typedArray.getResourceId(index, c0619j.f2557c);
                            if (c0619j.f2557c == -1) {
                                c0619j.f2558d = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            c0619j.f2558d = typedArray.getString(index);
                            break;
                        } else {
                            c0619j.f2557c = typedArray.getResourceId(index, c0619j.f2557c);
                            break;
                        }
                    case 12:
                        c0619j.f2556b = typedArray.getInt(index, c0619j.f2556b);
                        break;
                    case 13:
                        c0619j.f2643h = typedArray.getInteger(index, c0619j.f2643h);
                        break;
                    case 14:
                        c0619j.f2651p = typedArray.getFloat(index, c0619j.f2651p);
                        break;
                    case 15:
                        c0619j.f2652q = typedArray.getDimension(index, c0619j.f2652q);
                        break;
                    case 16:
                        c0619j.f2653r = typedArray.getDimension(index, c0619j.f2653r);
                        break;
                    case 17:
                        if (Build.VERSION.SDK_INT >= 21) {
                            c0619j.f2654s = typedArray.getDimension(index, c0619j.f2654s);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        c0619j.f2655t = typedArray.getFloat(index, c0619j.f2655t);
                        break;
                    case 19:
                        c0619j.f2656u = typedArray.getInt(index, c0619j.f2656u);
                        break;
                    case 20:
                        c0619j.f2657v = typedArray.getFloat(index, c0619j.f2657v);
                        break;
                    case 21:
                        if (typedArray.peekValue(index).type == 5) {
                            c0619j.f2658w = typedArray.getDimension(index, c0619j.f2658w);
                            break;
                        } else {
                            c0619j.f2658w = typedArray.getFloat(index, c0619j.f2658w);
                            break;
                        }
                }
            }
        }
    }

    public C0619j() {
        this.f2559e = 3;
        this.f2560f = new HashMap<>();
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0592b
    /* renamed from: a */
    public final void mo44866a(Context context, AttributeSet attributeSet) {
        C0620a.m44867a(this, context.obtainStyledAttributes(attributeSet, C0687e.C0689b.KeyTimeCycle));
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0592b
    /* renamed from: a */
    public final void mo44859a(HashMap<String, AbstractC0631q> hashMap) {
        throw new IllegalArgumentException(" KeyTimeCycles do not support SplineSet");
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0592b
    /* renamed from: a */
    public final void mo44858a(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f2644i)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f2645j)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f2646k)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f2647l)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f2648m)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f2652q)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f2653r)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f2654s)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.f2649n)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f2650o)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f2651p)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f2655t)) {
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
        if (this.f2643h == -1) {
            return;
        }
        if (!Float.isNaN(this.f2644i)) {
            hashMap.put("alpha", Integer.valueOf(this.f2643h));
        }
        if (!Float.isNaN(this.f2645j)) {
            hashMap.put("elevation", Integer.valueOf(this.f2643h));
        }
        if (!Float.isNaN(this.f2646k)) {
            hashMap.put("rotation", Integer.valueOf(this.f2643h));
        }
        if (!Float.isNaN(this.f2647l)) {
            hashMap.put("rotationX", Integer.valueOf(this.f2643h));
        }
        if (!Float.isNaN(this.f2648m)) {
            hashMap.put("rotationY", Integer.valueOf(this.f2643h));
        }
        if (!Float.isNaN(this.f2652q)) {
            hashMap.put("translationX", Integer.valueOf(this.f2643h));
        }
        if (!Float.isNaN(this.f2653r)) {
            hashMap.put("translationY", Integer.valueOf(this.f2643h));
        }
        if (!Float.isNaN(this.f2654s)) {
            hashMap.put("translationZ", Integer.valueOf(this.f2643h));
        }
        if (!Float.isNaN(this.f2649n)) {
            hashMap.put("transitionPathRotate", Integer.valueOf(this.f2643h));
        }
        if (!Float.isNaN(this.f2650o)) {
            hashMap.put("scaleX", Integer.valueOf(this.f2643h));
        }
        if (!Float.isNaN(this.f2650o)) {
            hashMap.put("scaleY", Integer.valueOf(this.f2643h));
        }
        if (!Float.isNaN(this.f2655t)) {
            hashMap.put(EventConstants.PROGRESS, Integer.valueOf(this.f2643h));
        }
        if (this.f2560f.size() <= 0) {
            return;
        }
        for (String str : this.f2560f.keySet()) {
            hashMap.put("CUSTOM,".concat(String.valueOf(str)), Integer.valueOf(this.f2643h));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0138, code lost:
        if (r0.equals("scaleY") == false) goto L12;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m44892c(java.util.HashMap<java.lang.String, androidx.constraintlayout.motion.widget.AbstractC0648r> r8) {
        /*
            Method dump skipped, instructions count: 1005
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.C0619j.m44892c(java.util.HashMap):void");
    }
}
