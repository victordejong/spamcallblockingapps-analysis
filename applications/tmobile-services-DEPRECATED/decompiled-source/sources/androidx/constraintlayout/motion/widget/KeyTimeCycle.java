package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.C0178R;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyTimeCycle.class */
public class KeyTimeCycle extends Key {

    /* renamed from: f */
    private String f1743f;

    /* renamed from: g */
    private int f1744g = -1;

    /* renamed from: h */
    private float f1745h = Float.NaN;

    /* renamed from: i */
    private float f1746i = Float.NaN;

    /* renamed from: j */
    private float f1747j = Float.NaN;

    /* renamed from: k */
    private float f1748k = Float.NaN;

    /* renamed from: l */
    private float f1749l = Float.NaN;

    /* renamed from: m */
    private float f1750m = Float.NaN;

    /* renamed from: n */
    private float f1751n = Float.NaN;

    /* renamed from: o */
    private float f1752o = Float.NaN;

    /* renamed from: p */
    private float f1753p = Float.NaN;

    /* renamed from: q */
    private float f1754q = Float.NaN;

    /* renamed from: r */
    private float f1755r = Float.NaN;

    /* renamed from: s */
    private float f1756s = Float.NaN;

    /* renamed from: t */
    private int f1757t = 0;

    /* renamed from: u */
    private float f1758u = Float.NaN;

    /* renamed from: v */
    private float f1759v = 0.0f;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyTimeCycle$Loader.class */
    private static class Loader {

        /* renamed from: a */
        private static SparseIntArray f1760a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1760a = sparseIntArray;
            sparseIntArray.append(C0178R.styleable.KeyTimeCycle_android_alpha, 1);
            f1760a.append(C0178R.styleable.KeyTimeCycle_android_elevation, 2);
            f1760a.append(C0178R.styleable.KeyTimeCycle_android_rotation, 4);
            f1760a.append(C0178R.styleable.KeyTimeCycle_android_rotationX, 5);
            f1760a.append(C0178R.styleable.KeyTimeCycle_android_rotationY, 6);
            f1760a.append(C0178R.styleable.KeyTimeCycle_android_scaleX, 7);
            f1760a.append(C0178R.styleable.KeyTimeCycle_transitionPathRotate, 8);
            f1760a.append(C0178R.styleable.KeyTimeCycle_transitionEasing, 9);
            f1760a.append(C0178R.styleable.KeyTimeCycle_motionTarget, 10);
            f1760a.append(C0178R.styleable.KeyTimeCycle_framePosition, 12);
            f1760a.append(C0178R.styleable.KeyTimeCycle_curveFit, 13);
            f1760a.append(C0178R.styleable.KeyTimeCycle_android_scaleY, 14);
            f1760a.append(C0178R.styleable.KeyTimeCycle_android_translationX, 15);
            f1760a.append(C0178R.styleable.KeyTimeCycle_android_translationY, 16);
            f1760a.append(C0178R.styleable.KeyTimeCycle_android_translationZ, 17);
            f1760a.append(C0178R.styleable.KeyTimeCycle_motionProgress, 18);
            f1760a.append(C0178R.styleable.KeyTimeCycle_wavePeriod, 20);
            f1760a.append(C0178R.styleable.KeyTimeCycle_waveOffset, 21);
            f1760a.append(C0178R.styleable.KeyTimeCycle_waveShape, 19);
        }

        private Loader() {
        }

        /* renamed from: a */
        public static void m20810a(KeyTimeCycle keyTimeCycle, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f1760a.get(index)) {
                    case 1:
                        keyTimeCycle.f1745h = typedArray.getFloat(index, keyTimeCycle.f1745h);
                        break;
                    case 2:
                        keyTimeCycle.f1746i = typedArray.getDimension(index, keyTimeCycle.f1746i);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyTimeCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1760a.get(index));
                        break;
                    case 4:
                        keyTimeCycle.f1747j = typedArray.getFloat(index, keyTimeCycle.f1747j);
                        break;
                    case 5:
                        keyTimeCycle.f1748k = typedArray.getFloat(index, keyTimeCycle.f1748k);
                        break;
                    case 6:
                        keyTimeCycle.f1749l = typedArray.getFloat(index, keyTimeCycle.f1749l);
                        break;
                    case 7:
                        keyTimeCycle.f1751n = typedArray.getFloat(index, keyTimeCycle.f1751n);
                        break;
                    case 8:
                        keyTimeCycle.f1750m = typedArray.getFloat(index, keyTimeCycle.f1750m);
                        break;
                    case 9:
                        keyTimeCycle.f1743f = typedArray.getString(index);
                        break;
                    case 10:
                        if (!MotionLayout.f1830J0) {
                            if (typedArray.peekValue(index).type == 3) {
                                keyTimeCycle.f1670c = typedArray.getString(index);
                                break;
                            } else {
                                keyTimeCycle.f1669b = typedArray.getResourceId(index, keyTimeCycle.f1669b);
                                break;
                            }
                        } else {
                            int resourceId = typedArray.getResourceId(index, keyTimeCycle.f1669b);
                            keyTimeCycle.f1669b = resourceId;
                            if (resourceId == -1) {
                                keyTimeCycle.f1670c = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        }
                    case 12:
                        keyTimeCycle.f1668a = typedArray.getInt(index, keyTimeCycle.f1668a);
                        break;
                    case 13:
                        keyTimeCycle.f1744g = typedArray.getInteger(index, keyTimeCycle.f1744g);
                        break;
                    case 14:
                        keyTimeCycle.f1752o = typedArray.getFloat(index, keyTimeCycle.f1752o);
                        break;
                    case 15:
                        keyTimeCycle.f1753p = typedArray.getDimension(index, keyTimeCycle.f1753p);
                        break;
                    case 16:
                        keyTimeCycle.f1754q = typedArray.getDimension(index, keyTimeCycle.f1754q);
                        break;
                    case 17:
                        if (Build.VERSION.SDK_INT >= 21) {
                            keyTimeCycle.f1755r = typedArray.getDimension(index, keyTimeCycle.f1755r);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        keyTimeCycle.f1756s = typedArray.getFloat(index, keyTimeCycle.f1756s);
                        break;
                    case 19:
                        keyTimeCycle.f1757t = typedArray.getInt(index, keyTimeCycle.f1757t);
                        break;
                    case 20:
                        keyTimeCycle.f1758u = typedArray.getFloat(index, keyTimeCycle.f1758u);
                        break;
                    case 21:
                        if (typedArray.peekValue(index).type == 5) {
                            keyTimeCycle.f1759v = typedArray.getDimension(index, keyTimeCycle.f1759v);
                            break;
                        } else {
                            keyTimeCycle.f1759v = typedArray.getFloat(index, keyTimeCycle.f1759v);
                            break;
                        }
                }
            }
        }
    }

    public KeyTimeCycle() {
        this.f1671d = new HashMap<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x011d, code lost:
        if (r0.equals("scaleY") != false) goto L_0x0194;
     */
    /* renamed from: M */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m20833M(java.util.HashMap<java.lang.String, androidx.constraintlayout.motion.widget.TimeCycleSplineSet> r8) {
        /*
            Method dump skipped, instructions count: 971
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyTimeCycle.m20833M(java.util.HashMap):void");
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: a */
    public void mo20809a(HashMap<String, SplineSet> hashMap) {
        throw new IllegalArgumentException(" KeyTimeCycles do not support SplineSet");
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: b */
    public void mo20808b(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f1745h)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f1746i)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f1747j)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f1748k)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f1749l)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f1753p)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f1754q)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f1755r)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.f1750m)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f1751n)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f1752o)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f1756s)) {
            hashSet.add("progress");
        }
        if (this.f1671d.size() > 0) {
            for (String str : this.f1671d.keySet()) {
                hashSet.add("CUSTOM," + str);
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: c */
    public void mo20807c(Context context, AttributeSet attributeSet) {
        Loader.m20810a(this, context.obtainStyledAttributes(attributeSet, C0178R.styleable.KeyTimeCycle));
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: e */
    public void mo20832e(HashMap<String, Integer> hashMap) {
        if (this.f1744g != -1) {
            if (!Float.isNaN(this.f1745h)) {
                hashMap.put("alpha", Integer.valueOf(this.f1744g));
            }
            if (!Float.isNaN(this.f1746i)) {
                hashMap.put("elevation", Integer.valueOf(this.f1744g));
            }
            if (!Float.isNaN(this.f1747j)) {
                hashMap.put("rotation", Integer.valueOf(this.f1744g));
            }
            if (!Float.isNaN(this.f1748k)) {
                hashMap.put("rotationX", Integer.valueOf(this.f1744g));
            }
            if (!Float.isNaN(this.f1749l)) {
                hashMap.put("rotationY", Integer.valueOf(this.f1744g));
            }
            if (!Float.isNaN(this.f1753p)) {
                hashMap.put("translationX", Integer.valueOf(this.f1744g));
            }
            if (!Float.isNaN(this.f1754q)) {
                hashMap.put("translationY", Integer.valueOf(this.f1744g));
            }
            if (!Float.isNaN(this.f1755r)) {
                hashMap.put("translationZ", Integer.valueOf(this.f1744g));
            }
            if (!Float.isNaN(this.f1750m)) {
                hashMap.put("transitionPathRotate", Integer.valueOf(this.f1744g));
            }
            if (!Float.isNaN(this.f1751n)) {
                hashMap.put("scaleX", Integer.valueOf(this.f1744g));
            }
            if (!Float.isNaN(this.f1751n)) {
                hashMap.put("scaleY", Integer.valueOf(this.f1744g));
            }
            if (!Float.isNaN(this.f1756s)) {
                hashMap.put("progress", Integer.valueOf(this.f1744g));
            }
            if (this.f1671d.size() > 0) {
                for (String str : this.f1671d.keySet()) {
                    hashMap.put("CUSTOM," + str, Integer.valueOf(this.f1744g));
                }
            }
        }
    }
}
