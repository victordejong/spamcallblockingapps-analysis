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
/* renamed from: androidx.constraintlayout.motion.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/d.class */
public class C0381d extends AbstractC0380c {

    /* renamed from: g */
    private String f1681g;

    /* renamed from: h */
    private int f1682h = -1;

    /* renamed from: i */
    private boolean f1683i = false;

    /* renamed from: j */
    private float f1684j = Float.NaN;

    /* renamed from: k */
    private float f1685k = Float.NaN;

    /* renamed from: l */
    private float f1686l = Float.NaN;

    /* renamed from: m */
    private float f1687m = Float.NaN;

    /* renamed from: n */
    private float f1688n = Float.NaN;

    /* renamed from: o */
    private float f1689o = Float.NaN;

    /* renamed from: p */
    private float f1690p = Float.NaN;

    /* renamed from: q */
    private float f1691q = Float.NaN;

    /* renamed from: r */
    private float f1692r = Float.NaN;

    /* renamed from: s */
    private float f1693s = Float.NaN;

    /* renamed from: t */
    private float f1694t = Float.NaN;

    /* renamed from: u */
    private float f1695u = Float.NaN;

    /* renamed from: v */
    private float f1696v = Float.NaN;

    /* renamed from: w */
    private float f1697w = Float.NaN;

    /* renamed from: androidx.constraintlayout.motion.widget.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/d$a.class */
    private static class C0382a {

        /* renamed from: a */
        private static SparseIntArray f1698a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1698a = sparseIntArray;
            sparseIntArray.append(C0523e.KeyAttribute_android_alpha, 1);
            f1698a.append(C0523e.KeyAttribute_android_elevation, 2);
            f1698a.append(C0523e.KeyAttribute_android_rotation, 4);
            f1698a.append(C0523e.KeyAttribute_android_rotationX, 5);
            f1698a.append(C0523e.KeyAttribute_android_rotationY, 6);
            f1698a.append(C0523e.KeyAttribute_android_transformPivotX, 19);
            f1698a.append(C0523e.KeyAttribute_android_transformPivotY, 20);
            f1698a.append(C0523e.KeyAttribute_android_scaleX, 7);
            f1698a.append(C0523e.KeyAttribute_transitionPathRotate, 8);
            f1698a.append(C0523e.KeyAttribute_transitionEasing, 9);
            f1698a.append(C0523e.KeyAttribute_motionTarget, 10);
            f1698a.append(C0523e.KeyAttribute_framePosition, 12);
            f1698a.append(C0523e.KeyAttribute_curveFit, 13);
            f1698a.append(C0523e.KeyAttribute_android_scaleY, 14);
            f1698a.append(C0523e.KeyAttribute_android_translationX, 15);
            f1698a.append(C0523e.KeyAttribute_android_translationY, 16);
            f1698a.append(C0523e.KeyAttribute_android_translationZ, 17);
            f1698a.append(C0523e.KeyAttribute_motionProgress, 18);
        }

        /* renamed from: a */
        public static void m34456a(C0381d c0381d, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f1698a.get(index)) {
                    case 1:
                        c0381d.f1684j = typedArray.getFloat(index, c0381d.f1684j);
                        break;
                    case 2:
                        c0381d.f1685k = typedArray.getDimension(index, c0381d.f1685k);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyAttribute", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1698a.get(index));
                        break;
                    case 4:
                        c0381d.f1686l = typedArray.getFloat(index, c0381d.f1686l);
                        break;
                    case 5:
                        c0381d.f1687m = typedArray.getFloat(index, c0381d.f1687m);
                        break;
                    case 6:
                        c0381d.f1688n = typedArray.getFloat(index, c0381d.f1688n);
                        break;
                    case 7:
                        c0381d.f1692r = typedArray.getFloat(index, c0381d.f1692r);
                        break;
                    case 8:
                        c0381d.f1691q = typedArray.getFloat(index, c0381d.f1691q);
                        break;
                    case 9:
                        c0381d.f1681g = typedArray.getString(index);
                        break;
                    case 10:
                        if (MotionLayout.f1551A) {
                            int resourceId = typedArray.getResourceId(index, c0381d.f1677c);
                            c0381d.f1677c = resourceId;
                            if (resourceId == -1) {
                                c0381d.f1678d = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            c0381d.f1678d = typedArray.getString(index);
                            break;
                        } else {
                            c0381d.f1677c = typedArray.getResourceId(index, c0381d.f1677c);
                            break;
                        }
                    case 12:
                        c0381d.f1676b = typedArray.getInt(index, c0381d.f1676b);
                        break;
                    case 13:
                        c0381d.f1682h = typedArray.getInteger(index, c0381d.f1682h);
                        break;
                    case 14:
                        c0381d.f1693s = typedArray.getFloat(index, c0381d.f1693s);
                        break;
                    case 15:
                        c0381d.f1694t = typedArray.getDimension(index, c0381d.f1694t);
                        break;
                    case 16:
                        c0381d.f1695u = typedArray.getDimension(index, c0381d.f1695u);
                        break;
                    case 17:
                        if (Build.VERSION.SDK_INT >= 21) {
                            c0381d.f1696v = typedArray.getDimension(index, c0381d.f1696v);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        c0381d.f1697w = typedArray.getFloat(index, c0381d.f1697w);
                        break;
                    case 19:
                        c0381d.f1689o = typedArray.getDimension(index, c0381d.f1689o);
                        break;
                    case 20:
                        c0381d.f1690p = typedArray.getDimension(index, c0381d.f1690p);
                        break;
                }
            }
        }
    }

    public C0381d() {
        this.f1679e = 1;
        this.f1680f = new HashMap<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x015a, code lost:
        if (r0.equals("scaleY") == false) goto L12;
     */
    @Override // androidx.constraintlayout.motion.widget.AbstractC0380c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo34359a(java.util.HashMap<java.lang.String, androidx.constraintlayout.motion.widget.AbstractC0419r> r5) {
        /*
            Method dump skipped, instructions count: 959
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.C0381d.mo34359a(java.util.HashMap):void");
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0380c
    /* renamed from: b */
    public void mo34358b(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f1684j)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f1685k)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f1686l)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f1687m)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f1688n)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f1689o)) {
            hashSet.add("transformPivotX");
        }
        if (!Float.isNaN(this.f1690p)) {
            hashSet.add("transformPivotY");
        }
        if (!Float.isNaN(this.f1694t)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f1695u)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f1696v)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.f1691q)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f1692r)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f1693s)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f1697w)) {
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
        C0382a.m34456a(this, context.obtainStyledAttributes(attributeSet, C0523e.KeyAttribute));
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0380c
    /* renamed from: e */
    public void mo34382e(HashMap<String, Integer> hashMap) {
        if (this.f1682h == -1) {
            return;
        }
        if (!Float.isNaN(this.f1684j)) {
            hashMap.put("alpha", Integer.valueOf(this.f1682h));
        }
        if (!Float.isNaN(this.f1685k)) {
            hashMap.put("elevation", Integer.valueOf(this.f1682h));
        }
        if (!Float.isNaN(this.f1686l)) {
            hashMap.put("rotation", Integer.valueOf(this.f1682h));
        }
        if (!Float.isNaN(this.f1687m)) {
            hashMap.put("rotationX", Integer.valueOf(this.f1682h));
        }
        if (!Float.isNaN(this.f1688n)) {
            hashMap.put("rotationY", Integer.valueOf(this.f1682h));
        }
        if (!Float.isNaN(this.f1689o)) {
            hashMap.put("transformPivotX", Integer.valueOf(this.f1682h));
        }
        if (!Float.isNaN(this.f1690p)) {
            hashMap.put("transformPivotY", Integer.valueOf(this.f1682h));
        }
        if (!Float.isNaN(this.f1694t)) {
            hashMap.put("translationX", Integer.valueOf(this.f1682h));
        }
        if (!Float.isNaN(this.f1695u)) {
            hashMap.put("translationY", Integer.valueOf(this.f1682h));
        }
        if (!Float.isNaN(this.f1696v)) {
            hashMap.put("translationZ", Integer.valueOf(this.f1682h));
        }
        if (!Float.isNaN(this.f1691q)) {
            hashMap.put("transitionPathRotate", Integer.valueOf(this.f1682h));
        }
        if (!Float.isNaN(this.f1692r)) {
            hashMap.put("scaleX", Integer.valueOf(this.f1682h));
        }
        if (!Float.isNaN(this.f1693s)) {
            hashMap.put("scaleY", Integer.valueOf(this.f1682h));
        }
        if (!Float.isNaN(this.f1697w)) {
            hashMap.put("progress", Integer.valueOf(this.f1682h));
        }
        if (this.f1680f.size() <= 0) {
            return;
        }
        for (String str : this.f1680f.keySet()) {
            hashMap.put("CUSTOM," + str, Integer.valueOf(this.f1682h));
        }
    }
}
