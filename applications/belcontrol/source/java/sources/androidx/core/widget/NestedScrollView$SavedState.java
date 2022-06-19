package androidx.core.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$SavedState.class */
public class NestedScrollView$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<NestedScrollView$SavedState> CREATOR = new C0105a();

    /* renamed from: a */
    public int f805a;

    /* renamed from: androidx.core.widget.NestedScrollView$SavedState$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$SavedState$a.class */
    public class C0105a implements Parcelable.Creator<NestedScrollView$SavedState> {
        /* renamed from: a */
        public NestedScrollView$SavedState createFromParcel(Parcel parcel) {
            return new NestedScrollView$SavedState(parcel);
        }

        /* renamed from: b */
        public NestedScrollView$SavedState[] newArray(int i) {
            return new NestedScrollView$SavedState[i];
        }
    }

    public NestedScrollView$SavedState(Parcel parcel) {
        super(parcel);
        this.f805a = parcel.readInt();
    }

    public NestedScrollView$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    public String toString() {
        return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.f805a + "}";
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f805a);
    }
}
