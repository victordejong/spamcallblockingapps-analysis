package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import p1727n3.p1803i0.AbstractC26407e;
import p1727n3.p1803i0.C26406d;
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/ParcelImpl.class */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new C0381a();

    /* renamed from: a */
    public final AbstractC26407e f1434a;

    /* renamed from: androidx.versionedparcelable.ParcelImpl$a */
    /* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/ParcelImpl$a.class */
    public static final class C0381a implements Parcelable.Creator<ParcelImpl> {
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
        this.f1434a = new C26406d(parcel).m1923z();
    }

    public ParcelImpl(AbstractC26407e abstractC26407e) {
        this.f1434a = abstractC26407e;
    }

    /* renamed from: a */
    public <T extends AbstractC26407e> T mo42658a() {
        return (T) this.f1434a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        new C26406d(parcel).m1936N(this.f1434a);
    }
}
