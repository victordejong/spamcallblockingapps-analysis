package com.tencent.mmkv;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/tencent/mmkv/ParcelableMMKV.class */
public final class ParcelableMMKV implements Parcelable {
    public static final Parcelable.Creator<ParcelableMMKV> CREATOR = new C9419a();

    /* renamed from: d */
    private final String f40300d;

    /* renamed from: e */
    private int f40301e;

    /* renamed from: f */
    private int f40302f;

    /* renamed from: g */
    private String f40303g;

    /* renamed from: com.tencent.mmkv.ParcelableMMKV$a */
    /* loaded from: classes2-dex2jar.jar:com/tencent/mmkv/ParcelableMMKV$a.class */
    class C9419a implements Parcelable.Creator<ParcelableMMKV> {
        C9419a() {
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
        this.f40301e = -1;
        this.f40302f = -1;
        this.f40303g = null;
        this.f40300d = mmkv.mmapID();
        this.f40301e = mmkv.ashmemFD();
        this.f40302f = mmkv.ashmemMetaFD();
        this.f40303g = mmkv.cryptKey();
    }

    private ParcelableMMKV(String str, int i, int i2, String str2) {
        this.f40301e = -1;
        this.f40302f = -1;
        this.f40303g = null;
        this.f40300d = str;
        this.f40301e = i;
        this.f40302f = i2;
        this.f40303g = str2;
    }

    /* synthetic */ ParcelableMMKV(String str, int i, int i2, String str2, C9419a c9419a) {
        this(str, i, i2, str2);
    }

    /* renamed from: a */
    public MMKV m577a() {
        int i;
        int i2 = this.f40301e;
        if (i2 < 0 || (i = this.f40302f) < 0) {
            return null;
        }
        return MMKV.m587r(this.f40300d, i2, i, this.f40303g);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 1;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        try {
            parcel.writeString(this.f40300d);
            ParcelFileDescriptor fromFd = ParcelFileDescriptor.fromFd(this.f40301e);
            ParcelFileDescriptor fromFd2 = ParcelFileDescriptor.fromFd(this.f40302f);
            int i2 = i | 1;
            fromFd.writeToParcel(parcel, i2);
            fromFd2.writeToParcel(parcel, i2);
            String str = this.f40303g;
            if (str == null) {
                return;
            }
            parcel.writeString(str);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
