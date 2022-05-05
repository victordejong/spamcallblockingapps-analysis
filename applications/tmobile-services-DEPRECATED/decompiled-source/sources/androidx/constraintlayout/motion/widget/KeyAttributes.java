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
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyAttributes.class */
public class KeyAttributes extends Key {

    /* renamed from: f */
    private String f1672f;

    /* renamed from: g */
    private int f1673g = -1;

    /* renamed from: h */
    private float f1674h = Float.NaN;

    /* renamed from: i */
    private float f1675i = Float.NaN;

    /* renamed from: j */
    private float f1676j = Float.NaN;

    /* renamed from: k */
    private float f1677k = Float.NaN;

    /* renamed from: l */
    private float f1678l = Float.NaN;

    /* renamed from: m */
    private float f1679m = Float.NaN;

    /* renamed from: n */
    private float f1680n = Float.NaN;

    /* renamed from: o */
    private float f1681o = Float.NaN;

    /* renamed from: p */
    private float f1682p = Float.NaN;

    /* renamed from: q */
    private float f1683q = Float.NaN;

    /* renamed from: r */
    private float f1684r = Float.NaN;

    /* renamed from: s */
    private float f1685s = Float.NaN;

    /* renamed from: t */
    private float f1686t = Float.NaN;

    /* renamed from: u */
    private float f1687u = Float.NaN;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyAttributes$Loader.class */
    private static class Loader {

        /* renamed from: a */
        private static SparseIntArray f1688a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1688a = sparseIntArray;
            sparseIntArray.append(C0178R.styleable.KeyAttribute_android_alpha, 1);
            f1688a.append(C0178R.styleable.KeyAttribute_android_elevation, 2);
            f1688a.append(C0178R.styleable.KeyAttribute_android_rotation, 4);
            f1688a.append(C0178R.styleable.KeyAttribute_android_rotationX, 5);
            f1688a.append(C0178R.styleable.KeyAttribute_android_rotationY, 6);
            f1688a.append(C0178R.styleable.KeyAttribute_android_transformPivotX, 19);
            f1688a.append(C0178R.styleable.KeyAttribute_android_transformPivotY, 20);
            f1688a.append(C0178R.styleable.KeyAttribute_android_scaleX, 7);
            f1688a.append(C0178R.styleable.KeyAttribute_transitionPathRotate, 8);
            f1688a.append(C0178R.styleable.KeyAttribute_transitionEasing, 9);
            f1688a.append(C0178R.styleable.KeyAttribute_motionTarget, 10);
            f1688a.append(C0178R.styleable.KeyAttribute_framePosition, 12);
            f1688a.append(C0178R.styleable.KeyAttribute_curveFit, 13);
            f1688a.append(C0178R.styleable.KeyAttribute_android_scaleY, 14);
            f1688a.append(C0178R.styleable.KeyAttribute_android_translationX, 15);
            f1688a.append(C0178R.styleable.KeyAttribute_android_translationY, 16);
            f1688a.append(C0178R.styleable.KeyAttribute_android_translationZ, 17);
            f1688a.append(C0178R.styleable.KeyAttribute_motionProgress, 18);
        }

        private Loader() {
        }

        /* renamed from: a */
        public static void m20906a(KeyAttributes keyAttributes, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f1688a.get(index)) {
                    case 1:
                        keyAttributes.f1674h = typedArray.getFloat(index, keyAttributes.f1674h);
                        break;
                    case 2:
                        keyAttributes.f1675i = typedArray.getDimension(index, keyAttributes.f1675i);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyAttribute", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1688a.get(index));
                        break;
                    case 4:
                        keyAttributes.f1676j = typedArray.getFloat(index, keyAttributes.f1676j);
                        break;
                    case 5:
                        keyAttributes.f1677k = typedArray.getFloat(index, keyAttributes.f1677k);
                        break;
                    case 6:
                        keyAttributes.f1678l = typedArray.getFloat(index, keyAttributes.f1678l);
                        break;
                    case 7:
                        keyAttributes.f1682p = typedArray.getFloat(index, keyAttributes.f1682p);
                        break;
                    case 8:
                        keyAttributes.f1681o = typedArray.getFloat(index, keyAttributes.f1681o);
                        break;
                    case 9:
                        keyAttributes.f1672f = typedArray.getString(index);
                        break;
                    case 10:
                        if (!MotionLayout.f1830J0) {
                            if (typedArray.peekValue(index).type == 3) {
                                keyAttributes.f1670c = typedArray.getString(index);
                                break;
                            } else {
                                keyAttributes.f1669b = typedArray.getResourceId(index, keyAttributes.f1669b);
                                break;
                            }
                        } else {
                            int resourceId = typedArray.getResourceId(index, keyAttributes.f1669b);
                            keyAttributes.f1669b = resourceId;
                            if (resourceId == -1) {
                                keyAttributes.f1670c = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        }
                    case 12:
                        keyAttributes.f1668a = typedArray.getInt(index, keyAttributes.f1668a);
                        break;
                    case 13:
                        keyAttributes.f1673g = typedArray.getInteger(index, keyAttributes.f1673g);
                        break;
                    case 14:
                        keyAttributes.f1683q = typedArray.getFloat(index, keyAttributes.f1683q);
                        break;
                    case 15:
                        keyAttributes.f1684r = typedArray.getDimension(index, keyAttributes.f1684r);
                        break;
                    case 16:
                        keyAttributes.f1685s = typedArray.getDimension(index, keyAttributes.f1685s);
                        break;
                    case 17:
                        if (Build.VERSION.SDK_INT >= 21) {
                            keyAttributes.f1686t = typedArray.getDimension(index, keyAttributes.f1686t);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        keyAttributes.f1687u = typedArray.getFloat(index, keyAttributes.f1687u);
                        break;
                    case 19:
                        keyAttributes.f1679m = typedArray.getDimension(index, keyAttributes.f1679m);
                        break;
                    case 20:
                        keyAttributes.f1680n = typedArray.getDimension(index, keyAttributes.f1680n);
                        break;
                }
            }
        }
    }

    public KeyAttributes() {
        this.f1671d = new HashMap<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00f4, code lost:
        if (r0.equals("transitionPathRotate") != false) goto L_0x01b8;
     */
    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo20809a(java.util.HashMap<java.lang.String, androidx.constraintlayout.motion.widget.SplineSet> r5) {
        /*
            Method dump skipped, instructions count: 923
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyAttributes.mo20809a(java.util.HashMap):void");
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: b */
    public void mo20808b(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f1674h)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f1675i)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f1676j)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f1677k)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f1678l)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f1679m)) {
            hashSet.add("transformPivotX");
        }
        if (!Float.isNaN(this.f1680n)) {
            hashSet.add("transformPivotY");
        }
        if (!Float.isNaN(this.f1684r)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f1685s)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f1686t)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.f1681o)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f1682p)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f1683q)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f1687u)) {
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
        Loader.m20906a(this, context.obtainStyledAttributes(attributeSet, C0178R.styleable.KeyAttribute));
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: e */
    public void mo20832e(HashMap<String, Integer> hashMap) {
        if (this.f1673g != -1) {
            if (!Float.isNaN(this.f1674h)) {
                hashMap.put("alpha", Integer.valueOf(this.f1673g));
            }
            if (!Float.isNaN(this.f1675i)) {
                hashMap.put("elevation", Integer.valueOf(this.f1673g));
            }
            if (!Float.isNaN(this.f1676j)) {
                hashMap.put("rotation", Integer.valueOf(this.f1673g));
            }
            if (!Float.isNaN(this.f1677k)) {
                hashMap.put("rotationX", Integer.valueOf(this.f1673g));
            }
            if (!Float.isNaN(this.f1678l)) {
                hashMap.put("rotationY", Integer.valueOf(this.f1673g));
            }
            if (!Float.isNaN(this.f1679m)) {
                hashMap.put("transformPivotX", Integer.valueOf(this.f1673g));
            }
            if (!Float.isNaN(this.f1680n)) {
                hashMap.put("transformPivotY", Integer.valueOf(this.f1673g));
            }
            if (!Float.isNaN(this.f1684r)) {
                hashMap.put("translationX", Integer.valueOf(this.f1673g));
            }
            if (!Float.isNaN(this.f1685s)) {
                hashMap.put("translationY", Integer.valueOf(this.f1673g));
            }
            if (!Float.isNaN(this.f1686t)) {
                hashMap.put("translationZ", Integer.valueOf(this.f1673g));
            }
            if (!Float.isNaN(this.f1681o)) {
                hashMap.put("transitionPathRotate", Integer.valueOf(this.f1673g));
            }
            if (!Float.isNaN(this.f1682p)) {
                hashMap.put("scaleX", Integer.valueOf(this.f1673g));
            }
            if (!Float.isNaN(this.f1683q)) {
                hashMap.put("scaleY", Integer.valueOf(this.f1673g));
            }
            if (!Float.isNaN(this.f1687u)) {
                hashMap.put("progress", Integer.valueOf(this.f1673g));
            }
            if (this.f1671d.size() > 0) {
                for (String str : this.f1671d.keySet()) {
                    hashMap.put("CUSTOM," + str, Integer.valueOf(this.f1673g));
                }
            }
        }
    }
}
