package android.support.p001v4.p003os;

import android.os.Parcel;
@Deprecated
/* renamed from: android.support.v4.os.ParcelableCompatCreatorCallbacks */
/* loaded from: classes-dex2jar.jar:android/support/v4/os/ParcelableCompatCreatorCallbacks.class */
public interface ParcelableCompatCreatorCallbacks<T> {
    T createFromParcel(Parcel parcel, ClassLoader classLoader);

    T[] newArray(int i);
}
