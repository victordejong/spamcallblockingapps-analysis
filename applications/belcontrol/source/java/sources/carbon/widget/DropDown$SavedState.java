package carbon.widget;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:carbon/widget/DropDown$SavedState.class */
public class DropDown$SavedState implements Parcelable {

    /* renamed from: a */
    public int f2258a;

    /* renamed from: b */
    public Parcelable f2259b;

    /* renamed from: c */
    public static final DropDown$SavedState f2257c = new 1();
    public static final Parcelable.Creator<DropDown$SavedState> CREATOR = new C0303a();

    /* renamed from: carbon.widget.DropDown$SavedState$a */
    /* loaded from: classes-dex2jar.jar:carbon/widget/DropDown$SavedState$a.class */
    public static final class C0303a implements Parcelable.Creator<DropDown$SavedState> {
        /* renamed from: a */
        public DropDown$SavedState createFromParcel(Parcel parcel) {
            return new DropDown$SavedState(parcel, null);
        }

        /* renamed from: b */
        public DropDown$SavedState[] newArray(int i) {
            return new DropDown$SavedState[i];
        }
    }

    public DropDown$SavedState() {
        this.f2259b = null;
    }

    public DropDown$SavedState(Parcel parcel) {
        DropDown$SavedState readParcelable = parcel.readParcelable(EditText.class.getClassLoader());
        this.f2259b = readParcelable == null ? f2257c : readParcelable;
        this.f2258a = parcel.readInt();
    }

    public /* synthetic */ DropDown$SavedState(Parcel parcel, DropDown$a dropDown$a) {
        this(parcel);
    }

    public DropDown$SavedState(Parcelable parcelable) {
        this.f2259b = parcelable == f2257c ? null : parcelable;
    }

    /* renamed from: a */
    public Parcelable m5378a() {
        return this.f2259b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f2259b, i);
        parcel.writeInt(this.f2258a);
    }
}
