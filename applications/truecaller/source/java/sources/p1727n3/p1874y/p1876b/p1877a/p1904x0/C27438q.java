package p1727n3.p1874y.p1876b.p1877a.p1904x0;

import java.util.ArrayList;
import java.util.Collections;
/* renamed from: n3.y.b.a.x0.q */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/x0/q.class */
public class C27438q {

    /* renamed from: h */
    public static final /* synthetic */ int f77209h = 0;

    /* renamed from: a */
    public final int f77210a;

    /* renamed from: e */
    public int f77214e;

    /* renamed from: f */
    public int f77215f;

    /* renamed from: g */
    public int f77216g;

    /* renamed from: c */
    public final C27440b[] f77212c = new C27440b[5];

    /* renamed from: b */
    public final ArrayList<C27440b> f77211b = new ArrayList<>();

    /* renamed from: d */
    public int f77213d = -1;

    /* renamed from: n3.y.b.a.x0.q$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/x0/q$b.class */
    public static class C27440b {

        /* renamed from: a */
        public int f77217a;

        /* renamed from: b */
        public int f77218b;

        /* renamed from: c */
        public float f77219c;

        public C27440b() {
        }

        public C27440b(C27439a c27439a) {
        }
    }

    public C27438q(int i) {
        this.f77210a = i;
    }

    /* renamed from: a */
    public void m304a(int i, float f) {
        C27440b c27440b;
        if (this.f77213d != 1) {
            Collections.sort(this.f77211b, C27436o.f77207a);
            this.f77213d = 1;
        }
        int i2 = this.f77216g;
        if (i2 > 0) {
            C27440b[] c27440bArr = this.f77212c;
            int i3 = i2 - 1;
            this.f77216g = i3;
            c27440b = c27440bArr[i3];
        } else {
            c27440b = new C27440b(null);
        }
        int i4 = this.f77214e;
        this.f77214e = i4 + 1;
        c27440b.f77217a = i4;
        c27440b.f77218b = i;
        c27440b.f77219c = f;
        this.f77211b.add(c27440b);
        this.f77215f += i;
        while (true) {
            int i5 = this.f77215f;
            int i6 = this.f77210a;
            if (i5 > i6) {
                int i7 = i5 - i6;
                C27440b c27440b2 = this.f77211b.get(0);
                int i8 = c27440b2.f77218b;
                if (i8 <= i7) {
                    this.f77215f -= i8;
                    this.f77211b.remove(0);
                    int i9 = this.f77216g;
                    if (i9 < 5) {
                        C27440b[] c27440bArr2 = this.f77212c;
                        this.f77216g = i9 + 1;
                        c27440bArr2[i9] = c27440b2;
                    }
                } else {
                    c27440b2.f77218b = i8 - i7;
                    this.f77215f -= i7;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    public float m303b(float f) {
        float f2;
        if (this.f77213d != 0) {
            Collections.sort(this.f77211b, C27437p.f77208a);
            this.f77213d = 0;
        }
        float f3 = this.f77215f;
        int i = 0;
        for (int i2 = 0; i2 < this.f77211b.size(); i2++) {
            C27440b c27440b = this.f77211b.get(i2);
            i += c27440b.f77218b;
            if (i >= f * f3) {
                return c27440b.f77219c;
            }
        }
        if (this.f77211b.isEmpty()) {
            f2 = Float.NaN;
        } else {
            ArrayList<C27440b> arrayList = this.f77211b;
            f2 = arrayList.get(arrayList.size() - 1).f77219c;
        }
        return f2;
    }
}
