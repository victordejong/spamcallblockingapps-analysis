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
/* renamed from: n3.i.a.b.c */
/* loaded from: classes-dex2jar.jar:n3/i/a/b/c.class */
public class C26281c extends AbstractC26280b {

    /* renamed from: e */
    public int f73315e = -1;

    /* renamed from: f */
    public float f73316f = Float.NaN;

    /* renamed from: g */
    public float f73317g = Float.NaN;

    /* renamed from: h */
    public float f73318h = Float.NaN;

    /* renamed from: i */
    public float f73319i = Float.NaN;

    /* renamed from: j */
    public float f73320j = Float.NaN;

    /* renamed from: k */
    public float f73321k = Float.NaN;

    /* renamed from: l */
    public float f73322l = Float.NaN;

    /* renamed from: m */
    public float f73323m = Float.NaN;

    /* renamed from: n */
    public float f73324n = Float.NaN;

    /* renamed from: o */
    public float f73325o = Float.NaN;

    /* renamed from: p */
    public float f73326p = Float.NaN;

    /* renamed from: q */
    public float f73327q = Float.NaN;

    /* renamed from: r */
    public float f73328r = Float.NaN;

    /* renamed from: s */
    public float f73329s = Float.NaN;

    /* renamed from: n3.i.a.b.c$a */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/c$a.class */
    public static class C26282a {

        /* renamed from: a */
        public static SparseIntArray f73330a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f73330a = sparseIntArray;
            sparseIntArray.append(C0114R.styleable.KeyAttribute_android_alpha, 1);
            f73330a.append(C0114R.styleable.KeyAttribute_android_elevation, 2);
            f73330a.append(C0114R.styleable.KeyAttribute_android_rotation, 4);
            f73330a.append(C0114R.styleable.KeyAttribute_android_rotationX, 5);
            f73330a.append(C0114R.styleable.KeyAttribute_android_rotationY, 6);
            f73330a.append(C0114R.styleable.KeyAttribute_android_transformPivotX, 19);
            f73330a.append(C0114R.styleable.KeyAttribute_android_transformPivotY, 20);
            f73330a.append(C0114R.styleable.KeyAttribute_android_scaleX, 7);
            f73330a.append(C0114R.styleable.KeyAttribute_transitionPathRotate, 8);
            f73330a.append(C0114R.styleable.KeyAttribute_transitionEasing, 9);
            f73330a.append(C0114R.styleable.KeyAttribute_motionTarget, 10);
            f73330a.append(C0114R.styleable.KeyAttribute_framePosition, 12);
            f73330a.append(C0114R.styleable.KeyAttribute_curveFit, 13);
            f73330a.append(C0114R.styleable.KeyAttribute_android_scaleY, 14);
            f73330a.append(C0114R.styleable.KeyAttribute_android_translationX, 15);
            f73330a.append(C0114R.styleable.KeyAttribute_android_translationY, 16);
            f73330a.append(C0114R.styleable.KeyAttribute_android_translationZ, 17);
            f73330a.append(C0114R.styleable.KeyAttribute_motionProgress, 18);
        }
    }

    public C26281c() {
        this.f73314d = new HashMap<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0166, code lost:
        if (r0.equals("scaleY") == false) goto L12;
     */
    @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26280b
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo2210a(java.util.HashMap<java.lang.String, p1727n3.p1795i.p1796a.p1798b.AbstractC26318r> r5) {
        /*
            Method dump skipped, instructions count: 928
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1795i.p1796a.p1798b.C26281c.mo2210a(java.util.HashMap):void");
    }

    @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26280b
    /* renamed from: b */
    public void mo2209b(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f73316f)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f73317g)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f73318h)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f73319i)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f73320j)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f73321k)) {
            hashSet.add("transformPivotX");
        }
        if (!Float.isNaN(this.f73322l)) {
            hashSet.add("transformPivotY");
        }
        if (!Float.isNaN(this.f73326p)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f73327q)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f73328r)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.f73323m)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f73324n)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f73325o)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f73329s)) {
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
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0114R.styleable.KeyAttribute);
        SparseIntArray sparseIntArray = C26282a.f73330a;
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            switch (C26282a.f73330a.get(index)) {
                case 1:
                    this.f73316f = obtainStyledAttributes.getFloat(index, this.f73316f);
                    break;
                case 2:
                    this.f73317g = obtainStyledAttributes.getDimension(index, this.f73317g);
                    break;
                case 3:
                case 11:
                default:
                    Integer.toHexString(index);
                    C26282a.f73330a.get(index);
                    break;
                case 4:
                    this.f73318h = obtainStyledAttributes.getFloat(index, this.f73318h);
                    break;
                case 5:
                    this.f73319i = obtainStyledAttributes.getFloat(index, this.f73319i);
                    break;
                case 6:
                    this.f73320j = obtainStyledAttributes.getFloat(index, this.f73320j);
                    break;
                case 7:
                    this.f73324n = obtainStyledAttributes.getFloat(index, this.f73324n);
                    break;
                case 8:
                    this.f73323m = obtainStyledAttributes.getFloat(index, this.f73323m);
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
                    this.f73315e = obtainStyledAttributes.getInteger(index, this.f73315e);
                    break;
                case 14:
                    this.f73325o = obtainStyledAttributes.getFloat(index, this.f73325o);
                    break;
                case 15:
                    this.f73326p = obtainStyledAttributes.getDimension(index, this.f73326p);
                    break;
                case 16:
                    this.f73327q = obtainStyledAttributes.getDimension(index, this.f73327q);
                    break;
                case 17:
                    this.f73328r = obtainStyledAttributes.getDimension(index, this.f73328r);
                    break;
                case 18:
                    this.f73329s = obtainStyledAttributes.getFloat(index, this.f73329s);
                    break;
                case 19:
                    this.f73321k = obtainStyledAttributes.getDimension(index, this.f73321k);
                    break;
                case 20:
                    this.f73322l = obtainStyledAttributes.getDimension(index, this.f73322l);
                    break;
            }
        }
    }

    @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26280b
    /* renamed from: d */
    public void mo2211d(HashMap<String, Integer> hashMap) {
        if (this.f73315e == -1) {
            return;
        }
        if (!Float.isNaN(this.f73316f)) {
            hashMap.put("alpha", Integer.valueOf(this.f73315e));
        }
        if (!Float.isNaN(this.f73317g)) {
            hashMap.put("elevation", Integer.valueOf(this.f73315e));
        }
        if (!Float.isNaN(this.f73318h)) {
            hashMap.put("rotation", Integer.valueOf(this.f73315e));
        }
        if (!Float.isNaN(this.f73319i)) {
            hashMap.put("rotationX", Integer.valueOf(this.f73315e));
        }
        if (!Float.isNaN(this.f73320j)) {
            hashMap.put("rotationY", Integer.valueOf(this.f73315e));
        }
        if (!Float.isNaN(this.f73321k)) {
            hashMap.put("transformPivotX", Integer.valueOf(this.f73315e));
        }
        if (!Float.isNaN(this.f73322l)) {
            hashMap.put("transformPivotY", Integer.valueOf(this.f73315e));
        }
        if (!Float.isNaN(this.f73326p)) {
            hashMap.put("translationX", Integer.valueOf(this.f73315e));
        }
        if (!Float.isNaN(this.f73327q)) {
            hashMap.put("translationY", Integer.valueOf(this.f73315e));
        }
        if (!Float.isNaN(this.f73328r)) {
            hashMap.put("translationZ", Integer.valueOf(this.f73315e));
        }
        if (!Float.isNaN(this.f73323m)) {
            hashMap.put("transitionPathRotate", Integer.valueOf(this.f73315e));
        }
        if (!Float.isNaN(this.f73324n)) {
            hashMap.put("scaleX", Integer.valueOf(this.f73315e));
        }
        if (!Float.isNaN(this.f73325o)) {
            hashMap.put("scaleY", Integer.valueOf(this.f73315e));
        }
        if (!Float.isNaN(this.f73329s)) {
            hashMap.put("progress", Integer.valueOf(this.f73315e));
        }
        if (this.f73314d.size() <= 0) {
            return;
        }
        for (String str : this.f73314d.keySet()) {
            hashMap.put(C22128a.m8543z2("CUSTOM,", str), Integer.valueOf(this.f73315e));
        }
    }
}
