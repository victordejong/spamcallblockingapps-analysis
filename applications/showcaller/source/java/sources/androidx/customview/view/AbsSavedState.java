package androidx.customview.view;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/customview/view/AbsSavedState.class */
public abstract class AbsSavedState implements Parcelable {

    /* renamed from: e */
    private final Parcelable f3116e;

    /* renamed from: d */
    public static final AbsSavedState f3115d = new AbsSavedState() { // from class: androidx.customview.view.AbsSavedState.1
    };
    public static final Parcelable.Creator<AbsSavedState> CREATOR = new C0658a();

    /* renamed from: androidx.customview.view.AbsSavedState$a */
    /* loaded from: classes-dex2jar.jar:androidx/customview/view/AbsSavedState$a.class */
    static final class C0658a implements Parcelable.ClassLoaderCreator<AbsSavedState> {
        C0658a() {
        }

        /* renamed from: a */
        public AbsSavedState createFromParcel(Parcel parcel) {
            return createFromParcel(parcel, null);
        }

        /* renamed from: b */
        public AbsSavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) == null) {
                return AbsSavedState.f3115d;
            }
            throw new IllegalStateException("superState must be null");
        }

        /* renamed from: c */
        public AbsSavedState[] newArray(int i) {
            return new AbsSavedState[i];
        }
    }

    private AbsSavedState() {
        this.f3116e = null;
    }

    public AbsSavedState(Parcel parcel, ClassLoader classLoader) {
        AbsSavedState readParcelable = parcel.readParcelable(classLoader);
        this.f3116e = readParcelable == null ? f3115d : readParcelable;
    }

    public AbsSavedState(Parcelable parcelable) {
        if (parcelable != null) {
            this.f3116e = parcelable == f3115d ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    /* renamed from: a */
    public final Parcelable m33061a() {
        return this.f3116e;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f3116e, i);
    }
}
