package p000;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: km1 */
/* loaded from: classes3-dex2jar.jar:km1.class */
public class km1 {
    /* renamed from: a */
    public static byte[] m1379a(Parcelable parcelable) {
        Parcel obtain = Parcel.obtain();
        parcelable.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }

    /* renamed from: b */
    public static Parcel m1378b(byte[] bArr) {
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        return obtain;
    }

    /* renamed from: c */
    public static <T> T m1377c(byte[] bArr, Parcelable.Creator<T> creator) {
        Parcel m1378b = m1378b(bArr);
        T createFromParcel = creator.createFromParcel(m1378b);
        m1378b.recycle();
        return createFromParcel;
    }
}
