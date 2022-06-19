package com.google.android.gms.common.internal.safeparcel;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C2662s;
/* renamed from: com.google.android.gms.common.internal.safeparcel.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/d.class */
public final class C2666d {
    /* renamed from: a */
    public static <T extends AbstractC2665c> T m13920a(Intent intent, String str, Parcelable.Creator<T> creator) {
        byte[] byteArrayExtra = intent.getByteArrayExtra(str);
        return (T) (byteArrayExtra == null ? null : m13919a(byteArrayExtra, creator));
    }

    /* renamed from: a */
    public static <T extends AbstractC2665c> T m13919a(byte[] bArr, Parcelable.Creator<T> creator) {
        C2662s.m13981a(creator);
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        T createFromParcel = creator.createFromParcel(obtain);
        obtain.recycle();
        return createFromParcel;
    }
}
