package androidx.emoji2.text;

import android.graphics.Typeface;
import android.util.SparseArray;
import p124i4.C3102d;
import p259v0.C4574b;
/* renamed from: androidx.emoji2.text.m */
/* loaded from: classes-dex2jar.jar:androidx/emoji2/text/m.class */
public final class C0377m {

    /* renamed from: a */
    public final C4574b f1637a;

    /* renamed from: b */
    public final char[] f1638b;

    /* renamed from: c */
    public final C0378a f1639c = new C0378a(1024);

    /* renamed from: d */
    public final Typeface f1640d;

    /* renamed from: androidx.emoji2.text.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/m$a.class */
    public static class C0378a {

        /* renamed from: a */
        public final SparseArray<C0378a> f1641a;

        /* renamed from: b */
        public C0367g f1642b;

        public C0378a() {
            this.f1641a = new SparseArray<>(1);
        }

        public C0378a(int i) {
            this.f1641a = new SparseArray<>(i);
        }

        /* renamed from: a */
        public void m8224a(C0367g c0367g, int i, int i2) {
            int m8239a = c0367g.m8239a(i);
            SparseArray<C0378a> sparseArray = this.f1641a;
            C0378a c0378a = sparseArray == null ? null : sparseArray.get(m8239a);
            C0378a c0378a2 = c0378a;
            if (c0378a == null) {
                c0378a2 = new C0378a();
                this.f1641a.put(c0367g.m8239a(i), c0378a2);
            }
            if (i2 > i) {
                c0378a2.m8224a(c0367g, i + 1, i2);
            } else {
                c0378a2.f1642b = c0367g;
            }
        }
    }

    public C0377m(Typeface typeface, C4574b c4574b) {
        this.f1640d = typeface;
        this.f1637a = c4574b;
        this.f1638b = new char[c4574b.m763c() * 2];
        int m763c = c4574b.m763c();
        for (int i = 0; i < m763c; i++) {
            C0367g c0367g = new C0367g(this, i);
            Character.toChars(c0367g.m8236d(), this.f1638b, i * 2);
            C3102d.m2631h(c0367g.m8238b() > 0, "invalid metadata codepoint length");
            this.f1639c.m8224a(c0367g, 0, c0367g.m8238b() - 1);
        }
    }
}
