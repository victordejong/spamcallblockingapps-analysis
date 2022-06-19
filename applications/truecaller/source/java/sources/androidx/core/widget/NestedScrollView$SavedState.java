package androidx.core.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$SavedState.class */
public class NestedScrollView$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<NestedScrollView$SavedState> CREATOR = new C0129a();

    /* renamed from: a */
    public int f711a;

    /* renamed from: androidx.core.widget.NestedScrollView$SavedState$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$SavedState$a.class */
    public class C0129a implements Parcelable.Creator<NestedScrollView$SavedState> {
        @Override // android.os.Parcelable.Creator
        public NestedScrollView$SavedState createFromParcel(Parcel parcel) {
            return new NestedScrollView$SavedState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public NestedScrollView$SavedState[] newArray(int i) {
            return new NestedScrollView$SavedState[i];
        }
    }

    public NestedScrollView$SavedState(Parcel parcel) {
        super(parcel);
        this.f711a = parcel.readInt();
    }

    public NestedScrollView$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("HorizontalScrollView.SavedState{");
        m8728C.append(Integer.toHexString(System.identityHashCode(this)));
        m8728C.append(" scrollPosition=");
        return C22128a.m8697J2(m8728C, this.f711a, "}");
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f711a);
    }
}
