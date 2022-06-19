package com.callerid.block.customview;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/callerid/block/customview/CirclePageIndicator$SavedState.class */
public class CirclePageIndicator$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<CirclePageIndicator$SavedState> CREATOR = new C0923a();

    /* renamed from: b */
    int f4126b;

    /* renamed from: com.callerid.block.customview.CirclePageIndicator$SavedState$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/customview/CirclePageIndicator$SavedState$a.class */
    static final class C0923a implements Parcelable.Creator<CirclePageIndicator$SavedState> {
        C0923a() {
        }

        /* renamed from: a */
        public CirclePageIndicator$SavedState createFromParcel(Parcel parcel) {
            return new CirclePageIndicator$SavedState(parcel);
        }

        /* renamed from: b */
        public CirclePageIndicator$SavedState[] newArray(int i) {
            return new CirclePageIndicator$SavedState[i];
        }
    }

    private CirclePageIndicator$SavedState(Parcel parcel) {
        super(parcel);
        this.f4126b = parcel.readInt();
    }

    public CirclePageIndicator$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f4126b);
    }
}
