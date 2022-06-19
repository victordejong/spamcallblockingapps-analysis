package com.google.android.gms.common.internal.safeparcel;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Objects;
@VisibleForTesting
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer.class */
public final class SafeParcelableSerializer {
    private SafeParcelableSerializer() {
    }

    @KeepForSdk
    /* renamed from: a */
    public static <T extends SafeParcelable> T m38838a(byte[] bArr, Parcelable.Creator<T> creator) {
        Objects.requireNonNull(creator, "null reference");
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        T createFromParcel = creator.createFromParcel(obtain);
        obtain.recycle();
        return createFromParcel;
    }

    @KeepForSdk
    /* renamed from: b */
    public static <T extends SafeParcelable> T m38837b(Intent intent, String str, Parcelable.Creator<T> creator) {
        byte[] byteArrayExtra = intent.getByteArrayExtra(str);
        if (byteArrayExtra == null) {
            return null;
        }
        return (T) m38838a(byteArrayExtra, creator);
    }
}
