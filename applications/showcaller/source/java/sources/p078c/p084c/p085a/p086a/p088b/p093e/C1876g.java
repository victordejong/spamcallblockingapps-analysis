package p078c.p084c.p085a.p086a.p088b.p093e;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: c.c.a.a.b.e.g */
/* loaded from: classes2-dex2jar.jar:c/c/a/a/b/e/g.class */
public final class C1876g {

    /* renamed from: a */
    private static final ClassLoader f6774a = C1876g.class.getClassLoader();

    private C1876g() {
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m28754a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: b */
    public static void m28753b(Parcel parcel, Parcelable parcelable) {
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }
}
