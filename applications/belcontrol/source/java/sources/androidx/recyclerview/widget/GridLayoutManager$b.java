package androidx.recyclerview.widget;

import android.util.SparseIntArray;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$b.class */
public abstract class GridLayoutManager$b {

    /* renamed from: a */
    public final SparseIntArray f1307a = new SparseIntArray();

    /* renamed from: b */
    public final SparseIntArray f1308b = new SparseIntArray();

    /* renamed from: c */
    public boolean f1309c = false;

    /* renamed from: d */
    public boolean f1310d = false;

    /* renamed from: a */
    public static int m6252a(SparseIntArray sparseIntArray, int i) {
        int size = sparseIntArray.size() - 1;
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) >>> 1;
            if (sparseIntArray.keyAt(i3) < i) {
                i2 = i3 + 1;
            } else {
                size = i3 - 1;
            }
        }
        int i4 = i2 - 1;
        if (i4 < 0 || i4 >= sparseIntArray.size()) {
            return -1;
        }
        return sparseIntArray.keyAt(i4);
    }

    /* renamed from: b */
    public int m6251b(int i, int i2) {
        if (!this.f1310d) {
            return m6249d(i, i2);
        }
        int i3 = this.f1308b.get(i, -1);
        if (i3 != -1) {
            return i3;
        }
        int m6249d = m6249d(i, i2);
        this.f1308b.put(i, m6249d);
        return m6249d;
    }

    /* renamed from: c */
    public int m6250c(int i, int i2) {
        if (!this.f1309c) {
            return m6248e(i, i2);
        }
        int i3 = this.f1307a.get(i, -1);
        if (i3 != -1) {
            return i3;
        }
        int m6248e = m6248e(i, i2);
        this.f1307a.put(i, m6248e);
        return m6248e;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b6  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m6249d(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 189
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager$b.m6249d(int, int):int");
    }

    /* renamed from: e */
    public abstract int m6248e(int i, int i2);

    /* renamed from: f */
    public abstract int m6247f(int i);

    /* renamed from: g */
    public void m6246g() {
        this.f1308b.clear();
    }

    /* renamed from: h */
    public void m6245h() {
        this.f1307a.clear();
    }
}
