package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$SavedState.class */
public class LinearLayoutManager$SavedState implements Parcelable {
    public static final Parcelable.Creator<LinearLayoutManager$SavedState> CREATOR = new C0410a();

    /* renamed from: b */
    int f2157b;

    /* renamed from: c */
    int f2158c;

    /* renamed from: d */
    boolean f2159d;

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$SavedState$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$SavedState$a.class */
    class C0410a implements Parcelable.Creator<LinearLayoutManager$SavedState> {
        C0410a() {
        }

        /* renamed from: a */
        public LinearLayoutManager$SavedState createFromParcel(Parcel parcel) {
            return new LinearLayoutManager$SavedState(parcel);
        }

        /* renamed from: b */
        public LinearLayoutManager$SavedState[] newArray(int i) {
            return new LinearLayoutManager$SavedState[i];
        }
    }

    public LinearLayoutManager$SavedState() {
    }

    LinearLayoutManager$SavedState(Parcel parcel) {
        this.f2157b = parcel.readInt();
        this.f2158c = parcel.readInt();
        this.f2159d = parcel.readInt() != 1 ? false : true;
    }

    public LinearLayoutManager$SavedState(LinearLayoutManager$SavedState linearLayoutManager$SavedState) {
        this.f2157b = linearLayoutManager$SavedState.f2157b;
        this.f2158c = linearLayoutManager$SavedState.f2158c;
        this.f2159d = linearLayoutManager$SavedState.f2159d;
    }

    /* renamed from: a */
    boolean m12857a() {
        return this.f2157b >= 0;
    }

    /* renamed from: b */
    void m12856b() {
        this.f2157b = -1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f2157b);
        parcel.writeInt(this.f2158c);
        parcel.writeInt(this.f2159d ? 1 : 0);
    }
}
