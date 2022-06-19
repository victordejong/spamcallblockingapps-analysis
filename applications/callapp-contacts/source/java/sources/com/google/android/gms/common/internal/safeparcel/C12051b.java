package com.google.android.gms.common.internal.safeparcel;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.common.internal.safeparcel.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/b.class */
public final class C12051b {
    /* renamed from: a */
    public static <T extends SafeParcelable> T m19092a(Intent intent, String str, Parcelable.Creator<T> creator) {
        byte[] byteArrayExtra = intent.getByteArrayExtra(str);
        if (byteArrayExtra == null) {
            return null;
        }
        return (T) m19089a(byteArrayExtra, creator);
    }

    /* renamed from: a */
    public static <T extends SafeParcelable> T m19089a(byte[] bArr, Parcelable.Creator<T> creator) {
        C12045o.m19162a(creator);
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        T createFromParcel = creator.createFromParcel(obtain);
        obtain.recycle();
        return createFromParcel;
    }

    /* renamed from: a */
    public static <T extends SafeParcelable> void m19090a(T t, Intent intent, String str) {
        intent.putExtra(str, m19091a(t));
    }

    /* renamed from: a */
    private static <T extends SafeParcelable> byte[] m19091a(T t) {
        Parcel obtain = Parcel.obtain();
        t.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }
}
