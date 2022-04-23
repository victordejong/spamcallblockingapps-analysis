package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/ParcelImpl.class */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new Parcelable.Creator<ParcelImpl>() { // from class: androidx.versionedparcelable.ParcelImpl.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ ParcelImpl createFromParcel(Parcel parcel) {
            return new ParcelImpl(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ ParcelImpl[] newArray(int i) {
            return new ParcelImpl[i];
        }
    };
    private final c mParcel;

    protected ParcelImpl(Parcel parcel) {
        this.mParcel = new b(parcel).m();
    }

    public ParcelImpl(c cVar) {
        this.mParcel = cVar;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public <T extends c> T getVersionedParcel() {
        return (T) this.mParcel;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        new b(parcel).a(this.mParcel);
    }
}
