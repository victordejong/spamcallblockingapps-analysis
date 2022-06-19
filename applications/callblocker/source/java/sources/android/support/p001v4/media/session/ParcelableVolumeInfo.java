package android.support.p001v4.media.session;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: android.support.v4.media.session.ParcelableVolumeInfo */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/ParcelableVolumeInfo.class */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new Parcelable.Creator<ParcelableVolumeInfo>() { // from class: android.support.v4.media.session.ParcelableVolumeInfo.1
        /* renamed from: a */
        public ParcelableVolumeInfo createFromParcel(Parcel parcel) {
            return new ParcelableVolumeInfo(parcel);
        }

        /* renamed from: a */
        public ParcelableVolumeInfo[] newArray(int i) {
            return new ParcelableVolumeInfo[i];
        }
    };

    /* renamed from: a */
    public int f128a;

    /* renamed from: b */
    public int f129b;

    /* renamed from: c */
    public int f130c;

    /* renamed from: d */
    public int f131d;

    /* renamed from: e */
    public int f132e;

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f128a = parcel.readInt();
        this.f130c = parcel.readInt();
        this.f131d = parcel.readInt();
        this.f132e = parcel.readInt();
        this.f129b = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f128a);
        parcel.writeInt(this.f130c);
        parcel.writeInt(this.f131d);
        parcel.writeInt(this.f132e);
        parcel.writeInt(this.f129b);
    }
}
