package androidx.versionedparcelable;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/ParcelImpl.class */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new C0200a();

    /* renamed from: a */
    public final f40 f1539a;

    /* renamed from: androidx.versionedparcelable.ParcelImpl$a */
    /* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/ParcelImpl$a.class */
    public static final class C0200a implements Parcelable.Creator<ParcelImpl> {
        /* renamed from: a */
        public ParcelImpl createFromParcel(Parcel parcel) {
            return new ParcelImpl(parcel);
        }

        /* renamed from: b */
        public ParcelImpl[] newArray(int i) {
            return new ParcelImpl[i];
        }
    }

    public ParcelImpl(Parcel parcel) {
        this.f1539a = new e40(parcel).m2882H();
    }

    public ParcelImpl(f40 f40Var) {
        this.f1539a = f40Var;
    }

    /* renamed from: a */
    public <T extends f40> T m5991a() {
        return (T) this.f1539a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        new e40(parcel).m2840l0(this.f1539a);
    }
}
