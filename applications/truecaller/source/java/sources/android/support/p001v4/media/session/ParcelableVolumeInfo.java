package android.support.p001v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: android.support.v4.media.session.ParcelableVolumeInfo */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/ParcelableVolumeInfo.class */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new C0012a();

    /* renamed from: a */
    public int f39a;

    /* renamed from: b */
    public int f40b;

    /* renamed from: c */
    public int f41c;

    /* renamed from: d */
    public int f42d;

    /* renamed from: e */
    public int f43e;

    /* renamed from: android.support.v4.media.session.ParcelableVolumeInfo$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/ParcelableVolumeInfo$a.class */
    public class C0012a implements Parcelable.Creator<ParcelableVolumeInfo> {
        @Override // android.os.Parcelable.Creator
        public ParcelableVolumeInfo createFromParcel(Parcel parcel) {
            return new ParcelableVolumeInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ParcelableVolumeInfo[] newArray(int i) {
            return new ParcelableVolumeInfo[i];
        }
    }

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f39a = parcel.readInt();
        this.f41c = parcel.readInt();
        this.f42d = parcel.readInt();
        this.f43e = parcel.readInt();
        this.f40b = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f39a);
        parcel.writeInt(this.f41c);
        parcel.writeInt(this.f42d);
        parcel.writeInt(this.f43e);
        parcel.writeInt(this.f40b);
    }
}
