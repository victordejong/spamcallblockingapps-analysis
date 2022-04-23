package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup.class */
public class StaggeredGridLayoutManager$LazySpanLookup {

    /* renamed from: a */
    int[] f2299a;

    /* renamed from: b */
    List<FullSpanItem> f2300b;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.class */
    public static class FullSpanItem implements Parcelable {
        public static final Parcelable.Creator<FullSpanItem> CREATOR = new C0419a();

        /* renamed from: b */
        int f2301b;

        /* renamed from: c */
        int f2302c;

        /* renamed from: d */
        int[] f2303d;

        /* renamed from: e */
        boolean f2304e;

        /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem$a.class */
        class C0419a implements Parcelable.Creator<FullSpanItem> {
            C0419a() {
            }

            /* renamed from: a */
            public FullSpanItem createFromParcel(Parcel parcel) {
                return new FullSpanItem(parcel);
            }

            /* renamed from: b */
            public FullSpanItem[] newArray(int i) {
                return new FullSpanItem[i];
            }
        }

        FullSpanItem() {
        }

        FullSpanItem(Parcel parcel) {
            this.f2301b = parcel.readInt();
            this.f2302c = parcel.readInt();
            this.f2304e = parcel.readInt() != 1 ? false : true;
            int readInt = parcel.readInt();
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                this.f2303d = iArr;
                parcel.readIntArray(iArr);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public int m12483a(int i) {
            int[] iArr = this.f2303d;
            return iArr == null ? 0 : iArr[i];
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "FullSpanItem{mPosition=" + this.f2301b + ", mGapDir=" + this.f2302c + ", mHasUnwantedGapAfter=" + this.f2304e + ", mGapPerSpan=" + Arrays.toString(this.f2303d) + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f2301b);
            parcel.writeInt(this.f2302c);
            parcel.writeInt(this.f2304e ? 1 : 0);
            int[] iArr = this.f2303d;
            if (iArr == null || iArr.length <= 0) {
                parcel.writeInt(0);
                return;
            }
            parcel.writeInt(iArr.length);
            parcel.writeIntArray(this.f2303d);
        }
    }

    StaggeredGridLayoutManager$LazySpanLookup() {
    }

    /* renamed from: i */
    private int m12490i(int i) {
        if (this.f2300b == null) {
            return -1;
        }
        FullSpanItem f = m12493f(i);
        if (f != null) {
            this.f2300b.remove(f);
        }
        int size = this.f2300b.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (this.f2300b.get(i2).f2301b >= i) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 == -1) {
            return -1;
        }
        FullSpanItem fullSpanItem = this.f2300b.get(i2);
        this.f2300b.remove(i2);
        return fullSpanItem.f2301b;
    }

    /* renamed from: l */
    private void m12487l(int i, int i2) {
        List<FullSpanItem> list = this.f2300b;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f2300b.get(size);
                int i3 = fullSpanItem.f2301b;
                if (i3 >= i) {
                    fullSpanItem.f2301b = i3 + i2;
                }
            }
        }
    }

    /* renamed from: m */
    private void m12486m(int i, int i2) {
        List<FullSpanItem> list = this.f2300b;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f2300b.get(size);
                int i3 = fullSpanItem.f2301b;
                if (i3 >= i) {
                    if (i3 < i + i2) {
                        this.f2300b.remove(size);
                    } else {
                        fullSpanItem.f2301b = i3 - i2;
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public void m12498a(FullSpanItem fullSpanItem) {
        if (this.f2300b == null) {
            this.f2300b = new ArrayList();
        }
        int size = this.f2300b.size();
        for (int i = 0; i < size; i++) {
            FullSpanItem fullSpanItem2 = this.f2300b.get(i);
            if (fullSpanItem2.f2301b == fullSpanItem.f2301b) {
                this.f2300b.remove(i);
            }
            if (fullSpanItem2.f2301b >= fullSpanItem.f2301b) {
                this.f2300b.add(i, fullSpanItem);
                return;
            }
        }
        this.f2300b.add(fullSpanItem);
    }

    /* renamed from: b */
    void m12497b() {
        int[] iArr = this.f2299a;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        this.f2300b = null;
    }

    /* renamed from: c */
    void m12496c(int i) {
        int[] iArr = this.f2299a;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i, 10) + 1];
            this.f2299a = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i >= iArr.length) {
            int[] iArr3 = new int[m12484o(i)];
            this.f2299a = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = this.f2299a;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    /* renamed from: d */
    int m12495d(int i) {
        List<FullSpanItem> list = this.f2300b;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (this.f2300b.get(size).f2301b >= i) {
                    this.f2300b.remove(size);
                }
            }
        }
        return m12491h(i);
    }

    /* renamed from: e */
    public FullSpanItem m12494e(int i, int i2, int i3, boolean z) {
        FullSpanItem fullSpanItem;
        int i4;
        List<FullSpanItem> list = this.f2300b;
        if (list == null) {
            return null;
        }
        int size = list.size();
        for (int i5 = 0; i5 < size && (i4 = (fullSpanItem = this.f2300b.get(i5)).f2301b) < i2; i5++) {
            if (i4 >= i && (i3 == 0 || fullSpanItem.f2302c == i3 || (z && fullSpanItem.f2304e))) {
                return fullSpanItem;
            }
        }
        return null;
    }

    /* renamed from: f */
    public FullSpanItem m12493f(int i) {
        List<FullSpanItem> list = this.f2300b;
        if (list == null) {
            return null;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            FullSpanItem fullSpanItem = this.f2300b.get(size);
            if (fullSpanItem.f2301b == i) {
                return fullSpanItem;
            }
        }
        return null;
    }

    /* renamed from: g */
    int m12492g(int i) {
        int[] iArr = this.f2299a;
        if (iArr == null || i >= iArr.length) {
            return -1;
        }
        return iArr[i];
    }

    /* renamed from: h */
    int m12491h(int i) {
        int[] iArr = this.f2299a;
        if (iArr == null || i >= iArr.length) {
            return -1;
        }
        int i2 = m12490i(i);
        if (i2 == -1) {
            int[] iArr2 = this.f2299a;
            Arrays.fill(iArr2, i, iArr2.length, -1);
            return this.f2299a.length;
        }
        int min = Math.min(i2 + 1, this.f2299a.length);
        Arrays.fill(this.f2299a, i, min, -1);
        return min;
    }

    /* renamed from: j */
    void m12489j(int i, int i2) {
        int[] iArr = this.f2299a;
        if (iArr != null && i < iArr.length) {
            int i3 = i + i2;
            m12496c(i3);
            int[] iArr2 = this.f2299a;
            System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
            Arrays.fill(this.f2299a, i, i3, -1);
            m12487l(i, i2);
        }
    }

    /* renamed from: k */
    void m12488k(int i, int i2) {
        int[] iArr = this.f2299a;
        if (iArr != null && i < iArr.length) {
            int i3 = i + i2;
            m12496c(i3);
            int[] iArr2 = this.f2299a;
            System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
            int[] iArr3 = this.f2299a;
            Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
            m12486m(i, i2);
        }
    }

    /* renamed from: n */
    void m12485n(int i, StaggeredGridLayoutManager$c staggeredGridLayoutManager$c) {
        m12496c(i);
        this.f2299a[i] = staggeredGridLayoutManager$c.f2327e;
    }

    /* renamed from: o */
    int m12484o(int i) {
        int length = this.f2299a.length;
        while (length <= i) {
            length *= 2;
        }
        return length;
    }
}
