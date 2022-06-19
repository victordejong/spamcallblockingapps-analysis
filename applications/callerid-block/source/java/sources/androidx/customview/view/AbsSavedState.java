package androidx.customview.view;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/customview/view/AbsSavedState.class */
public abstract class AbsSavedState implements Parcelable {

    /* renamed from: b */
    private final Parcelable f1753b;

    /* renamed from: c */
    public static final AbsSavedState f1752c = new 1();
    public static final Parcelable.Creator<AbsSavedState> CREATOR = new C0304a();

    /* renamed from: androidx.customview.view.AbsSavedState$a */
    /* loaded from: classes-dex2jar.jar:androidx/customview/view/AbsSavedState$a.class */
    static final class C0304a implements Parcelable.ClassLoaderCreator<AbsSavedState> {
        C0304a() {
        }

        /* renamed from: a */
        public AbsSavedState createFromParcel(Parcel parcel) {
            return createFromParcel(parcel, null);
        }

        /* renamed from: b */
        public AbsSavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) == null) {
                return AbsSavedState.f1752c;
            }
            throw new IllegalStateException("superState must be null");
        }

        /* renamed from: c */
        public AbsSavedState[] newArray(int i) {
            return new AbsSavedState[i];
        }
    }

    private AbsSavedState() {
        this.f1753b = null;
    }

    protected AbsSavedState(Parcel parcel, ClassLoader classLoader) {
        AbsSavedState readParcelable = parcel.readParcelable(classLoader);
        this.f1753b = readParcelable == null ? f1752c : readParcelable;
    }

    protected AbsSavedState(Parcelable parcelable) {
        if (parcelable != null) {
            this.f1753b = parcelable == f1752c ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    /* renamed from: a */
    public final Parcelable m13379a() {
        return this.f1753b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f1753b, i);
    }
}
