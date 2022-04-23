package androidx.core.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$SavedState.class */
public class NestedScrollView$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<NestedScrollView$SavedState> CREATOR = new C0289a();

    /* renamed from: b */
    public int f1704b;

    /* renamed from: androidx.core.widget.NestedScrollView$SavedState$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$SavedState$a.class */
    class C0289a implements Parcelable.Creator<NestedScrollView$SavedState> {
        C0289a() {
        }

        /* renamed from: a */
        public NestedScrollView$SavedState createFromParcel(Parcel parcel) {
            return new NestedScrollView$SavedState(parcel);
        }

        /* renamed from: b */
        public NestedScrollView$SavedState[] newArray(int i) {
            return new NestedScrollView$SavedState[i];
        }
    }

    NestedScrollView$SavedState(Parcel parcel) {
        super(parcel);
        this.f1704b = parcel.readInt();
    }

    NestedScrollView$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    public String toString() {
        return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.f1704b + "}";
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f1704b);
    }
}
