package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.p357c.C13161a;
/* renamed from: com.google.android.gms.dynamite.o */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamite/o.class */
public final class C12155o extends C13161a implements IInterface {
    public C12155o(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    /* renamed from: a */
    public final int m18962a() throws RemoteException {
        Parcel m13592a = m13592a(6, m13591c());
        int readInt = m13592a.readInt();
        m13592a.recycle();
        return readInt;
    }
}
