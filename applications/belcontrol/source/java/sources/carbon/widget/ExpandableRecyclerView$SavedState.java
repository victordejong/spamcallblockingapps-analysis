package carbon.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
/* loaded from: classes-dex2jar.jar:carbon/widget/ExpandableRecyclerView$SavedState.class */
public class ExpandableRecyclerView$SavedState implements Parcelable {

    /* renamed from: a */
    public SparseBooleanArray f2272a;

    /* renamed from: b */
    public Parcelable f2273b;

    /* renamed from: c */
    public static final ExpandableRecyclerView$SavedState f2271c = new 1();
    public static final Parcelable.Creator<ExpandableRecyclerView$SavedState> CREATOR = new C0304a();

    /* renamed from: carbon.widget.ExpandableRecyclerView$SavedState$a */
    /* loaded from: classes-dex2jar.jar:carbon/widget/ExpandableRecyclerView$SavedState$a.class */
    public static final class C0304a implements Parcelable.Creator<ExpandableRecyclerView$SavedState> {
        /* renamed from: a */
        public ExpandableRecyclerView$SavedState createFromParcel(Parcel parcel) {
            return new ExpandableRecyclerView$SavedState(parcel);
        }

        /* renamed from: b */
        public ExpandableRecyclerView$SavedState[] newArray(int i) {
            return new ExpandableRecyclerView$SavedState[i];
        }
    }

    public ExpandableRecyclerView$SavedState() {
        this.f2273b = null;
    }

    public ExpandableRecyclerView$SavedState(Parcel parcel) {
        ExpandableRecyclerView$SavedState readParcelable = parcel.readParcelable(ExpandableRecyclerView.class.getClassLoader());
        this.f2273b = readParcelable == null ? f2271c : readParcelable;
        this.f2272a = parcel.readSparseBooleanArray();
    }

    public ExpandableRecyclerView$SavedState(Parcelable parcelable) {
        this.f2273b = parcelable == f2271c ? null : parcelable;
    }

    /* renamed from: a */
    public Parcelable m5372a() {
        return this.f2273b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f2273b, i);
        parcel.writeSparseBooleanArray(this.f2272a);
    }
}
