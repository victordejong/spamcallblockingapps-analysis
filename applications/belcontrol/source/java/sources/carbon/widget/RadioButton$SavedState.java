package carbon.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
/* loaded from: classes-dex2jar.jar:carbon/widget/RadioButton$SavedState.class */
public class RadioButton$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<RadioButton$SavedState> CREATOR = new C0306a();

    /* renamed from: a */
    public boolean f2311a;

    /* renamed from: carbon.widget.RadioButton$SavedState$a */
    /* loaded from: classes-dex2jar.jar:carbon/widget/RadioButton$SavedState$a.class */
    public static final class C0306a implements Parcelable.Creator<RadioButton$SavedState> {
        /* renamed from: a */
        public RadioButton$SavedState createFromParcel(Parcel parcel) {
            return new RadioButton$SavedState(parcel);
        }

        /* renamed from: b */
        public RadioButton$SavedState[] newArray(int i) {
            return new RadioButton$SavedState[i];
        }
    }

    public RadioButton$SavedState(Parcel parcel) {
        super(parcel);
        this.f2311a = ((Boolean) parcel.readValue(RadioButton$SavedState.class.getClassLoader())).booleanValue();
    }

    public RadioButton$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    public String toString() {
        return "RadioButton.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " checked=" + this.f2311a + "}";
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeValue(Boolean.valueOf(this.f2311a));
    }
}
