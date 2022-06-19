package com.facebook.ads.internal.util.parcelable;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/facebook/ads/internal/util/parcelable/WrappedParcelable.class */
public class WrappedParcelable implements Parcelable {
    public static final Parcelable.Creator<WrappedParcelable> CREATOR = new C0945a();

    /* renamed from: a */
    public final byte[] f2608a;

    /* renamed from: com.facebook.ads.internal.util.parcelable.WrappedParcelable$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/ads/internal/util/parcelable/WrappedParcelable$a.class */
    public class C0945a implements Parcelable.Creator<WrappedParcelable> {
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
        this.f2608a = parcel.createByteArray();
    }

    public WrappedParcelable(Parcelable parcelable) {
        this.f2608a = marshallParcelable(parcelable);
    }

    public WrappedParcelable(byte[] bArr) {
        this.f2608a = bArr;
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
        byte[] bArr = this.f2608a;
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
        parcel.writeByteArray(this.f2608a);
    }
}
