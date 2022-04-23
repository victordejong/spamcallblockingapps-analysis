package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import p012b.p130z.AbstractC1978c;
import p012b.p130z.C1977b;
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/ParcelImpl.class */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new C0551a();

    /* renamed from: a */
    public final AbstractC1978c f2800a;

    /* renamed from: androidx.versionedparcelable.ParcelImpl$a */
    /* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/ParcelImpl$a.class */
    public static final class C0551a implements Parcelable.Creator<ParcelImpl> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelImpl createFromParcel(Parcel parcel) {
            return new ParcelImpl(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelImpl[] newArray(int i) {
            return new ParcelImpl[i];
        }
    }

    public ParcelImpl(Parcel parcel) {
        this.f2800a = new C1977b(parcel).m36960o();
    }

    public ParcelImpl(AbstractC1978c cVar) {
        this.f2800a = cVar;
    }

    /* renamed from: a */
    public <T extends AbstractC1978c> T mo37002a() {
        return (T) this.f2800a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        new C1977b(parcel).m36995a(this.f2800a);
    }
}
