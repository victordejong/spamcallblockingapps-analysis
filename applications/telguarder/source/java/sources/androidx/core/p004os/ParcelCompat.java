package androidx.core.p004os;

import android.os.Parcel;
/* renamed from: androidx.core.os.ParcelCompat */
/* loaded from: classes-dex2jar.jar:androidx/core/os/ParcelCompat.class */
public final class ParcelCompat {
    private ParcelCompat() {
    }

    public static boolean readBoolean(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    public static void writeBoolean(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }
}
