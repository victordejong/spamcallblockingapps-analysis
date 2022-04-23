package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* renamed from: h.i.a.e.j.a.y2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/y2.class */
public class C7465y2 {

    /* renamed from: a */
    public static final ClassLoader f17550a = C7465y2.class.getClassLoader();

    /* renamed from: a */
    public static <T extends Parcelable> T m20509a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m20510a(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    /* renamed from: a */
    public static void m20508a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* renamed from: a */
    public static void m20507a(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: a */
    public static boolean m20511a(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    /* renamed from: b */
    public static ArrayList m20506b(Parcel parcel) {
        return parcel.readArrayList(f17550a);
    }

    /* renamed from: b */
    public static void m20505b(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 1);
    }
}
