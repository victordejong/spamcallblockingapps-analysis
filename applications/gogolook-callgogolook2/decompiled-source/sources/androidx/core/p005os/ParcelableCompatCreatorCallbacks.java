package androidx.core.p005os;

import android.os.Parcel;
@Deprecated
/* renamed from: androidx.core.os.ParcelableCompatCreatorCallbacks */
/* loaded from: classes-dex2jar.jar:androidx/core/os/ParcelableCompatCreatorCallbacks.class */
public interface ParcelableCompatCreatorCallbacks<T> {
    T createFromParcel(Parcel parcel, ClassLoader classLoader);

    T[] newArray(int i);
}
