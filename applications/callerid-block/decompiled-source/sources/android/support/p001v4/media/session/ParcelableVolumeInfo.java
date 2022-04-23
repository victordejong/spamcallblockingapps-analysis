package android.support.p001v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: android.support.v4.media.session.ParcelableVolumeInfo */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/ParcelableVolumeInfo.class */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new C0050a();

    /* renamed from: b */
    public int f93b;

    /* renamed from: c */
    public int f94c;

    /* renamed from: d */
    public int f95d;

    /* renamed from: e */
    public int f96e;

    /* renamed from: f */
    public int f97f;

    /* renamed from: android.support.v4.media.session.ParcelableVolumeInfo$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/ParcelableVolumeInfo$a.class */
    static final class C0050a implements Parcelable.Creator<ParcelableVolumeInfo> {
        C0050a() {
        }

        /* renamed from: a */
        public ParcelableVolumeInfo createFromParcel(Parcel parcel) {
            return new ParcelableVolumeInfo(parcel);
        }

        /* renamed from: b */
        public ParcelableVolumeInfo[] newArray(int i) {
            return new ParcelableVolumeInfo[i];
        }
    }

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f93b = parcel.readInt();
        this.f95d = parcel.readInt();
        this.f96e = parcel.readInt();
        this.f97f = parcel.readInt();
        this.f94c = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f93b);
        parcel.writeInt(this.f95d);
        parcel.writeInt(this.f96e);
        parcel.writeInt(this.f97f);
        parcel.writeInt(this.f94c);
    }
}
