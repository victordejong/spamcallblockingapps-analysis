package androidx.appcompat.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$SavedState.class */
public class AppCompatSpinner$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<AppCompatSpinner$SavedState> CREATOR = new C0109a();

    /* renamed from: b */
    boolean f395b;

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$SavedState$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$SavedState$a.class */
    class C0109a implements Parcelable.Creator<AppCompatSpinner$SavedState> {
        C0109a() {
        }

        /* renamed from: a */
        public AppCompatSpinner$SavedState createFromParcel(Parcel parcel) {
            return new AppCompatSpinner$SavedState(parcel);
        }

        /* renamed from: b */
        public AppCompatSpinner$SavedState[] newArray(int i) {
            return new AppCompatSpinner$SavedState[i];
        }
    }

    AppCompatSpinner$SavedState(Parcel parcel) {
        super(parcel);
        this.f395b = parcel.readByte() != 0;
    }

    AppCompatSpinner$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeByte(this.f395b ? (byte) 1 : (byte) 0);
    }
}
