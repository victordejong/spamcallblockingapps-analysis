package android.support.p012v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: android.support.v4.media.session.ParcelableVolumeInfo */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/ParcelableVolumeInfo.class */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new C0087a();

    /* renamed from: a */
    public int f185a;

    /* renamed from: b */
    public int f186b;

    /* renamed from: c */
    public int f187c;

    /* renamed from: d */
    public int f188d;

    /* renamed from: e */
    public int f189e;

    /* renamed from: android.support.v4.media.session.ParcelableVolumeInfo$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/ParcelableVolumeInfo$a.class */
    public static final class C0087a implements Parcelable.Creator<ParcelableVolumeInfo> {
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
        this.f185a = parcel.readInt();
        this.f187c = parcel.readInt();
        this.f188d = parcel.readInt();
        this.f189e = parcel.readInt();
        this.f186b = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f185a);
        parcel.writeInt(this.f187c);
        parcel.writeInt(this.f188d);
        parcel.writeInt(this.f189e);
        parcel.writeInt(this.f186b);
    }
}
