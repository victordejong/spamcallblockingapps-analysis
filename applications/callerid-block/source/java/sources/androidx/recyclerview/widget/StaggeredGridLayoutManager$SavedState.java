package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup;
import java.util.List;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState.class */
public class StaggeredGridLayoutManager$SavedState implements Parcelable {
    public static final Parcelable.Creator<StaggeredGridLayoutManager$SavedState> CREATOR = new C0420a();

    /* renamed from: b */
    int f2305b;

    /* renamed from: c */
    int f2306c;

    /* renamed from: d */
    int f2307d;

    /* renamed from: e */
    int[] f2308e;

    /* renamed from: f */
    int f2309f;

    /* renamed from: g */
    int[] f2310g;

    /* renamed from: h */
    List<StaggeredGridLayoutManager$LazySpanLookup.FullSpanItem> f2311h;

    /* renamed from: i */
    boolean f2312i;

    /* renamed from: j */
    boolean f2313j;

    /* renamed from: k */
    boolean f2314k;

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState$a.class */
    class C0420a implements Parcelable.Creator<StaggeredGridLayoutManager$SavedState> {
        C0420a() {
        }

        /* renamed from: a */
        public StaggeredGridLayoutManager$SavedState createFromParcel(Parcel parcel) {
            return new StaggeredGridLayoutManager$SavedState(parcel);
        }

        /* renamed from: b */
        public StaggeredGridLayoutManager$SavedState[] newArray(int i) {
            return new StaggeredGridLayoutManager$SavedState[i];
        }
    }

    public StaggeredGridLayoutManager$SavedState() {
    }

    StaggeredGridLayoutManager$SavedState(Parcel parcel) {
        this.f2305b = parcel.readInt();
        this.f2306c = parcel.readInt();
        int readInt = parcel.readInt();
        this.f2307d = readInt;
        if (readInt > 0) {
            int[] iArr = new int[readInt];
            this.f2308e = iArr;
            parcel.readIntArray(iArr);
        }
        int readInt2 = parcel.readInt();
        this.f2309f = readInt2;
        if (readInt2 > 0) {
            int[] iArr2 = new int[readInt2];
            this.f2310g = iArr2;
            parcel.readIntArray(iArr2);
        }
        this.f2312i = parcel.readInt() == 1;
        this.f2313j = parcel.readInt() == 1;
        this.f2314k = parcel.readInt() == 1;
        this.f2311h = parcel.readArrayList(StaggeredGridLayoutManager$LazySpanLookup.FullSpanItem.class.getClassLoader());
    }

    public StaggeredGridLayoutManager$SavedState(StaggeredGridLayoutManager$SavedState staggeredGridLayoutManager$SavedState) {
        this.f2307d = staggeredGridLayoutManager$SavedState.f2307d;
        this.f2305b = staggeredGridLayoutManager$SavedState.f2305b;
        this.f2306c = staggeredGridLayoutManager$SavedState.f2306c;
        this.f2308e = staggeredGridLayoutManager$SavedState.f2308e;
        this.f2309f = staggeredGridLayoutManager$SavedState.f2309f;
        this.f2310g = staggeredGridLayoutManager$SavedState.f2310g;
        this.f2312i = staggeredGridLayoutManager$SavedState.f2312i;
        this.f2313j = staggeredGridLayoutManager$SavedState.f2313j;
        this.f2314k = staggeredGridLayoutManager$SavedState.f2314k;
        this.f2311h = staggeredGridLayoutManager$SavedState.f2311h;
    }

    /* renamed from: a */
    void m12482a() {
        this.f2308e = null;
        this.f2307d = 0;
        this.f2305b = -1;
        this.f2306c = -1;
    }

    /* renamed from: b */
    void m12481b() {
        this.f2308e = null;
        this.f2307d = 0;
        this.f2309f = 0;
        this.f2310g = null;
        this.f2311h = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f2305b);
        parcel.writeInt(this.f2306c);
        parcel.writeInt(this.f2307d);
        if (this.f2307d > 0) {
            parcel.writeIntArray(this.f2308e);
        }
        parcel.writeInt(this.f2309f);
        if (this.f2309f > 0) {
            parcel.writeIntArray(this.f2310g);
        }
        parcel.writeInt(this.f2312i ? 1 : 0);
        parcel.writeInt(this.f2313j ? 1 : 0);
        parcel.writeInt(this.f2314k ? 1 : 0);
        parcel.writeList(this.f2311h);
    }
}
