package p131c.p161d.p170b.p188c.p203g1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* renamed from: c.d.b.c.g1.a0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/a0.class */
public class C2868a0 {

    /* renamed from: h */
    public static final Comparator<C2870b> f10441h = C2871b.f10453a;

    /* renamed from: i */
    public static final Comparator<C2870b> f10442i = C2873c.f10459a;

    /* renamed from: a */
    public final int f10443a;

    /* renamed from: e */
    public int f10447e;

    /* renamed from: f */
    public int f10448f;

    /* renamed from: g */
    public int f10449g;

    /* renamed from: c */
    public final C2870b[] f10445c = new C2870b[5];

    /* renamed from: b */
    public final ArrayList<C2870b> f10444b = new ArrayList<>();

    /* renamed from: d */
    public int f10446d = -1;

    /* renamed from: c.d.b.c.g1.a0$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/g1/a0$b.class */
    public static class C2870b {

        /* renamed from: a */
        public int f10450a;

        /* renamed from: b */
        public int f10451b;

        /* renamed from: c */
        public float f10452c;

        public C2870b() {
        }
    }

    public C2868a0(int i) {
        this.f10443a = i;
    }

    /* renamed from: a */
    public static /* synthetic */ int m28745a(C2870b bVar, C2870b bVar2) {
        return bVar.f10450a - bVar2.f10450a;
    }

    /* renamed from: a */
    public float m28747a(float f) {
        float f2;
        m28744b();
        float f3 = this.f10448f;
        int i = 0;
        for (int i2 = 0; i2 < this.f10444b.size(); i2++) {
            C2870b bVar = this.f10444b.get(i2);
            i += bVar.f10451b;
            if (i >= f * f3) {
                return bVar.f10452c;
            }
        }
        if (this.f10444b.isEmpty()) {
            f2 = Float.NaN;
        } else {
            ArrayList<C2870b> arrayList = this.f10444b;
            f2 = arrayList.get(arrayList.size() - 1).f10452c;
        }
        return f2;
    }

    /* renamed from: a */
    public final void m28748a() {
        if (this.f10446d != 1) {
            Collections.sort(this.f10444b, f10441h);
            this.f10446d = 1;
        }
    }

    /* renamed from: a */
    public void m28746a(int i, float f) {
        C2870b bVar;
        m28748a();
        int i2 = this.f10449g;
        if (i2 > 0) {
            C2870b[] bVarArr = this.f10445c;
            int i3 = i2 - 1;
            this.f10449g = i3;
            bVar = bVarArr[i3];
        } else {
            bVar = new C2870b();
        }
        int i4 = this.f10447e;
        this.f10447e = i4 + 1;
        bVar.f10450a = i4;
        bVar.f10451b = i;
        bVar.f10452c = f;
        this.f10444b.add(bVar);
        this.f10448f += i;
        while (true) {
            int i5 = this.f10448f;
            int i6 = this.f10443a;
            if (i5 > i6) {
                int i7 = i5 - i6;
                C2870b bVar2 = this.f10444b.get(0);
                int i8 = bVar2.f10451b;
                if (i8 <= i7) {
                    this.f10448f -= i8;
                    this.f10444b.remove(0);
                    int i9 = this.f10449g;
                    if (i9 < 5) {
                        C2870b[] bVarArr2 = this.f10445c;
                        this.f10449g = i9 + 1;
                        bVarArr2[i9] = bVar2;
                    }
                } else {
                    bVar2.f10451b = i8 - i7;
                    this.f10448f -= i7;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    public final void m28744b() {
        if (this.f10446d != 0) {
            Collections.sort(this.f10444b, f10442i);
            this.f10446d = 0;
        }
    }

    /* renamed from: c */
    public void m28742c() {
        this.f10444b.clear();
        this.f10446d = -1;
        this.f10447e = 0;
        this.f10448f = 0;
    }
}
