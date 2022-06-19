package androidx.versionedparcelable;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/ParcelImpl.class */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new C1177a();

    /* renamed from: d */
    private final AbstractC1179b f5002d;

    /* renamed from: androidx.versionedparcelable.ParcelImpl$a */
    /* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/ParcelImpl$a.class */
    static final class C1177a implements Parcelable.Creator<ParcelImpl> {
        C1177a() {
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
        this.f5002d = new C1178a(parcel).m30791u();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        new C1178a(parcel).m30805L(this.f5002d);
    }
}
