package p081h.p203i.p204a.p224e.p259j.p267h;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: h.i.a.e.j.h.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/h/c.class */
public class C7743c {
    static {
        C7743c.class.getClassLoader();
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m19595a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m19596a(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    /* renamed from: a */
    public static void m19594a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* renamed from: a */
    public static void m19593a(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: a */
    public static boolean m19597a(Parcel parcel) {
        return parcel.readInt() != 0;
    }
}
