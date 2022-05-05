package p081h.p203i.p204a.p224e.p259j.p266g;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: h.i.a.e.j.g.y0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/y0.class */
public class C7728y0 {
    static {
        C7728y0.class.getClassLoader();
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m19671a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m19672a(Parcel parcel, IInterface iInterface) {
        parcel.writeStrongBinder(iInterface == null ? null : iInterface.asBinder());
    }

    /* renamed from: a */
    public static void m19670a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }
}
