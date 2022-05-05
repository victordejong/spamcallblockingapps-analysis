package p081h.p203i.p204a.p224e.p259j.p264e;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: h.i.a.e.j.e.l */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/e/l.class */
public class C7524l {
    static {
        C7524l.class.getClassLoader();
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m20399a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m20398a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }
}
