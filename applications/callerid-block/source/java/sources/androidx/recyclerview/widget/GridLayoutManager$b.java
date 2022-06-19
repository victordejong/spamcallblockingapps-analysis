package androidx.recyclerview.widget;

import android.util.SparseIntArray;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$b.class */
public abstract class GridLayoutManager$b {

    /* renamed from: a */
    final SparseIntArray f2153a = new SparseIntArray();

    /* renamed from: b */
    final SparseIntArray f2154b = new SparseIntArray();

    /* renamed from: c */
    private boolean f2155c = false;

    /* renamed from: d */
    private boolean f2156d = false;

    /* renamed from: a */
    static int m12865a(SparseIntArray sparseIntArray, int i) {
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
    int m12864b(int i, int i2) {
        if (!this.f2156d) {
            return m12862d(i, i2);
        }
        int i3 = this.f2154b.get(i, -1);
        if (i3 != -1) {
            return i3;
        }
        int m12862d = m12862d(i, i2);
        this.f2154b.put(i, m12862d);
        return m12862d;
    }

    /* renamed from: c */
    int m12863c(int i, int i2) {
        if (!this.f2155c) {
            return m12861e(i, i2);
        }
        int i3 = this.f2153a.get(i, -1);
        if (i3 != -1) {
            return i3;
        }
        int m12861e = m12861e(i, i2);
        this.f2153a.put(i, m12861e);
        return m12861e;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b3  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m12862d(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 186
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager$b.m12862d(int, int):int");
    }

    /* renamed from: e */
    public abstract int m12861e(int i, int i2);

    /* renamed from: f */
    public abstract int m12860f(int i);

    /* renamed from: g */
    public void m12859g() {
        this.f2154b.clear();
    }

    /* renamed from: h */
    public void m12858h() {
        this.f2153a.clear();
    }
}
