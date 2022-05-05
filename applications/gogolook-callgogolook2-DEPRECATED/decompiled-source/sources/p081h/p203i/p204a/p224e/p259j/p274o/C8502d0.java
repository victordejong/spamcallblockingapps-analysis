package p081h.p203i.p204a.p224e.p259j.p274o;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: h.i.a.e.j.o.d0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/o/d0.class */
public class C8502d0 {
    static {
        C8502d0.class.getClassLoader();
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m17891a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m17892a(Parcel parcel, IInterface iInterface) {
        parcel.writeStrongBinder(iInterface == null ? null : iInterface.asBinder());
    }

    /* renamed from: a */
    public static void m17890a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* renamed from: a */
    public static void m17889a(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }
}
