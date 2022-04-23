package android.support.p009v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: android.support.v4.media.session.ParcelableVolumeInfo */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/ParcelableVolumeInfo.class */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new C0057a();

    /* renamed from: a */
    public int f104a;

    /* renamed from: b */
    public int f105b;

    /* renamed from: c */
    public int f106c;

    /* renamed from: d */
    public int f107d;

    /* renamed from: e */
    public int f108e;

    /* renamed from: android.support.v4.media.session.ParcelableVolumeInfo$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/ParcelableVolumeInfo$a.class */
    public static final class C0057a implements Parcelable.Creator<ParcelableVolumeInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableVolumeInfo createFromParcel(Parcel parcel) {
            return new ParcelableVolumeInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableVolumeInfo[] newArray(int i) {
            return new ParcelableVolumeInfo[i];
        }
    }

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f104a = parcel.readInt();
        this.f106c = parcel.readInt();
        this.f107d = parcel.readInt();
        this.f108e = parcel.readInt();
        this.f105b = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f104a);
        parcel.writeInt(this.f106c);
        parcel.writeInt(this.f107d);
        parcel.writeInt(this.f108e);
        parcel.writeInt(this.f105b);
    }
}
