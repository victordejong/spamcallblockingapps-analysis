package p1727n3.p1795i.p1796a.p1798b;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.C0114R;
import java.util.HashMap;
import java.util.HashSet;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.i.a.b.j */
/* loaded from: classes-dex2jar.jar:n3/i/a/b/j.class */
public class C26305j extends AbstractC26280b {

    /* renamed from: e */
    public int f73373e = -1;

    /* renamed from: f */
    public float f73374f = Float.NaN;

    /* renamed from: g */
    public float f73375g = Float.NaN;

    /* renamed from: h */
    public float f73376h = Float.NaN;

    /* renamed from: i */
    public float f73377i = Float.NaN;

    /* renamed from: j */
    public float f73378j = Float.NaN;

    /* renamed from: k */
    public float f73379k = Float.NaN;

    /* renamed from: l */
    public float f73380l = Float.NaN;

    /* renamed from: m */
    public float f73381m = Float.NaN;

    /* renamed from: n */
    public float f73382n = Float.NaN;

    /* renamed from: o */
    public float f73383o = Float.NaN;

    /* renamed from: p */
    public float f73384p = Float.NaN;

    /* renamed from: q */
    public float f73385q = Float.NaN;

    /* renamed from: r */
    public int f73386r = 0;

    /* renamed from: s */
    public float f73387s = Float.NaN;

    /* renamed from: t */
    public float f73388t = 0.0f;

    /* renamed from: n3.i.a.b.j$a */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/j$a.class */
    public static class C26306a {

        /* renamed from: a */
        public static SparseIntArray f73389a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f73389a = sparseIntArray;
            sparseIntArray.append(C0114R.styleable.KeyTimeCycle_android_alpha, 1);
            f73389a.append(C0114R.styleable.KeyTimeCycle_android_elevation, 2);
            f73389a.append(C0114R.styleable.KeyTimeCycle_android_rotation, 4);
            f73389a.append(C0114R.styleable.KeyTimeCycle_android_rotationX, 5);
            f73389a.append(C0114R.styleable.KeyTimeCycle_android_rotationY, 6);
            f73389a.append(C0114R.styleable.KeyTimeCycle_android_scaleX, 7);
            f73389a.append(C0114R.styleable.KeyTimeCycle_transitionPathRotate, 8);
            f73389a.append(C0114R.styleable.KeyTimeCycle_transitionEasing, 9);
            f73389a.append(C0114R.styleable.KeyTimeCycle_motionTarget, 10);
            f73389a.append(C0114R.styleable.KeyTimeCycle_framePosition, 12);
            f73389a.append(C0114R.styleable.KeyTimeCycle_curveFit, 13);
            f73389a.append(C0114R.styleable.KeyTimeCycle_android_scaleY, 14);
            f73389a.append(C0114R.styleable.KeyTimeCycle_android_translationX, 15);
            f73389a.append(C0114R.styleable.KeyTimeCycle_android_translationY, 16);
            f73389a.append(C0114R.styleable.KeyTimeCycle_android_translationZ, 17);
            f73389a.append(C0114R.styleable.KeyTimeCycle_motionProgress, 18);
            f73389a.append(C0114R.styleable.KeyTimeCycle_wavePeriod, 20);
            f73389a.append(C0114R.styleable.KeyTimeCycle_waveOffset, 21);
            f73389a.append(C0114R.styleable.KeyTimeCycle_waveShape, 19);
        }
    }

    public C26305j() {
        this.f73314d = new HashMap<>();
    }

    @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26280b
    /* renamed from: a */
    public void mo2210a(HashMap<String, AbstractC26318r> hashMap) {
        throw new IllegalArgumentException(" KeyTimeCycles do not support SplineSet");
    }

    @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26280b
    /* renamed from: b */
    public void mo2209b(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f73374f)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f73375g)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f73376h)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f73377i)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f73378j)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f73382n)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f73383o)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f73384p)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.f73379k)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f73380l)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f73381m)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f73385q)) {
            hashSet.add("progress");
        }
        if (this.f73314d.size() > 0) {
            for (String str : this.f73314d.keySet()) {
                hashSet.add("CUSTOM," + str);
            }
        }
    }

    @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26280b
    /* renamed from: c */
    public void mo2208c(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0114R.styleable.KeyTimeCycle);
        SparseIntArray sparseIntArray = C26306a.f73389a;
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            switch (C26306a.f73389a.get(index)) {
                case 1:
                    this.f73374f = obtainStyledAttributes.getFloat(index, this.f73374f);
                    break;
                case 2:
                    this.f73375g = obtainStyledAttributes.getDimension(index, this.f73375g);
                    break;
                case 3:
                case 11:
                default:
                    Integer.toHexString(index);
                    C26306a.f73389a.get(index);
                    break;
                case 4:
                    this.f73376h = obtainStyledAttributes.getFloat(index, this.f73376h);
                    break;
                case 5:
                    this.f73377i = obtainStyledAttributes.getFloat(index, this.f73377i);
                    break;
                case 6:
                    this.f73378j = obtainStyledAttributes.getFloat(index, this.f73378j);
                    break;
                case 7:
                    this.f73380l = obtainStyledAttributes.getFloat(index, this.f73380l);
                    break;
                case 8:
                    this.f73379k = obtainStyledAttributes.getFloat(index, this.f73379k);
                    break;
                case 9:
                    obtainStyledAttributes.getString(index);
                    break;
                case 10:
                    if (MotionLayout.O0) {
                        int resourceId = obtainStyledAttributes.getResourceId(index, this.f73312b);
                        this.f73312b = resourceId;
                        if (resourceId == -1) {
                            this.f73313c = obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            break;
                        }
                    } else if (obtainStyledAttributes.peekValue(index).type == 3) {
                        this.f73313c = obtainStyledAttributes.getString(index);
                        break;
                    } else {
                        this.f73312b = obtainStyledAttributes.getResourceId(index, this.f73312b);
                        break;
                    }
                case 12:
                    this.f73311a = obtainStyledAttributes.getInt(index, this.f73311a);
                    break;
                case 13:
                    this.f73373e = obtainStyledAttributes.getInteger(index, this.f73373e);
                    break;
                case 14:
                    this.f73381m = obtainStyledAttributes.getFloat(index, this.f73381m);
                    break;
                case 15:
                    this.f73382n = obtainStyledAttributes.getDimension(index, this.f73382n);
                    break;
                case 16:
                    this.f73383o = obtainStyledAttributes.getDimension(index, this.f73383o);
                    break;
                case 17:
                    this.f73384p = obtainStyledAttributes.getDimension(index, this.f73384p);
                    break;
                case 18:
                    this.f73385q = obtainStyledAttributes.getFloat(index, this.f73385q);
                    break;
                case 19:
                    this.f73386r = obtainStyledAttributes.getInt(index, this.f73386r);
                    break;
                case 20:
                    this.f73387s = obtainStyledAttributes.getFloat(index, this.f73387s);
                    break;
                case 21:
                    if (obtainStyledAttributes.peekValue(index).type == 5) {
                        this.f73388t = obtainStyledAttributes.getDimension(index, this.f73388t);
                        break;
                    } else {
                        this.f73388t = obtainStyledAttributes.getFloat(index, this.f73388t);
                        break;
                    }
            }
        }
    }

    @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26280b
    /* renamed from: d */
    public void mo2211d(HashMap<String, Integer> hashMap) {
        if (this.f73373e == -1) {
            return;
        }
        if (!Float.isNaN(this.f73374f)) {
            hashMap.put("alpha", Integer.valueOf(this.f73373e));
        }
        if (!Float.isNaN(this.f73375g)) {
            hashMap.put("elevation", Integer.valueOf(this.f73373e));
        }
        if (!Float.isNaN(this.f73376h)) {
            hashMap.put("rotation", Integer.valueOf(this.f73373e));
        }
        if (!Float.isNaN(this.f73377i)) {
            hashMap.put("rotationX", Integer.valueOf(this.f73373e));
        }
        if (!Float.isNaN(this.f73378j)) {
            hashMap.put("rotationY", Integer.valueOf(this.f73373e));
        }
        if (!Float.isNaN(this.f73382n)) {
            hashMap.put("translationX", Integer.valueOf(this.f73373e));
        }
        if (!Float.isNaN(this.f73383o)) {
            hashMap.put("translationY", Integer.valueOf(this.f73373e));
        }
        if (!Float.isNaN(this.f73384p)) {
            hashMap.put("translationZ", Integer.valueOf(this.f73373e));
        }
        if (!Float.isNaN(this.f73379k)) {
            hashMap.put("transitionPathRotate", Integer.valueOf(this.f73373e));
        }
        if (!Float.isNaN(this.f73380l)) {
            hashMap.put("scaleX", Integer.valueOf(this.f73373e));
        }
        if (!Float.isNaN(this.f73380l)) {
            hashMap.put("scaleY", Integer.valueOf(this.f73373e));
        }
        if (!Float.isNaN(this.f73385q)) {
            hashMap.put("progress", Integer.valueOf(this.f73373e));
        }
        if (this.f73314d.size() <= 0) {
            return;
        }
        for (String str : this.f73314d.keySet()) {
            hashMap.put(C22128a.m8543z2("CUSTOM,", str), Integer.valueOf(this.f73373e));
        }
    }
}
