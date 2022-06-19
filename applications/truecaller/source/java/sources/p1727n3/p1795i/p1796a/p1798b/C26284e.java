package p1727n3.p1795i.p1796a.p1798b;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.C0114R;
import com.tenor.android.core.constant.StringConstant;
import java.util.HashMap;
import java.util.HashSet;
/* renamed from: n3.i.a.b.e */
/* loaded from: classes-dex2jar.jar:n3/i/a/b/e.class */
public class C26284e extends AbstractC26280b {

    /* renamed from: e */
    public int f73332e = 0;

    /* renamed from: f */
    public int f73333f = -1;

    /* renamed from: g */
    public float f73334g = Float.NaN;

    /* renamed from: h */
    public float f73335h = 0.0f;

    /* renamed from: i */
    public float f73336i = Float.NaN;

    /* renamed from: j */
    public int f73337j = -1;

    /* renamed from: k */
    public float f73338k = Float.NaN;

    /* renamed from: l */
    public float f73339l = Float.NaN;

    /* renamed from: m */
    public float f73340m = Float.NaN;

    /* renamed from: n */
    public float f73341n = Float.NaN;

    /* renamed from: o */
    public float f73342o = Float.NaN;

    /* renamed from: p */
    public float f73343p = Float.NaN;

    /* renamed from: q */
    public float f73344q = Float.NaN;

    /* renamed from: r */
    public float f73345r = Float.NaN;

    /* renamed from: s */
    public float f73346s = Float.NaN;

    /* renamed from: t */
    public float f73347t = Float.NaN;

    /* renamed from: u */
    public float f73348u = Float.NaN;

    /* renamed from: n3.i.a.b.e$a */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/e$a.class */
    public static class C26285a {

        /* renamed from: a */
        public static SparseIntArray f73349a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f73349a = sparseIntArray;
            sparseIntArray.append(C0114R.styleable.KeyCycle_motionTarget, 1);
            f73349a.append(C0114R.styleable.KeyCycle_framePosition, 2);
            f73349a.append(C0114R.styleable.KeyCycle_transitionEasing, 3);
            f73349a.append(C0114R.styleable.KeyCycle_curveFit, 4);
            f73349a.append(C0114R.styleable.KeyCycle_waveShape, 5);
            f73349a.append(C0114R.styleable.KeyCycle_wavePeriod, 6);
            f73349a.append(C0114R.styleable.KeyCycle_waveOffset, 7);
            f73349a.append(C0114R.styleable.KeyCycle_waveVariesBy, 8);
            f73349a.append(C0114R.styleable.KeyCycle_android_alpha, 9);
            f73349a.append(C0114R.styleable.KeyCycle_android_elevation, 10);
            f73349a.append(C0114R.styleable.KeyCycle_android_rotation, 11);
            f73349a.append(C0114R.styleable.KeyCycle_android_rotationX, 12);
            f73349a.append(C0114R.styleable.KeyCycle_android_rotationY, 13);
            f73349a.append(C0114R.styleable.KeyCycle_transitionPathRotate, 14);
            f73349a.append(C0114R.styleable.KeyCycle_android_scaleX, 15);
            f73349a.append(C0114R.styleable.KeyCycle_android_scaleY, 16);
            f73349a.append(C0114R.styleable.KeyCycle_android_translationX, 17);
            f73349a.append(C0114R.styleable.KeyCycle_android_translationY, 18);
            f73349a.append(C0114R.styleable.KeyCycle_android_translationZ, 19);
            f73349a.append(C0114R.styleable.KeyCycle_motionProgress, 20);
        }
    }

    public C26284e() {
        this.f73314d = new HashMap<>();
    }

    @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26280b
    /* renamed from: a */
    public void mo2210a(HashMap<String, AbstractC26318r> hashMap) {
        hashMap.size();
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int min = Math.min(2, stackTrace.length - 1);
        String str = StringConstant.SPACE;
        for (int i = 1; i <= min; i++) {
            StackTraceElement stackTraceElement = stackTrace[i];
            stackTrace[i].getFileName();
            stackTrace[i].getLineNumber();
            stackTrace[i].getMethodName();
            str = str + StringConstant.SPACE;
        }
        for (String str2 : hashMap.keySet()) {
            AbstractC26318r abstractC26318r = hashMap.get(str2);
            str2.hashCode();
            boolean z = true;
            switch (str2.hashCode()) {
                case -1249320806:
                    if (str2.equals("rotationX")) {
                        z = false;
                        break;
                    }
                    break;
                case -1249320805:
                    if (str2.equals("rotationY")) {
                        z = true;
                        break;
                    }
                    break;
                case -1225497657:
                    if (str2.equals("translationX")) {
                        z = true;
                        break;
                    }
                    break;
                case -1225497656:
                    if (str2.equals("translationY")) {
                        z = true;
                        break;
                    }
                    break;
                case -1225497655:
                    if (str2.equals("translationZ")) {
                        z = true;
                        break;
                    }
                    break;
                case -1001078227:
                    if (str2.equals("progress")) {
                        z = true;
                        break;
                    }
                    break;
                case -908189618:
                    if (str2.equals("scaleX")) {
                        z = true;
                        break;
                    }
                    break;
                case -908189617:
                    if (str2.equals("scaleY")) {
                        z = true;
                        break;
                    }
                    break;
                case -40300674:
                    if (str2.equals("rotation")) {
                        z = true;
                        break;
                    }
                    break;
                case -4379043:
                    if (str2.equals("elevation")) {
                        z = true;
                        break;
                    }
                    break;
                case 37232917:
                    if (str2.equals("transitionPathRotate")) {
                        z = true;
                        break;
                    }
                    break;
                case 92909918:
                    if (str2.equals("alpha")) {
                        z = true;
                        break;
                    }
                    break;
                case 156108012:
                    if (str2.equals("waveOffset")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    abstractC26318r.mo2169b(this.f73311a, this.f73342o);
                    break;
                case true:
                    abstractC26318r.mo2169b(this.f73311a, this.f73343p);
                    break;
                case true:
                    abstractC26318r.mo2169b(this.f73311a, this.f73346s);
                    break;
                case true:
                    abstractC26318r.mo2169b(this.f73311a, this.f73347t);
                    break;
                case true:
                    abstractC26318r.mo2169b(this.f73311a, this.f73348u);
                    break;
                case true:
                    abstractC26318r.mo2169b(this.f73311a, this.f73336i);
                    break;
                case true:
                    abstractC26318r.mo2169b(this.f73311a, this.f73344q);
                    break;
                case true:
                    abstractC26318r.mo2169b(this.f73311a, this.f73345r);
                    break;
                case true:
                    abstractC26318r.mo2169b(this.f73311a, this.f73340m);
                    break;
                case true:
                    abstractC26318r.mo2169b(this.f73311a, this.f73339l);
                    break;
                case true:
                    abstractC26318r.mo2169b(this.f73311a, this.f73341n);
                    break;
                case true:
                    abstractC26318r.mo2169b(this.f73311a, this.f73338k);
                    break;
                case true:
                    abstractC26318r.mo2169b(this.f73311a, this.f73335h);
                    break;
            }
        }
    }

    @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26280b
    /* renamed from: b */
    public void mo2209b(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f73338k)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f73339l)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f73340m)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f73342o)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f73343p)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f73344q)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f73345r)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f73341n)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f73346s)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f73347t)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f73348u)) {
            hashSet.add("translationZ");
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
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0114R.styleable.KeyCycle);
        SparseIntArray sparseIntArray = C26285a.f73349a;
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            switch (C26285a.f73349a.get(index)) {
                case 1:
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
                case 2:
                    this.f73311a = obtainStyledAttributes.getInt(index, this.f73311a);
                    break;
                case 3:
                    obtainStyledAttributes.getString(index);
                    break;
                case 4:
                    this.f73332e = obtainStyledAttributes.getInteger(index, this.f73332e);
                    break;
                case 5:
                    this.f73333f = obtainStyledAttributes.getInt(index, this.f73333f);
                    break;
                case 6:
                    this.f73334g = obtainStyledAttributes.getFloat(index, this.f73334g);
                    break;
                case 7:
                    if (obtainStyledAttributes.peekValue(index).type == 5) {
                        this.f73335h = obtainStyledAttributes.getDimension(index, this.f73335h);
                        break;
                    } else {
                        this.f73335h = obtainStyledAttributes.getFloat(index, this.f73335h);
                        break;
                    }
                case 8:
                    this.f73337j = obtainStyledAttributes.getInt(index, this.f73337j);
                    break;
                case 9:
                    this.f73338k = obtainStyledAttributes.getFloat(index, this.f73338k);
                    break;
                case 10:
                    this.f73339l = obtainStyledAttributes.getDimension(index, this.f73339l);
                    break;
                case 11:
                    this.f73340m = obtainStyledAttributes.getFloat(index, this.f73340m);
                    break;
                case 12:
                    this.f73342o = obtainStyledAttributes.getFloat(index, this.f73342o);
                    break;
                case 13:
                    this.f73343p = obtainStyledAttributes.getFloat(index, this.f73343p);
                    break;
                case 14:
                    this.f73341n = obtainStyledAttributes.getFloat(index, this.f73341n);
                    break;
                case 15:
                    this.f73344q = obtainStyledAttributes.getFloat(index, this.f73344q);
                    break;
                case 16:
                    this.f73345r = obtainStyledAttributes.getFloat(index, this.f73345r);
                    break;
                case 17:
                    this.f73346s = obtainStyledAttributes.getDimension(index, this.f73346s);
                    break;
                case 18:
                    this.f73347t = obtainStyledAttributes.getDimension(index, this.f73347t);
                    break;
                case 19:
                    this.f73348u = obtainStyledAttributes.getDimension(index, this.f73348u);
                    break;
                case 20:
                    this.f73336i = obtainStyledAttributes.getFloat(index, this.f73336i);
                    break;
                default:
                    Integer.toHexString(index);
                    C26285a.f73349a.get(index);
                    break;
            }
        }
    }
}
