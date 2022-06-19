package androidx.swiperefreshlayout.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$SavedState.class */
public class SwipeRefreshLayout$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<SwipeRefreshLayout$SavedState> CREATOR = new C0370a();

    /* renamed from: a */
    public final boolean f1425a;

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$SavedState$a */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$SavedState$a.class */
    public class C0370a implements Parcelable.Creator<SwipeRefreshLayout$SavedState> {
        @Override // android.os.Parcelable.Creator
        public SwipeRefreshLayout$SavedState createFromParcel(Parcel parcel) {
            return new SwipeRefreshLayout$SavedState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public SwipeRefreshLayout$SavedState[] newArray(int i) {
            return new SwipeRefreshLayout$SavedState[i];
        }
    }

    public SwipeRefreshLayout$SavedState(Parcel parcel) {
        super(parcel);
        this.f1425a = parcel.readByte() != 0;
    }

    public SwipeRefreshLayout$SavedState(Parcelable parcelable, boolean z) {
        super(parcelable);
        this.f1425a = z;
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeByte(this.f1425a ? (byte) 1 : (byte) 0);
    }
}
