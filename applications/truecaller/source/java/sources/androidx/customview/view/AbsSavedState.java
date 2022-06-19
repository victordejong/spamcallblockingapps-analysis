package androidx.customview.view;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/customview/view/AbsSavedState.class */
public abstract class AbsSavedState implements Parcelable {

    /* renamed from: a */
    public final Parcelable f713a;

    /* renamed from: b */
    public static final AbsSavedState f712b = new AbsSavedState() { // from class: androidx.customview.view.AbsSavedState.1
    };
    public static final Parcelable.Creator<AbsSavedState> CREATOR = new C0135a();

    /* renamed from: androidx.customview.view.AbsSavedState$a */
    /* loaded from: classes-dex2jar.jar:androidx/customview/view/AbsSavedState$a.class */
    public static final class C0135a implements Parcelable.ClassLoaderCreator<AbsSavedState> {
        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            if (parcel.readParcelable(null) == null) {
                return AbsSavedState.f712b;
            }
            throw new IllegalStateException("superState must be null");
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        public AbsSavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) == null) {
                return AbsSavedState.f712b;
            }
            throw new IllegalStateException("superState must be null");
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new AbsSavedState[i];
        }
    }

    public AbsSavedState(Parcel parcel, ClassLoader classLoader) {
        AbsSavedState readParcelable = parcel.readParcelable(classLoader);
        this.f713a = readParcelable == null ? f712b : readParcelable;
    }

    public AbsSavedState(Parcelable parcelable) {
        if (parcelable != null) {
            this.f713a = parcelable == f712b ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    public AbsSavedState(C01341 c01341) {
        this.f713a = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f713a, i);
    }
}
