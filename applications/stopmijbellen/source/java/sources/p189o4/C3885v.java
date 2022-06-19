package p189o4;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: o4.v */
/* loaded from: classes-dex2jar.jar:o4/v.class */
public final class C3885v {

    /* renamed from: a */
    public static final /* synthetic */ int f12380a = 0;

    static {
        C3885v.class.getClassLoader();
    }

    /* renamed from: a */
    public static Parcelable m1733a(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }
}
