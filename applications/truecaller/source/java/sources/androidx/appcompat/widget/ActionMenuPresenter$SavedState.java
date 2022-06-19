package androidx.appcompat.widget;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$SavedState.class */
public class ActionMenuPresenter$SavedState implements Parcelable {
    public static final Parcelable.Creator<ActionMenuPresenter$SavedState> CREATOR = new C0044a();

    /* renamed from: a */
    public int f224a;

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$SavedState$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$SavedState$a.class */
    public class C0044a implements Parcelable.Creator<ActionMenuPresenter$SavedState> {
        @Override // android.os.Parcelable.Creator
        public ActionMenuPresenter$SavedState createFromParcel(Parcel parcel) {
            return new ActionMenuPresenter$SavedState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ActionMenuPresenter$SavedState[] newArray(int i) {
            return new ActionMenuPresenter$SavedState[i];
        }
    }

    public ActionMenuPresenter$SavedState() {
    }

    public ActionMenuPresenter$SavedState(Parcel parcel) {
        this.f224a = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f224a);
    }
}
