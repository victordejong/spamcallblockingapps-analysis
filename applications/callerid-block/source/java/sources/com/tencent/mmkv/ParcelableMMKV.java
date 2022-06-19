package com.tencent.mmkv;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/tencent/mmkv/ParcelableMMKV.class */
public final class ParcelableMMKV implements Parcelable {
    public static final Parcelable.Creator<ParcelableMMKV> CREATOR = new C2982a();

    /* renamed from: b */
    private final String f12549b;

    /* renamed from: c */
    private int f12550c;

    /* renamed from: d */
    private int f12551d;

    /* renamed from: e */
    private String f12552e;

    /* renamed from: com.tencent.mmkv.ParcelableMMKV$a */
    /* loaded from: classes2-dex2jar.jar:com/tencent/mmkv/ParcelableMMKV$a.class */
    static final class C2982a implements Parcelable.Creator<ParcelableMMKV> {
        C2982a() {
        }

        /* renamed from: a */
        public ParcelableMMKV createFromParcel(Parcel parcel) {
            String readString = parcel.readString();
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) ParcelFileDescriptor.CREATOR.createFromParcel(parcel);
            ParcelFileDescriptor parcelFileDescriptor2 = (ParcelFileDescriptor) ParcelFileDescriptor.CREATOR.createFromParcel(parcel);
            String readString2 = parcel.readString();
            if (parcelFileDescriptor == null || parcelFileDescriptor2 == null) {
                return null;
            }
            return new ParcelableMMKV(readString, parcelFileDescriptor.detachFd(), parcelFileDescriptor2.detachFd(), readString2, null);
        }

        /* renamed from: b */
        public ParcelableMMKV[] newArray(int i) {
            return new ParcelableMMKV[i];
        }
    }

    public ParcelableMMKV(MMKV mmkv) {
        this.f12550c = -1;
        this.f12551d = -1;
        this.f12552e = null;
        this.f12549b = mmkv.mmapID();
        this.f12550c = mmkv.ashmemFD();
        this.f12551d = mmkv.ashmemMetaFD();
        this.f12552e = mmkv.cryptKey();
    }

    private ParcelableMMKV(String str, int i, int i2, String str2) {
        this.f12550c = -1;
        this.f12551d = -1;
        this.f12552e = null;
        this.f12549b = str;
        this.f12550c = i;
        this.f12551d = i2;
        this.f12552e = str2;
    }

    /* synthetic */ ParcelableMMKV(String str, int i, int i2, String str2, C2982a c2982a) {
        this(str, i, i2, str2);
    }

    /* renamed from: a */
    public MMKV m626a() {
        int i;
        int i2 = this.f12550c;
        if (i2 < 0 || (i = this.f12551d) < 0) {
            return null;
        }
        return MMKV.r(this.f12549b, i2, i, this.f12552e);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 1;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        try {
            parcel.writeString(this.f12549b);
            ParcelFileDescriptor fromFd = ParcelFileDescriptor.fromFd(this.f12550c);
            ParcelFileDescriptor fromFd2 = ParcelFileDescriptor.fromFd(this.f12551d);
            int i2 = i | 1;
            fromFd.writeToParcel(parcel, i2);
            fromFd2.writeToParcel(parcel, i2);
            String str = this.f12552e;
            if (str == null) {
                return;
            }
            parcel.writeString(str);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
