package p000;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Arrays;
import p000.mi1;
/* renamed from: ni1 */
/* loaded from: classes3-dex2jar.jar:ni1.class */
public class ni1 {

    /* renamed from: a */
    public int f7147a;

    /* renamed from: b */
    public mi1 f7148b;

    /* renamed from: c */
    public Interpolator f7149c;

    /* renamed from: d */
    public ArrayList<mi1> f7150d;

    /* renamed from: e */
    public pi1 f7151e;

    public ni1(mi1... mi1VarArr) {
        this.f7147a = mi1VarArr.length;
        ArrayList<mi1> arrayList = new ArrayList<>();
        this.f7150d = arrayList;
        arrayList.addAll(Arrays.asList(mi1VarArr));
        this.f7150d.get(0);
        mi1 mi1Var = this.f7150d.get(this.f7147a - 1);
        this.f7148b = mi1Var;
        this.f7149c = mi1Var.m1239d();
    }

    /* renamed from: c */
    public static ni1 m1163c(float... fArr) {
        int length = fArr.length;
        mi1.C1481a[] c1481aArr = new mi1.C1481a[Math.max(length, 2)];
        if (length == 1) {
            c1481aArr[0] = (mi1.C1481a) mi1.m1238g(0.0f);
            c1481aArr[1] = (mi1.C1481a) mi1.m1237h(1.0f, fArr[0]);
        } else {
            c1481aArr[0] = (mi1.C1481a) mi1.m1237h(0.0f, fArr[0]);
            for (int i = 1; i < length; i++) {
                c1481aArr[i] = (mi1.C1481a) mi1.m1237h(i / (length - 1), fArr[i]);
            }
        }
        return new ki1(c1481aArr);
    }

    /* renamed from: a */
    public ni1 mo1165a() {
        throw null;
    }

    /* renamed from: b */
    public Object mo1164b(float f) {
        throw null;
    }

    /* renamed from: d */
    public void m1162d(pi1 pi1Var) {
        this.f7151e = pi1Var;
    }

    public String toString() {
        String str = " ";
        for (int i = 0; i < this.f7147a; i++) {
            str = str + this.f7150d.get(i).mo1234f() + "  ";
        }
        return str;
    }
}
