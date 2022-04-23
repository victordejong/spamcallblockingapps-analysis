package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
/* JADX INFO: Access modifiers changed from: private */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$SavedState.class */
public class ActionMenuPresenter$SavedState implements Parcelable {
    public static final Parcelable.Creator<ActionMenuPresenter$SavedState> CREATOR = new C0102a();

    /* renamed from: b */
    public int f357b;

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$SavedState$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$SavedState$a.class */
    class C0102a implements Parcelable.Creator<ActionMenuPresenter$SavedState> {
        C0102a() {
        }

        /* renamed from: a */
        public ActionMenuPresenter$SavedState createFromParcel(Parcel parcel) {
            return new ActionMenuPresenter$SavedState(parcel);
        }

        /* renamed from: b */
        public ActionMenuPresenter$SavedState[] newArray(int i) {
            return new ActionMenuPresenter$SavedState[i];
        }
    }

    ActionMenuPresenter$SavedState() {
    }

    ActionMenuPresenter$SavedState(Parcel parcel) {
        this.f357b = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f357b);
    }
}
