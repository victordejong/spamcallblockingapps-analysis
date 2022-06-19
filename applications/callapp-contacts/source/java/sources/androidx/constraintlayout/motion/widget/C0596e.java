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
/* renamed from: androidx.constraintlayout.motion.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/e.class */
public class C0596e extends AbstractC0592b {

    /* renamed from: g */
    private String f2580g = null;

    /* renamed from: h */
    private int f2581h = 0;

    /* renamed from: i */
    private int f2582i = -1;

    /* renamed from: j */
    private float f2583j = Float.NaN;

    /* renamed from: k */
    private float f2584k = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: l */
    private float f2585l = Float.NaN;

    /* renamed from: m */
    private int f2586m = -1;

    /* renamed from: n */
    private float f2587n = Float.NaN;

    /* renamed from: o */
    private float f2588o = Float.NaN;

    /* renamed from: p */
    private float f2589p = Float.NaN;

    /* renamed from: q */
    private float f2590q = Float.NaN;

    /* renamed from: r */
    private float f2591r = Float.NaN;

    /* renamed from: s */
    private float f2592s = Float.NaN;

    /* renamed from: t */
    private float f2593t = Float.NaN;

    /* renamed from: u */
    private float f2594u = Float.NaN;

    /* renamed from: v */
    private float f2595v = Float.NaN;

    /* renamed from: w */
    private float f2596w = Float.NaN;

    /* renamed from: x */
    private float f2597x = Float.NaN;

    /* renamed from: androidx.constraintlayout.motion.widget.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/e$a.class */
    static final class C0597a {

        /* renamed from: a */
        private static SparseIntArray f2598a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f2598a = sparseIntArray;
            sparseIntArray.append(C0687e.C0689b.KeyCycle_motionTarget, 1);
            f2598a.append(C0687e.C0689b.KeyCycle_framePosition, 2);
            f2598a.append(C0687e.C0689b.KeyCycle_transitionEasing, 3);
            f2598a.append(C0687e.C0689b.KeyCycle_curveFit, 4);
            f2598a.append(C0687e.C0689b.KeyCycle_waveShape, 5);
            f2598a.append(C0687e.C0689b.KeyCycle_wavePeriod, 6);
            f2598a.append(C0687e.C0689b.KeyCycle_waveOffset, 7);
            f2598a.append(C0687e.C0689b.KeyCycle_waveVariesBy, 8);
            f2598a.append(C0687e.C0689b.KeyCycle_android_alpha, 9);
            f2598a.append(C0687e.C0689b.KeyCycle_android_elevation, 10);
            f2598a.append(C0687e.C0689b.KeyCycle_android_rotation, 11);
            f2598a.append(C0687e.C0689b.KeyCycle_android_rotationX, 12);
            f2598a.append(C0687e.C0689b.KeyCycle_android_rotationY, 13);
            f2598a.append(C0687e.C0689b.KeyCycle_transitionPathRotate, 14);
            f2598a.append(C0687e.C0689b.KeyCycle_android_scaleX, 15);
            f2598a.append(C0687e.C0689b.KeyCycle_android_scaleY, 16);
            f2598a.append(C0687e.C0689b.KeyCycle_android_translationX, 17);
            f2598a.append(C0687e.C0689b.KeyCycle_android_translationY, 18);
            f2598a.append(C0687e.C0689b.KeyCycle_android_translationZ, 19);
            f2598a.append(C0687e.C0689b.KeyCycle_motionProgress, 20);
        }

        private C0597a() {
        }

        /* renamed from: a */
        static /* synthetic */ void m44911a(C0596e c0596e, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f2598a.get(index)) {
                    case 1:
                        if (MotionLayout.f2439a) {
                            c0596e.f2557c = typedArray.getResourceId(index, c0596e.f2557c);
                            if (c0596e.f2557c == -1) {
                                c0596e.f2558d = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            c0596e.f2558d = typedArray.getString(index);
                            break;
                        } else {
                            c0596e.f2557c = typedArray.getResourceId(index, c0596e.f2557c);
                            break;
                        }
                    case 2:
                        c0596e.f2556b = typedArray.getInt(index, c0596e.f2556b);
                        break;
                    case 3:
                        c0596e.f2580g = typedArray.getString(index);
                        break;
                    case 4:
                        c0596e.f2581h = typedArray.getInteger(index, c0596e.f2581h);
                        break;
                    case 5:
                        c0596e.f2582i = typedArray.getInt(index, c0596e.f2582i);
                        break;
                    case 6:
                        c0596e.f2583j = typedArray.getFloat(index, c0596e.f2583j);
                        break;
                    case 7:
                        if (typedArray.peekValue(index).type == 5) {
                            c0596e.f2584k = typedArray.getDimension(index, c0596e.f2584k);
                            break;
                        } else {
                            c0596e.f2584k = typedArray.getFloat(index, c0596e.f2584k);
                            break;
                        }
                    case 8:
                        c0596e.f2586m = typedArray.getInt(index, c0596e.f2586m);
                        break;
                    case 9:
                        c0596e.f2587n = typedArray.getFloat(index, c0596e.f2587n);
                        break;
                    case 10:
                        c0596e.f2588o = typedArray.getDimension(index, c0596e.f2588o);
                        break;
                    case 11:
                        c0596e.f2589p = typedArray.getFloat(index, c0596e.f2589p);
                        break;
                    case 12:
                        c0596e.f2591r = typedArray.getFloat(index, c0596e.f2591r);
                        break;
                    case 13:
                        c0596e.f2592s = typedArray.getFloat(index, c0596e.f2592s);
                        break;
                    case 14:
                        c0596e.f2590q = typedArray.getFloat(index, c0596e.f2590q);
                        break;
                    case 15:
                        c0596e.f2593t = typedArray.getFloat(index, c0596e.f2593t);
                        break;
                    case 16:
                        c0596e.f2594u = typedArray.getFloat(index, c0596e.f2594u);
                        break;
                    case 17:
                        c0596e.f2595v = typedArray.getDimension(index, c0596e.f2595v);
                        break;
                    case 18:
                        c0596e.f2596w = typedArray.getDimension(index, c0596e.f2596w);
                        break;
                    case 19:
                        if (Build.VERSION.SDK_INT >= 21) {
                            c0596e.f2597x = typedArray.getDimension(index, c0596e.f2597x);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        c0596e.f2585l = typedArray.getFloat(index, c0596e.f2585l);
                        break;
                    default:
                        Log.e("KeyCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + f2598a.get(index));
                        break;
                }
            }
        }
    }

    public C0596e() {
        this.f2559e = 4;
        this.f2560f = new HashMap<>();
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0592b
    /* renamed from: a */
    public final void mo44866a(Context context, AttributeSet attributeSet) {
        C0597a.m44911a(this, context.obtainStyledAttributes(attributeSet, C0687e.C0689b.KeyCycle));
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0592b
    /* renamed from: a */
    public final void mo44859a(HashMap<String, AbstractC0631q> hashMap) {
        C0591a.m44981a("add " + hashMap.size() + " values");
        for (String str : hashMap.keySet()) {
            AbstractC0631q abstractC0631q = hashMap.get(str);
            str.hashCode();
            boolean z = true;
            switch (str.hashCode()) {
                case -1249320806:
                    if (str.equals("rotationX")) {
                        z = false;
                        break;
                    }
                    break;
                case -1249320805:
                    if (str.equals("rotationY")) {
                        z = true;
                        break;
                    }
                    break;
                case -1225497657:
                    if (str.equals("translationX")) {
                        z = true;
                        break;
                    }
                    break;
                case -1225497656:
                    if (str.equals("translationY")) {
                        z = true;
                        break;
                    }
                    break;
                case -1225497655:
                    if (str.equals("translationZ")) {
                        z = true;
                        break;
                    }
                    break;
                case -1001078227:
                    if (str.equals(EventConstants.PROGRESS)) {
                        z = true;
                        break;
                    }
                    break;
                case -908189618:
                    if (str.equals("scaleX")) {
                        z = true;
                        break;
                    }
                    break;
                case -908189617:
                    if (str.equals("scaleY")) {
                        z = true;
                        break;
                    }
                    break;
                case -40300674:
                    if (str.equals("rotation")) {
                        z = true;
                        break;
                    }
                    break;
                case -4379043:
                    if (str.equals("elevation")) {
                        z = true;
                        break;
                    }
                    break;
                case 37232917:
                    if (str.equals("transitionPathRotate")) {
                        z = true;
                        break;
                    }
                    break;
                case 92909918:
                    if (str.equals("alpha")) {
                        z = true;
                        break;
                    }
                    break;
                case 156108012:
                    if (str.equals("waveOffset")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    abstractC0631q.mo44795a(this.f2556b, this.f2591r);
                    break;
                case true:
                    abstractC0631q.mo44795a(this.f2556b, this.f2592s);
                    break;
                case true:
                    abstractC0631q.mo44795a(this.f2556b, this.f2595v);
                    break;
                case true:
                    abstractC0631q.mo44795a(this.f2556b, this.f2596w);
                    break;
                case true:
                    abstractC0631q.mo44795a(this.f2556b, this.f2597x);
                    break;
                case true:
                    abstractC0631q.mo44795a(this.f2556b, this.f2585l);
                    break;
                case true:
                    abstractC0631q.mo44795a(this.f2556b, this.f2593t);
                    break;
                case true:
                    abstractC0631q.mo44795a(this.f2556b, this.f2594u);
                    break;
                case true:
                    abstractC0631q.mo44795a(this.f2556b, this.f2589p);
                    break;
                case true:
                    abstractC0631q.mo44795a(this.f2556b, this.f2588o);
                    break;
                case true:
                    abstractC0631q.mo44795a(this.f2556b, this.f2590q);
                    break;
                case true:
                    abstractC0631q.mo44795a(this.f2556b, this.f2587n);
                    break;
                case true:
                    abstractC0631q.mo44795a(this.f2556b, this.f2584k);
                    break;
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0592b
    /* renamed from: a */
    public final void mo44858a(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f2587n)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f2588o)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f2589p)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f2591r)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f2592s)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f2593t)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f2594u)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f2590q)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f2595v)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f2596w)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f2597x)) {
            hashSet.add("translationZ");
        }
        if (this.f2560f.size() > 0) {
            for (String str : this.f2560f.keySet()) {
                hashSet.add("CUSTOM,".concat(String.valueOf(str)));
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0163, code lost:
        if (r0.equals("scaleY") == false) goto L14;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m44937c(java.util.HashMap<java.lang.String, androidx.constraintlayout.motion.widget.AbstractC0598f> r10) {
        /*
            Method dump skipped, instructions count: 765
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.C0596e.m44937c(java.util.HashMap):void");
    }
}
