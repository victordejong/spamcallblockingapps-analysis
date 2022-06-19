package androidx.appcompat.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$SavedState.class */
public class AppCompatSpinner$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<AppCompatSpinner$SavedState> CREATOR = new C0083a();

    /* renamed from: a */
    public boolean f538a;

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$SavedState$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$SavedState$a.class */
    public class C0083a implements Parcelable.Creator<AppCompatSpinner$SavedState> {
        /* renamed from: a */
        public AppCompatSpinner$SavedState createFromParcel(Parcel parcel) {
            return new AppCompatSpinner$SavedState(parcel);
        }

        /* renamed from: b */
        public AppCompatSpinner$SavedState[] newArray(int i) {
            return new AppCompatSpinner$SavedState[i];
        }
    }

    public AppCompatSpinner$SavedState(Parcel parcel) {
        super(parcel);
        this.f538a = parcel.readByte() != 0;
    }

    public AppCompatSpinner$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeByte(this.f538a ? (byte) 1 : (byte) 0);
    }
}
