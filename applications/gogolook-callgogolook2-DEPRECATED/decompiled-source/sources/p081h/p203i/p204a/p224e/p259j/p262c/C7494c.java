package p081h.p203i.p204a.p224e.p259j.p262c;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: h.i.a.e.j.c.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/c/c.class */
public class C7494c {
    static {
        C7494c.class.getClassLoader();
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m20416a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m20417a(Parcel parcel, IInterface iInterface) {
        parcel.writeStrongBinder(iInterface == null ? null : iInterface.asBinder());
    }
}
