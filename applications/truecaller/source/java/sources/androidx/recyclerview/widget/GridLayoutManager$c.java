package androidx.recyclerview.widget;

import android.util.SparseIntArray;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$c.class */
public abstract class GridLayoutManager$c {
    public final SparseIntArray mSpanIndexCache = new SparseIntArray();
    public final SparseIntArray mSpanGroupIndexCache = new SparseIntArray();
    private boolean mCacheSpanIndices = false;
    private boolean mCacheSpanGroupIndices = false;

    public static int findFirstKeyLessThan(SparseIntArray sparseIntArray, int i) {
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

    public int getCachedSpanGroupIndex(int i, int i2) {
        if (!this.mCacheSpanGroupIndices) {
            return getSpanGroupIndex(i, i2);
        }
        int i3 = this.mSpanGroupIndexCache.get(i, -1);
        if (i3 != -1) {
            return i3;
        }
        int spanGroupIndex = getSpanGroupIndex(i, i2);
        this.mSpanGroupIndexCache.put(i, spanGroupIndex);
        return spanGroupIndex;
    }

    public int getCachedSpanIndex(int i, int i2) {
        if (!this.mCacheSpanIndices) {
            return getSpanIndex(i, i2);
        }
        int i3 = this.mSpanIndexCache.get(i, -1);
        if (i3 != -1) {
            return i3;
        }
        int spanIndex = getSpanIndex(i, i2);
        this.mSpanIndexCache.put(i, spanIndex);
        return spanIndex;
    }

    public int getSpanGroupIndex(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int findFirstKeyLessThan;
        if (!this.mCacheSpanGroupIndices || (findFirstKeyLessThan = findFirstKeyLessThan(this.mSpanGroupIndexCache, i)) == -1) {
            i5 = 0;
            i4 = 0;
            i3 = 0;
        } else {
            int i7 = this.mSpanGroupIndexCache.get(findFirstKeyLessThan);
            int i8 = findFirstKeyLessThan + 1;
            int spanSize = getSpanSize(findFirstKeyLessThan) + getCachedSpanIndex(findFirstKeyLessThan, i2);
            i5 = spanSize;
            i4 = i7;
            i3 = i8;
            if (spanSize == i2) {
                i4 = i7 + 1;
                i5 = 0;
                i3 = i8;
            }
        }
        int spanSize2 = getSpanSize(i);
        int i9 = i3;
        while (i9 < i) {
            int spanSize3 = getSpanSize(i9);
            int i10 = i5 + spanSize3;
            if (i10 == i2) {
                i6 = i4 + 1;
                i5 = 0;
            } else {
                i5 = i10;
                i6 = i4;
                if (i10 > i2) {
                    i6 = i4 + 1;
                    i5 = spanSize3;
                }
            }
            i9++;
            i4 = i6;
        }
        int i11 = i4;
        if (i5 + spanSize2 > i2) {
            i11 = i4 + 1;
        }
        return i11;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0087  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x005e -> B:20:0x007e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0073 -> B:20:0x007e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0076 -> B:20:0x007e). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getSpanIndex(int r4, int r5) {
        /*
            r3 = this;
            r0 = r3
            r1 = r4
            int r0 = r0.getSpanSize(r1)
            r6 = r0
            r0 = r6
            r1 = r5
            if (r0 != r1) goto Ld
            r0 = 0
            return r0
        Ld:
            r0 = r3
            boolean r0 = r0.mCacheSpanIndices
            if (r0 == 0) goto L3c
            r0 = r3
            android.util.SparseIntArray r0 = r0.mSpanIndexCache
            r1 = r4
            int r0 = findFirstKeyLessThan(r0, r1)
            r7 = r0
            r0 = r7
            if (r0 < 0) goto L3c
            r0 = r3
            android.util.SparseIntArray r0 = r0.mSpanIndexCache
            r1 = r7
            int r0 = r0.get(r1)
            r8 = r0
            r0 = r3
            r1 = r7
            int r0 = r0.getSpanSize(r1)
            r1 = r8
            int r0 = r0 + r1
            r8 = r0
            goto L7e
        L3c:
            r0 = 0
            r9 = r0
            r0 = r9
            r8 = r0
        L43:
            r0 = r9
            r1 = r4
            if (r0 >= r1) goto L87
            r0 = r3
            r1 = r9
            int r0 = r0.getSpanSize(r1)
            r10 = r0
            r0 = r8
            r1 = r10
            int r0 = r0 + r1
            r11 = r0
            r0 = r11
            r1 = r5
            if (r0 != r1) goto L68
            r0 = 0
            r8 = r0
            r0 = r9
            r7 = r0
            goto L7e
        L68:
            r0 = r9
            r7 = r0
            r0 = r11
            r8 = r0
            r0 = r11
            r1 = r5
            if (r0 <= r1) goto L7e
            r0 = r10
            r8 = r0
            r0 = r9
            r7 = r0
        L7e:
            r0 = r7
            r1 = 1
            int r0 = r0 + r1
            r9 = r0
            goto L43
        L87:
            r0 = r6
            r1 = r8
            int r0 = r0 + r1
            r1 = r5
            if (r0 > r1) goto L92
            r0 = r8
            return r0
        L92:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager$c.getSpanIndex(int, int):int");
    }

    public abstract int getSpanSize(int i);

    public void invalidateSpanGroupIndexCache() {
        this.mSpanGroupIndexCache.clear();
    }

    public void invalidateSpanIndexCache() {
        this.mSpanIndexCache.clear();
    }

    public boolean isSpanGroupIndexCacheEnabled() {
        return this.mCacheSpanGroupIndices;
    }

    public boolean isSpanIndexCacheEnabled() {
        return this.mCacheSpanIndices;
    }

    public void setSpanGroupIndexCacheEnabled(boolean z) {
        if (!z) {
            this.mSpanGroupIndexCache.clear();
        }
        this.mCacheSpanGroupIndices = z;
    }

    public void setSpanIndexCacheEnabled(boolean z) {
        if (!z) {
            this.mSpanGroupIndexCache.clear();
        }
        this.mCacheSpanIndices = z;
    }
}
