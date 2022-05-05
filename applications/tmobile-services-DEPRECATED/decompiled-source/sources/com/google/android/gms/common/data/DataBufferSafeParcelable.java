package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataBufferSafeParcelable.class */
public class DataBufferSafeParcelable<T extends SafeParcelable> extends AbstractDataBuffer<T> {

    /* renamed from: g */
    private final Parcelable.Creator<T> f7389g;

    @KeepForSdk
    /* renamed from: d */
    public T get(int i) {
        DataHolder dataHolder = this.f7378f;
        byte[] B = dataHolder.m14635B("data", i, dataHolder.m14631d0(i));
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(B, 0, B.length);
        obtain.setDataPosition(0);
        T createFromParcel = this.f7389g.createFromParcel(obtain);
        obtain.recycle();
        return createFromParcel;
    }
}
