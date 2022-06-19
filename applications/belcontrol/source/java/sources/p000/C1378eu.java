package p000;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* renamed from: eu */
/* loaded from: classes-dex2jar.jar:eu.class */
public class C1378eu {

    /* renamed from: h */
    public static final Comparator<C1380b> f6416h = C1261cu.f5675a;

    /* renamed from: i */
    public static final Comparator<C1380b> f6417i = C1321du.f6137a;

    /* renamed from: a */
    public final int f6418a;

    /* renamed from: e */
    public int f6422e;

    /* renamed from: f */
    public int f6423f;

    /* renamed from: g */
    public int f6424g;

    /* renamed from: c */
    public final C1380b[] f6420c = new C1380b[5];

    /* renamed from: b */
    public final ArrayList<C1380b> f6419b = new ArrayList<>();

    /* renamed from: d */
    public int f6421d = -1;

    /* renamed from: eu$b */
    /* loaded from: classes-dex2jar.jar:eu$b.class */
    public static class C1380b {

        /* renamed from: a */
        public int f6425a;

        /* renamed from: b */
        public int f6426b;

        /* renamed from: c */
        public float f6427c;

        public C1380b() {
        }
    }

    public C1378eu(int i) {
        this.f6418a = i;
    }

    /* renamed from: e */
    public static final /* synthetic */ int m2054e(C1380b c1380b, C1380b c1380b2) {
        return c1380b.f6425a - c1380b2.f6425a;
    }

    /* renamed from: a */
    public void m2058a(int i, float f) {
        C1380b c1380b;
        int i2;
        C1380b c1380b2;
        int i3;
        m2057b();
        int i4 = this.f6424g;
        if (i4 > 0) {
            C1380b[] c1380bArr = this.f6420c;
            int i5 = i4 - 1;
            this.f6424g = i5;
            c1380b = c1380bArr[i5];
        } else {
            c1380b = new C1380b();
        }
        int i6 = this.f6422e;
        this.f6422e = i6 + 1;
        c1380b.f6425a = i6;
        c1380b.f6426b = i;
        c1380b.f6427c = f;
        this.f6419b.add(c1380b);
        int i7 = this.f6423f + i;
        while (true) {
            this.f6423f = i7;
            while (true) {
                int i8 = this.f6423f;
                int i9 = this.f6418a;
                if (i8 <= i9) {
                    return;
                }
                i2 = i8 - i9;
                c1380b2 = this.f6419b.get(0);
                i3 = c1380b2.f6426b;
                if (i3 <= i2) {
                    this.f6423f -= i3;
                    this.f6419b.remove(0);
                    int i10 = this.f6424g;
                    if (i10 < 5) {
                        C1380b[] c1380bArr2 = this.f6420c;
                        this.f6424g = i10 + 1;
                        c1380bArr2[i10] = c1380b2;
                    }
                }
            }
            c1380b2.f6426b = i3 - i2;
            i7 = this.f6423f - i2;
        }
    }

    /* renamed from: b */
    public final void m2057b() {
        if (this.f6421d != 1) {
            Collections.sort(this.f6419b, f6416h);
            this.f6421d = 1;
        }
    }

    /* renamed from: c */
    public final void m2056c() {
        if (this.f6421d != 0) {
            Collections.sort(this.f6419b, f6417i);
            this.f6421d = 0;
        }
    }

    /* renamed from: d */
    public float m2055d(float f) {
        float f2;
        m2056c();
        float f3 = this.f6423f;
        int i = 0;
        for (int i2 = 0; i2 < this.f6419b.size(); i2++) {
            C1380b c1380b = this.f6419b.get(i2);
            i += c1380b.f6426b;
            if (i >= f * f3) {
                return c1380b.f6427c;
            }
        }
        if (this.f6419b.isEmpty()) {
            f2 = Float.NaN;
        } else {
            ArrayList<C1380b> arrayList = this.f6419b;
            f2 = arrayList.get(arrayList.size() - 1).f6427c;
        }
        return f2;
    }

    /* renamed from: g */
    public void m2052g() {
        this.f6419b.clear();
        this.f6421d = -1;
        this.f6422e = 0;
        this.f6423f = 0;
    }
}
