package p193e.p1577m.p1578a.p1596c.p1636q1;

import java.util.ArrayList;
import java.util.Collections;
/* renamed from: e.m.a.c.q1.x */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/x.class */
public class C24803x {

    /* renamed from: h */
    public static final /* synthetic */ int f69515h = 0;

    /* renamed from: a */
    public final int f69516a;

    /* renamed from: e */
    public int f69520e;

    /* renamed from: f */
    public int f69521f;

    /* renamed from: g */
    public int f69522g;

    /* renamed from: c */
    public final C24805b[] f69518c = new C24805b[5];

    /* renamed from: b */
    public final ArrayList<C24805b> f69517b = new ArrayList<>();

    /* renamed from: d */
    public int f69519d = -1;

    /* renamed from: e.m.a.c.q1.x$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/x$b.class */
    public static class C24805b {

        /* renamed from: a */
        public int f69523a;

        /* renamed from: b */
        public int f69524b;

        /* renamed from: c */
        public float f69525c;

        public C24805b() {
        }

        public C24805b(C24804a c24804a) {
        }
    }

    public C24803x(int i) {
        this.f69516a = i;
    }

    /* renamed from: a */
    public void m4506a(int i, float f) {
        C24805b c24805b;
        if (this.f69519d != 1) {
            Collections.sort(this.f69517b, C24768b.f69417a);
            this.f69519d = 1;
        }
        int i2 = this.f69522g;
        if (i2 > 0) {
            C24805b[] c24805bArr = this.f69518c;
            int i3 = i2 - 1;
            this.f69522g = i3;
            c24805b = c24805bArr[i3];
        } else {
            c24805b = new C24805b(null);
        }
        int i4 = this.f69520e;
        this.f69520e = i4 + 1;
        c24805b.f69523a = i4;
        c24805b.f69524b = i;
        c24805b.f69525c = f;
        this.f69517b.add(c24805b);
        this.f69521f += i;
        while (true) {
            int i5 = this.f69521f;
            int i6 = this.f69516a;
            if (i5 > i6) {
                int i7 = i5 - i6;
                C24805b c24805b2 = this.f69517b.get(0);
                int i8 = c24805b2.f69524b;
                if (i8 <= i7) {
                    this.f69521f -= i8;
                    this.f69517b.remove(0);
                    int i9 = this.f69522g;
                    if (i9 < 5) {
                        C24805b[] c24805bArr2 = this.f69518c;
                        this.f69522g = i9 + 1;
                        c24805bArr2[i9] = c24805b2;
                    }
                } else {
                    c24805b2.f69524b = i8 - i7;
                    this.f69521f -= i7;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    public float m4505b(float f) {
        float f2;
        if (this.f69519d != 0) {
            Collections.sort(this.f69517b, C24770c.f69422a);
            this.f69519d = 0;
        }
        float f3 = this.f69521f;
        int i = 0;
        for (int i2 = 0; i2 < this.f69517b.size(); i2++) {
            C24805b c24805b = this.f69517b.get(i2);
            i += c24805b.f69524b;
            if (i >= f * f3) {
                return c24805b.f69525c;
            }
        }
        if (this.f69517b.isEmpty()) {
            f2 = Float.NaN;
        } else {
            ArrayList<C24805b> arrayList = this.f69517b;
            f2 = arrayList.get(arrayList.size() - 1).f69525c;
        }
        return f2;
    }
}
