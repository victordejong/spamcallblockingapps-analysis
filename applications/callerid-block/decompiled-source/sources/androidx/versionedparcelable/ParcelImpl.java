package androidx.versionedparcelable;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/ParcelImpl.class */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new C0519a();

    /* renamed from: b */
    private final AbstractC0521c f2784b;

    /* renamed from: androidx.versionedparcelable.ParcelImpl$a */
    /* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/ParcelImpl$a.class */
    static final class C0519a implements Parcelable.Creator<ParcelImpl> {
        C0519a() {
        }

        /* renamed from: a */
        public ParcelImpl createFromParcel(Parcel parcel) {
            return new ParcelImpl(parcel);
        }

        /* renamed from: b */
        public ParcelImpl[] newArray(int i) {
            return new ParcelImpl[i];
        }
    }

    protected ParcelImpl(Parcel parcel) {
        this.f2784b = new b(parcel).m11938u();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        new b(parcel).m11961L(this.f2784b);
    }
}
