package carbon.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import qb0;
/* loaded from: classes-dex2jar.jar:carbon/widget/CheckBox$SavedState.class */
public class CheckBox$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<CheckBox$SavedState> CREATOR = new C0302a();

    /* renamed from: a */
    public qb0.c f2252a;

    /* renamed from: carbon.widget.CheckBox$SavedState$a */
    /* loaded from: classes-dex2jar.jar:carbon/widget/CheckBox$SavedState$a.class */
    public static final class C0302a implements Parcelable.Creator<CheckBox$SavedState> {
        /* renamed from: a */
        public CheckBox$SavedState createFromParcel(Parcel parcel) {
            return new CheckBox$SavedState(parcel);
        }

        /* renamed from: b */
        public CheckBox$SavedState[] newArray(int i) {
            return new CheckBox$SavedState[i];
        }
    }

    public CheckBox$SavedState(Parcel parcel) {
        super(parcel);
        this.f2252a = qb0.c.values()[parcel.readInt()];
    }

    public CheckBox$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    public String toString() {
        return "CheckBox.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " checked=" + this.f2252a + "}";
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f2252a.ordinal());
    }
}
