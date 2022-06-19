package p078c.p084c.p085a.p086a.p088b.p091c;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: c.c.a.a.b.c.c */
/* loaded from: classes2-dex2jar.jar:c/c/a/a/b/c/c.class */
public final class C1849c {

    /* renamed from: a */
    private static final ClassLoader f6757a = C1849c.class.getClassLoader();

    private C1849c() {
    }

    /* renamed from: a */
    public static boolean m28794a(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    /* renamed from: b */
    public static void m28793b(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: c */
    public static <T extends Parcelable> T m28792c(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: d */
    public static void m28791d(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* renamed from: e */
    public static void m28790e(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }
}
