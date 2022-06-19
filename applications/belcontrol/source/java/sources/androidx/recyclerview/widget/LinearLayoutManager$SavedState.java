package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$SavedState.class */
public class LinearLayoutManager$SavedState implements Parcelable {
    public static final Parcelable.Creator<LinearLayoutManager$SavedState> CREATOR = new C0178a();

    /* renamed from: a */
    public int f1311a;

    /* renamed from: b */
    public int f1312b;

    /* renamed from: c */
    public boolean f1313c;

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$SavedState$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$SavedState$a.class */
    public static final class C0178a implements Parcelable.Creator<LinearLayoutManager$SavedState> {
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

    public LinearLayoutManager$SavedState(Parcel parcel) {
        this.f1311a = parcel.readInt();
        this.f1312b = parcel.readInt();
        this.f1313c = parcel.readInt() != 1 ? false : true;
    }

    public LinearLayoutManager$SavedState(LinearLayoutManager$SavedState linearLayoutManager$SavedState) {
        this.f1311a = linearLayoutManager$SavedState.f1311a;
        this.f1312b = linearLayoutManager$SavedState.f1312b;
        this.f1313c = linearLayoutManager$SavedState.f1313c;
    }

    /* renamed from: a */
    public boolean m6244a() {
        return this.f1311a >= 0;
    }

    /* renamed from: b */
    public void m6243b() {
        this.f1311a = -1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1311a);
        parcel.writeInt(this.f1312b);
        parcel.writeInt(this.f1313c ? 1 : 0);
    }
}
