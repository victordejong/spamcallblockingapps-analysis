package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ObservableBoolean.class */
public class ObservableBoolean extends BaseObservableField implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableBoolean> CREATOR = new Parcelable.Creator<ObservableBoolean>() { // from class: androidx.databinding.ObservableBoolean.1
        /* renamed from: a */
        public ObservableBoolean createFromParcel(Parcel parcel) {
            boolean z = true;
            if (parcel.readInt() != 1) {
                z = false;
            }
            return new ObservableBoolean(z);
        }

        /* renamed from: b */
        public ObservableBoolean[] newArray(int i) {
            return new ObservableBoolean[i];
        }
    };
    static final long serialVersionUID = 1;

    /* renamed from: g */
    private boolean f3530g;

    public ObservableBoolean() {
    }

    public ObservableBoolean(boolean z) {
        this.f3530g = z;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f3530g ? 1 : 0);
    }
}
