package com.hannesdorfmann.mosby3;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.p003os.ParcelableCompat;
import android.support.p001v4.p003os.ParcelableCompatCreatorCallbacks;
import android.support.p001v4.view.AbsSavedState;
/* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/MosbySavedState.class */
public class MosbySavedState extends AbsSavedState {
    public static final Parcelable.Creator<MosbySavedState> CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks<MosbySavedState>() { // from class: com.hannesdorfmann.mosby3.MosbySavedState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.support.p001v4.p003os.ParcelableCompatCreatorCallbacks
        public MosbySavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            ClassLoader classLoader2 = classLoader;
            if (classLoader == null) {
                classLoader2 = MosbySavedState.class.getClassLoader();
            }
            return new MosbySavedState(parcel, classLoader2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.support.p001v4.p003os.ParcelableCompatCreatorCallbacks
        public MosbySavedState[] newArray(int i) {
            return new MosbySavedState[i];
        }
    });
    private String mosbyViewId;

    protected MosbySavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.mosbyViewId = parcel.readString();
    }

    public MosbySavedState(Parcelable parcelable, String str) {
        super(parcelable);
        this.mosbyViewId = str;
    }

    public String getMosbyViewId() {
        return this.mosbyViewId;
    }

    @Override // android.support.p001v4.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.mosbyViewId);
    }
}
