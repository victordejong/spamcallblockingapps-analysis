package androidx.versionedparcelable;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import p175n1.AbstractC3712b;
import p175n1.C3711a;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/ParcelImpl.class */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new C0670a();

    /* renamed from: a */
    public final AbstractC3712b f2610a;

    /* renamed from: androidx.versionedparcelable.ParcelImpl$a */
    /* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/ParcelImpl$a.class */
    public static final class C0670a implements Parcelable.Creator<ParcelImpl> {
        @Override // android.os.Parcelable.Creator
        public ParcelImpl createFromParcel(Parcel parcel) {
            return new ParcelImpl(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ParcelImpl[] newArray(int i) {
            return new ParcelImpl[i];
        }
    }

    public ParcelImpl(Parcel parcel) {
        this.f2610a = new C3711a(parcel).m7491o();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        new C3711a(parcel).m7490w(this.f2610a);
    }
}
