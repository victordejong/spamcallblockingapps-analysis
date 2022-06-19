package android.support.p003v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: android.support.v4.media.session.ParcelableVolumeInfo */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/ParcelableVolumeInfo.class */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new C0054a();

    /* renamed from: d */
    public int f106d;

    /* renamed from: e */
    public int f107e;

    /* renamed from: f */
    public int f108f;

    /* renamed from: g */
    public int f109g;

    /* renamed from: h */
    public int f110h;

    /* renamed from: android.support.v4.media.session.ParcelableVolumeInfo$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/ParcelableVolumeInfo$a.class */
    static final class C0054a implements Parcelable.Creator<ParcelableVolumeInfo> {
        C0054a() {
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
        this.f106d = parcel.readInt();
        this.f108f = parcel.readInt();
        this.f109g = parcel.readInt();
        this.f110h = parcel.readInt();
        this.f107e = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f106d);
        parcel.writeInt(this.f108f);
        parcel.writeInt(this.f109g);
        parcel.writeInt(this.f110h);
        parcel.writeInt(this.f107e);
    }
}
