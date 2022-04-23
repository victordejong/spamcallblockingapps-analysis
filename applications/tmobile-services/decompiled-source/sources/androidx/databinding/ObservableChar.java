package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ObservableChar.class */
public class ObservableChar extends BaseObservableField implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableChar> CREATOR = new Parcelable.Creator<ObservableChar>() { // from class: androidx.databinding.ObservableChar.1
        /* renamed from: a */
        public ObservableChar createFromParcel(Parcel parcel) {
            return new ObservableChar((char) parcel.readInt());
        }

        /* renamed from: b */
        public ObservableChar[] newArray(int i) {
            return new ObservableChar[i];
        }
    };
    static final long serialVersionUID = 1;

    /* renamed from: g */
    private char f3532g;

    public ObservableChar() {
    }

    public ObservableChar(char c) {
        this.f3532g = c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f3532g);
    }
}
