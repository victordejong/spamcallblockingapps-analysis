package androidx.constraintlayout.p026a.p027a;

import androidx.constraintlayout.p026a.p027a.p028a.C0523i;
import androidx.constraintlayout.p026a.p027a.p028a.C0531o;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
/* renamed from: androidx.constraintlayout.a.a.j */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/j.class */
public class C0550j extends C0541e implements AbstractC0549i {

    /* renamed from: aX */
    public C0541e[] f2215aX = new C0541e[4];

    /* renamed from: aY */
    public int f2216aY = 0;

    @Override // androidx.constraintlayout.p026a.p027a.AbstractC0549i
    /* renamed from: a */
    public final void mo45181a(C0541e c0541e) {
        if (c0541e == this || c0541e == null) {
            return;
        }
        int i = this.f2216aY;
        C0541e[] c0541eArr = this.f2215aX;
        if (i + 1 > c0541eArr.length) {
            this.f2215aX = (C0541e[]) Arrays.copyOf(c0541eArr, c0541eArr.length * 2);
        }
        C0541e[] c0541eArr2 = this.f2215aX;
        int i2 = this.f2216aY;
        c0541eArr2[i2] = c0541e;
        this.f2216aY = i2 + 1;
    }

    @Override // androidx.constraintlayout.p026a.p027a.C0541e
    /* renamed from: a */
    public void mo45180a(C0541e c0541e, HashMap<C0541e, C0541e> hashMap) {
        super.mo45180a(c0541e, hashMap);
        C0550j c0550j = (C0550j) c0541e;
        this.f2216aY = 0;
        int i = c0550j.f2216aY;
        for (int i2 = 0; i2 < i; i2++) {
            mo45181a(hashMap.get(c0550j.f2215aX[i2]));
        }
    }

    /* renamed from: a */
    public final void m45179a(ArrayList<C0531o> arrayList, int i, C0531o c0531o) {
        int i2;
        int i3 = 0;
        while (true) {
            if (i3 < this.f2216aY) {
                c0531o.m45330a(this.f2215aX[i3]);
                i3++;
            }
        }
        for (i2 = 0; i2 < this.f2216aY; i2++) {
            C0523i.m45341a(this.f2215aX[i2], i, arrayList, c0531o);
        }
    }

    @Override // androidx.constraintlayout.p026a.p027a.AbstractC0549i
    /* renamed from: f_ */
    public void mo45170f_() {
    }

    @Override // androidx.constraintlayout.p026a.p027a.AbstractC0549i
    /* renamed from: h */
    public final void mo45178h() {
        this.f2216aY = 0;
        Arrays.fill(this.f2215aX, (Object) null);
    }

    /* renamed from: o */
    public final int m45177o(int i) {
        for (int i2 = 0; i2 < this.f2216aY; i2++) {
            C0541e c0541e = this.f2215aX[i2];
            if (i == 0 && c0541e.f2075aG != -1) {
                return c0541e.f2075aG;
            }
            if (i == 1 && c0541e.f2076aH != -1) {
                return c0541e.f2076aH;
            }
        }
        return -1;
    }
}
