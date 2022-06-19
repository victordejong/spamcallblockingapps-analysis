package com.facebook.ads.internal.util.parcelable;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/util/parcelable/WrappedParcelable.class */
public class WrappedParcelable implements Parcelable {
    public static final Parcelable.Creator<WrappedParcelable> CREATOR = new C1625a();

    /* renamed from: a */
    public final byte[] f6013a;

    /* renamed from: com.facebook.ads.internal.util.parcelable.WrappedParcelable$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/util/parcelable/WrappedParcelable$a.class */
    public class C1625a implements Parcelable.Creator<WrappedParcelable> {
        @Override // android.os.Parcelable.Creator
        public WrappedParcelable createFromParcel(Parcel parcel) {
            return new WrappedParcelable(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public WrappedParcelable[] newArray(int i) {
            return new WrappedParcelable[i];
        }
    }

    public WrappedParcelable(Parcel parcel) {
        this.f6013a = parcel.createByteArray();
    }

    public WrappedParcelable(Parcelable parcelable) {
        this.f6013a = marshallParcelable(parcelable);
    }

    public WrappedParcelable(byte[] bArr) {
        this.f6013a = bArr;
    }

    public static byte[] marshallParcelable(Parcelable parcelable) {
        Parcel obtain = Parcel.obtain();
        obtain.writeParcelable(parcelable, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Parcelable unwrap(ClassLoader classLoader) {
        Parcel obtain = Parcel.obtain();
        byte[] bArr = this.f6013a;
        if (bArr != null) {
            obtain.unmarshall(bArr, 0, bArr.length);
            obtain.setDataPosition(0);
            Parcelable readParcelable = obtain.readParcelable(classLoader);
            obtain.recycle();
            return readParcelable;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByteArray(this.f6013a);
    }
}
