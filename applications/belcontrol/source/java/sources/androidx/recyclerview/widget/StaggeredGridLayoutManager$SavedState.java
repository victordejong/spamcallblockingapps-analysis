package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup;
import java.util.List;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState.class */
public class StaggeredGridLayoutManager$SavedState implements Parcelable {
    public static final Parcelable.Creator<StaggeredGridLayoutManager$SavedState> CREATOR = new C0188a();

    /* renamed from: a */
    public int f1406a;

    /* renamed from: b */
    public int f1407b;

    /* renamed from: c */
    public int f1408c;

    /* renamed from: d */
    public int[] f1409d;

    /* renamed from: f */
    public int f1410f;

    /* renamed from: g */
    public int[] f1411g;

    /* renamed from: h */
    public List<StaggeredGridLayoutManager$LazySpanLookup.FullSpanItem> f1412h;

    /* renamed from: j */
    public boolean f1413j;

    /* renamed from: k */
    public boolean f1414k;

    /* renamed from: l */
    public boolean f1415l;

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState$a.class */
    public static final class C0188a implements Parcelable.Creator<StaggeredGridLayoutManager$SavedState> {
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

    public StaggeredGridLayoutManager$SavedState(Parcel parcel) {
        this.f1406a = parcel.readInt();
        this.f1407b = parcel.readInt();
        int readInt = parcel.readInt();
        this.f1408c = readInt;
        if (readInt > 0) {
            int[] iArr = new int[readInt];
            this.f1409d = iArr;
            parcel.readIntArray(iArr);
        }
        int readInt2 = parcel.readInt();
        this.f1410f = readInt2;
        if (readInt2 > 0) {
            int[] iArr2 = new int[readInt2];
            this.f1411g = iArr2;
            parcel.readIntArray(iArr2);
        }
        this.f1413j = parcel.readInt() == 1;
        this.f1414k = parcel.readInt() == 1;
        this.f1415l = parcel.readInt() == 1;
        this.f1412h = parcel.readArrayList(StaggeredGridLayoutManager$LazySpanLookup.FullSpanItem.class.getClassLoader());
    }

    public StaggeredGridLayoutManager$SavedState(StaggeredGridLayoutManager$SavedState staggeredGridLayoutManager$SavedState) {
        this.f1408c = staggeredGridLayoutManager$SavedState.f1408c;
        this.f1406a = staggeredGridLayoutManager$SavedState.f1406a;
        this.f1407b = staggeredGridLayoutManager$SavedState.f1407b;
        this.f1409d = staggeredGridLayoutManager$SavedState.f1409d;
        this.f1410f = staggeredGridLayoutManager$SavedState.f1410f;
        this.f1411g = staggeredGridLayoutManager$SavedState.f1411g;
        this.f1413j = staggeredGridLayoutManager$SavedState.f1413j;
        this.f1414k = staggeredGridLayoutManager$SavedState.f1414k;
        this.f1415l = staggeredGridLayoutManager$SavedState.f1415l;
        this.f1412h = staggeredGridLayoutManager$SavedState.f1412h;
    }

    /* renamed from: a */
    public void m6091a() {
        this.f1409d = null;
        this.f1408c = 0;
        this.f1406a = -1;
        this.f1407b = -1;
    }

    /* renamed from: b */
    public void m6090b() {
        this.f1409d = null;
        this.f1408c = 0;
        this.f1410f = 0;
        this.f1411g = null;
        this.f1412h = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1406a);
        parcel.writeInt(this.f1407b);
        parcel.writeInt(this.f1408c);
        if (this.f1408c > 0) {
            parcel.writeIntArray(this.f1409d);
        }
        parcel.writeInt(this.f1410f);
        if (this.f1410f > 0) {
            parcel.writeIntArray(this.f1411g);
        }
        parcel.writeInt(this.f1413j ? 1 : 0);
        parcel.writeInt(this.f1414k ? 1 : 0);
        parcel.writeInt(this.f1415l ? 1 : 0);
        parcel.writeList(this.f1412h);
    }
}
