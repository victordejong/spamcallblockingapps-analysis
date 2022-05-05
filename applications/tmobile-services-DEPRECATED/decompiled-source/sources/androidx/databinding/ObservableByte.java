package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ObservableByte.class */
public class ObservableByte extends BaseObservableField implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableByte> CREATOR = new Parcelable.Creator<ObservableByte>() { // from class: androidx.databinding.ObservableByte.1
        /* renamed from: a */
        public ObservableByte createFromParcel(Parcel parcel) {
            return new ObservableByte(parcel.readByte());
        }

        /* renamed from: b */
        public ObservableByte[] newArray(int i) {
            return new ObservableByte[i];
        }
    };
    static final long serialVersionUID = 1;

    /* renamed from: g */
    private byte f3531g;

    public ObservableByte() {
    }

    public ObservableByte(byte b) {
        this.f3531g = b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.f3531g);
    }
}
