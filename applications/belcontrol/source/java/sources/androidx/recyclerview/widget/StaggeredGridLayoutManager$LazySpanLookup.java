package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup.class */
public class StaggeredGridLayoutManager$LazySpanLookup {

    /* renamed from: a */
    public int[] f1400a;

    /* renamed from: b */
    public List<FullSpanItem> f1401b;

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.class */
    public static class FullSpanItem implements Parcelable {
        public static final Parcelable.Creator<FullSpanItem> CREATOR = new C0187a();

        /* renamed from: a */
        public int f1402a;

        /* renamed from: b */
        public int f1403b;

        /* renamed from: c */
        public int[] f1404c;

        /* renamed from: d */
        public boolean f1405d;

        /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem$a.class */
        public static final class C0187a implements Parcelable.Creator<FullSpanItem> {
            /* renamed from: a */
            public FullSpanItem createFromParcel(Parcel parcel) {
                return new FullSpanItem(parcel);
            }

            /* renamed from: b */
            public FullSpanItem[] newArray(int i) {
                return new FullSpanItem[i];
            }
        }

        public FullSpanItem() {
        }

        public FullSpanItem(Parcel parcel) {
            this.f1402a = parcel.readInt();
            this.f1403b = parcel.readInt();
            this.f1405d = parcel.readInt() != 1 ? false : true;
            int readInt = parcel.readInt();
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                this.f1404c = iArr;
                parcel.readIntArray(iArr);
            }
        }

        /* renamed from: a */
        public int m6092a(int i) {
            int[] iArr = this.f1404c;
            return iArr == null ? 0 : iArr[i];
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "FullSpanItem{mPosition=" + this.f1402a + ", mGapDir=" + this.f1403b + ", mHasUnwantedGapAfter=" + this.f1405d + ", mGapPerSpan=" + Arrays.toString(this.f1404c) + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f1402a);
            parcel.writeInt(this.f1403b);
            parcel.writeInt(this.f1405d ? 1 : 0);
            int[] iArr = this.f1404c;
            if (iArr == null || iArr.length <= 0) {
                parcel.writeInt(0);
                return;
            }
            parcel.writeInt(iArr.length);
            parcel.writeIntArray(this.f1404c);
        }
    }

    /* renamed from: a */
    public void m6107a(FullSpanItem fullSpanItem) {
        if (this.f1401b == null) {
            this.f1401b = new ArrayList();
        }
        int size = this.f1401b.size();
        for (int i = 0; i < size; i++) {
            FullSpanItem fullSpanItem2 = this.f1401b.get(i);
            if (fullSpanItem2.f1402a == fullSpanItem.f1402a) {
                this.f1401b.remove(i);
            }
            if (fullSpanItem2.f1402a >= fullSpanItem.f1402a) {
                this.f1401b.add(i, fullSpanItem);
                return;
            }
        }
        this.f1401b.add(fullSpanItem);
    }

    /* renamed from: b */
    public void m6106b() {
        int[] iArr = this.f1400a;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        this.f1401b = null;
    }

    /* renamed from: c */
    public void m6105c(int i) {
        int[] iArr = this.f1400a;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i, 10) + 1];
            this.f1400a = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i < iArr.length) {
        } else {
            int[] iArr3 = new int[m6093o(i)];
            this.f1400a = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = this.f1400a;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    /* renamed from: d */
    public int m6104d(int i) {
        List<FullSpanItem> list = this.f1401b;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (this.f1401b.get(size).f1402a >= i) {
                    this.f1401b.remove(size);
                }
            }
        }
        return m6100h(i);
    }

    /* renamed from: e */
    public FullSpanItem m6103e(int i, int i2, int i3, boolean z) {
        FullSpanItem fullSpanItem;
        int i4;
        List<FullSpanItem> list = this.f1401b;
        if (list == null) {
            return null;
        }
        int size = list.size();
        for (int i5 = 0; i5 < size && (i4 = (fullSpanItem = this.f1401b.get(i5)).f1402a) < i2; i5++) {
            if (i4 >= i && (i3 == 0 || fullSpanItem.f1403b == i3 || (z && fullSpanItem.f1405d))) {
                return fullSpanItem;
            }
        }
        return null;
    }

    /* renamed from: f */
    public FullSpanItem m6102f(int i) {
        List<FullSpanItem> list = this.f1401b;
        if (list == null) {
            return null;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            FullSpanItem fullSpanItem = this.f1401b.get(size);
            if (fullSpanItem.f1402a == i) {
                return fullSpanItem;
            }
        }
        return null;
    }

    /* renamed from: g */
    public int m6101g(int i) {
        int[] iArr = this.f1400a;
        if (iArr == null || i >= iArr.length) {
            return -1;
        }
        return iArr[i];
    }

    /* renamed from: h */
    public int m6100h(int i) {
        int[] iArr = this.f1400a;
        if (iArr != null && i < iArr.length) {
            int m6099i = m6099i(i);
            if (m6099i == -1) {
                int[] iArr2 = this.f1400a;
                Arrays.fill(iArr2, i, iArr2.length, -1);
                return this.f1400a.length;
            }
            int i2 = m6099i + 1;
            Arrays.fill(this.f1400a, i, i2, -1);
            return i2;
        }
        return -1;
    }

    /* renamed from: i */
    public final int m6099i(int i) {
        if (this.f1401b == null) {
            return -1;
        }
        FullSpanItem m6102f = m6102f(i);
        if (m6102f != null) {
            this.f1401b.remove(m6102f);
        }
        int size = this.f1401b.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (this.f1401b.get(i2).f1402a >= i) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 == -1) {
            return -1;
        }
        FullSpanItem fullSpanItem = this.f1401b.get(i2);
        this.f1401b.remove(i2);
        return fullSpanItem.f1402a;
    }

    /* renamed from: j */
    public void m6098j(int i, int i2) {
        int[] iArr = this.f1400a;
        if (iArr == null || i >= iArr.length) {
            return;
        }
        int i3 = i + i2;
        m6105c(i3);
        int[] iArr2 = this.f1400a;
        System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
        Arrays.fill(this.f1400a, i, i3, -1);
        m6096l(i, i2);
    }

    /* renamed from: k */
    public void m6097k(int i, int i2) {
        int[] iArr = this.f1400a;
        if (iArr == null || i >= iArr.length) {
            return;
        }
        int i3 = i + i2;
        m6105c(i3);
        int[] iArr2 = this.f1400a;
        System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
        int[] iArr3 = this.f1400a;
        Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
        m6095m(i, i2);
    }

    /* renamed from: l */
    public final void m6096l(int i, int i2) {
        List<FullSpanItem> list = this.f1401b;
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            FullSpanItem fullSpanItem = this.f1401b.get(size);
            int i3 = fullSpanItem.f1402a;
            if (i3 >= i) {
                fullSpanItem.f1402a = i3 + i2;
            }
        }
    }

    /* renamed from: m */
    public final void m6095m(int i, int i2) {
        List<FullSpanItem> list = this.f1401b;
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            FullSpanItem fullSpanItem = this.f1401b.get(size);
            int i3 = fullSpanItem.f1402a;
            if (i3 >= i) {
                if (i3 < i + i2) {
                    this.f1401b.remove(size);
                } else {
                    fullSpanItem.f1402a = i3 - i2;
                }
            }
        }
    }

    /* renamed from: n */
    public void m6094n(int i, StaggeredGridLayoutManager$c staggeredGridLayoutManager$c) {
        m6105c(i);
        this.f1400a[i] = staggeredGridLayoutManager$c.f1428e;
    }

    /* renamed from: o */
    public int m6093o(int i) {
        int length = this.f1400a.length;
        while (true) {
            int i2 = length;
            if (i2 <= i) {
                length = i2 * 2;
            } else {
                return i2;
            }
        }
    }
}
