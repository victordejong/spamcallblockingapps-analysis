package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.C0523e;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.util.HashMap;
import java.util.HashSet;
/* renamed from: androidx.constraintlayout.motion.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f.class */
public class C0384f extends AbstractC0380c {

    /* renamed from: g */
    private String f1700g = null;

    /* renamed from: h */
    private int f1701h = 0;

    /* renamed from: i */
    private int f1702i = -1;

    /* renamed from: j */
    private float f1703j = Float.NaN;

    /* renamed from: k */
    private float f1704k = 0.0f;

    /* renamed from: l */
    private float f1705l = Float.NaN;

    /* renamed from: m */
    private int f1706m = -1;

    /* renamed from: n */
    private float f1707n = Float.NaN;

    /* renamed from: o */
    private float f1708o = Float.NaN;

    /* renamed from: p */
    private float f1709p = Float.NaN;

    /* renamed from: q */
    private float f1710q = Float.NaN;

    /* renamed from: r */
    private float f1711r = Float.NaN;

    /* renamed from: s */
    private float f1712s = Float.NaN;

    /* renamed from: t */
    private float f1713t = Float.NaN;

    /* renamed from: u */
    private float f1714u = Float.NaN;

    /* renamed from: v */
    private float f1715v = Float.NaN;

    /* renamed from: w */
    private float f1716w = Float.NaN;

    /* renamed from: x */
    private float f1717x = Float.NaN;

    /* renamed from: androidx.constraintlayout.motion.widget.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$a.class */
    private static class C0385a {

        /* renamed from: a */
        private static SparseIntArray f1718a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1718a = sparseIntArray;
            sparseIntArray.append(C0523e.KeyCycle_motionTarget, 1);
            f1718a.append(C0523e.KeyCycle_framePosition, 2);
            f1718a.append(C0523e.KeyCycle_transitionEasing, 3);
            f1718a.append(C0523e.KeyCycle_curveFit, 4);
            f1718a.append(C0523e.KeyCycle_waveShape, 5);
            f1718a.append(C0523e.KeyCycle_wavePeriod, 6);
            f1718a.append(C0523e.KeyCycle_waveOffset, 7);
            f1718a.append(C0523e.KeyCycle_waveVariesBy, 8);
            f1718a.append(C0523e.KeyCycle_android_alpha, 9);
            f1718a.append(C0523e.KeyCycle_android_elevation, 10);
            f1718a.append(C0523e.KeyCycle_android_rotation, 11);
            f1718a.append(C0523e.KeyCycle_android_rotationX, 12);
            f1718a.append(C0523e.KeyCycle_android_rotationY, 13);
            f1718a.append(C0523e.KeyCycle_transitionPathRotate, 14);
            f1718a.append(C0523e.KeyCycle_android_scaleX, 15);
            f1718a.append(C0523e.KeyCycle_android_scaleY, 16);
            f1718a.append(C0523e.KeyCycle_android_translationX, 17);
            f1718a.append(C0523e.KeyCycle_android_translationY, 18);
            f1718a.append(C0523e.KeyCycle_android_translationZ, 19);
            f1718a.append(C0523e.KeyCycle_motionProgress, 20);
        }

        /* renamed from: b */
        public static void m34415b(C0384f c0384f, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f1718a.get(index)) {
                    case 1:
                        if (MotionLayout.f1551A) {
                            int resourceId = typedArray.getResourceId(index, c0384f.f1677c);
                            c0384f.f1677c = resourceId;
                            if (resourceId == -1) {
                                c0384f.f1678d = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            c0384f.f1678d = typedArray.getString(index);
                            break;
                        } else {
                            c0384f.f1677c = typedArray.getResourceId(index, c0384f.f1677c);
                            break;
                        }
                    case 2:
                        c0384f.f1676b = typedArray.getInt(index, c0384f.f1676b);
                        break;
                    case 3:
                        c0384f.f1700g = typedArray.getString(index);
                        break;
                    case 4:
                        c0384f.f1701h = typedArray.getInteger(index, c0384f.f1701h);
                        break;
                    case 5:
                        c0384f.f1702i = typedArray.getInt(index, c0384f.f1702i);
                        break;
                    case 6:
                        c0384f.f1703j = typedArray.getFloat(index, c0384f.f1703j);
                        break;
                    case 7:
                        if (typedArray.peekValue(index).type == 5) {
                            c0384f.f1704k = typedArray.getDimension(index, c0384f.f1704k);
                            break;
                        } else {
                            c0384f.f1704k = typedArray.getFloat(index, c0384f.f1704k);
                            break;
                        }
                    case 8:
                        c0384f.f1706m = typedArray.getInt(index, c0384f.f1706m);
                        break;
                    case 9:
                        c0384f.f1707n = typedArray.getFloat(index, c0384f.f1707n);
                        break;
                    case 10:
                        c0384f.f1708o = typedArray.getDimension(index, c0384f.f1708o);
                        break;
                    case 11:
                        c0384f.f1709p = typedArray.getFloat(index, c0384f.f1709p);
                        break;
                    case 12:
                        c0384f.f1711r = typedArray.getFloat(index, c0384f.f1711r);
                        break;
                    case 13:
                        c0384f.f1712s = typedArray.getFloat(index, c0384f.f1712s);
                        break;
                    case 14:
                        c0384f.f1710q = typedArray.getFloat(index, c0384f.f1710q);
                        break;
                    case 15:
                        c0384f.f1713t = typedArray.getFloat(index, c0384f.f1713t);
                        break;
                    case 16:
                        c0384f.f1714u = typedArray.getFloat(index, c0384f.f1714u);
                        break;
                    case 17:
                        c0384f.f1715v = typedArray.getDimension(index, c0384f.f1715v);
                        break;
                    case 18:
                        c0384f.f1716w = typedArray.getDimension(index, c0384f.f1716w);
                        break;
                    case 19:
                        if (Build.VERSION.SDK_INT >= 21) {
                            c0384f.f1717x = typedArray.getDimension(index, c0384f.f1717x);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        c0384f.f1705l = typedArray.getFloat(index, c0384f.f1705l);
                        break;
                    default:
                        Log.e("KeyCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1718a.get(index));
                        break;
                }
            }
        }
    }

    public C0384f() {
        this.f1679e = 4;
        this.f1680f = new HashMap<>();
    }

    /* renamed from: O */
    public void m34439O(HashMap<String, AbstractC0386g> hashMap) {
        for (String str : hashMap.keySet()) {
            if (str.startsWith("CUSTOM")) {
                ConstraintAttribute constraintAttribute = this.f1680f.get(str.substring(7));
                if (constraintAttribute != null && constraintAttribute.m33716c() == ConstraintAttribute.AttributeType.FLOAT_TYPE) {
                    hashMap.get(str).m34410e(this.f1676b, this.f1702i, this.f1706m, this.f1703j, this.f1704k, constraintAttribute.m33715d(), constraintAttribute);
                }
            } else {
                float m34438P = m34438P(str);
                if (!Float.isNaN(m34438P)) {
                    hashMap.get(str).m34411d(this.f1676b, this.f1702i, this.f1706m, this.f1703j, this.f1704k, m34438P);
                }
            }
        }
    }

    /* renamed from: P */
    public float m34438P(String str) {
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
                if (str.equals("progress")) {
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
                return this.f1711r;
            case true:
                return this.f1712s;
            case true:
                return this.f1715v;
            case true:
                return this.f1716w;
            case true:
                return this.f1717x;
            case true:
                return this.f1705l;
            case true:
                return this.f1713t;
            case true:
                return this.f1714u;
            case true:
                return this.f1709p;
            case true:
                return this.f1708o;
            case true:
                return this.f1710q;
            case true:
                return this.f1707n;
            case true:
                return this.f1704k;
            default:
                Log.v("KeyCycle", "WARNING! KeyCycle UNKNOWN  " + str);
                return Float.NaN;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0380c
    /* renamed from: a */
    public void mo34359a(HashMap<String, AbstractC0419r> hashMap) {
        C0378a.m34489e("KeyCycle", "add " + hashMap.size() + " values", 2);
        for (String str : hashMap.keySet()) {
            AbstractC0419r abstractC0419r = hashMap.get(str);
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
                    if (str.equals("progress")) {
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
                    abstractC0419r.mo34211e(this.f1676b, this.f1711r);
                    break;
                case true:
                    abstractC0419r.mo34211e(this.f1676b, this.f1712s);
                    break;
                case true:
                    abstractC0419r.mo34211e(this.f1676b, this.f1715v);
                    break;
                case true:
                    abstractC0419r.mo34211e(this.f1676b, this.f1716w);
                    break;
                case true:
                    abstractC0419r.mo34211e(this.f1676b, this.f1717x);
                    break;
                case true:
                    abstractC0419r.mo34211e(this.f1676b, this.f1705l);
                    break;
                case true:
                    abstractC0419r.mo34211e(this.f1676b, this.f1713t);
                    break;
                case true:
                    abstractC0419r.mo34211e(this.f1676b, this.f1714u);
                    break;
                case true:
                    abstractC0419r.mo34211e(this.f1676b, this.f1709p);
                    break;
                case true:
                    abstractC0419r.mo34211e(this.f1676b, this.f1708o);
                    break;
                case true:
                    abstractC0419r.mo34211e(this.f1676b, this.f1710q);
                    break;
                case true:
                    abstractC0419r.mo34211e(this.f1676b, this.f1707n);
                    break;
                case true:
                    abstractC0419r.mo34211e(this.f1676b, this.f1704k);
                    break;
                default:
                    Log.v("KeyCycle", "WARNING KeyCycle UNKNOWN  " + str);
                    break;
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0380c
    /* renamed from: b */
    public void mo34358b(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f1707n)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f1708o)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f1709p)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f1711r)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f1712s)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f1713t)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f1714u)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f1710q)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f1715v)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f1716w)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f1717x)) {
            hashSet.add("translationZ");
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
        C0385a.m34415b(this, context.obtainStyledAttributes(attributeSet, C0523e.KeyCycle));
    }
}
