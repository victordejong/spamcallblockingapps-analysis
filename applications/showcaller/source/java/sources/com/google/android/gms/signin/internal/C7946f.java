package com.google.android.gms.signin.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.base.C7282a;
import com.google.android.gms.internal.base.C7284c;
/* renamed from: com.google.android.gms.signin.internal.f */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/f.class */
public final class C7946f extends C7282a implements IInterface {
    public C7946f(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    /* renamed from: a3 */
    public final void m5850a3(zai zaiVar, AbstractC7945e abstractC7945e) {
        Parcel m7812c0 = m7812c0();
        C7284c.m7809b(m7812c0, zaiVar);
        C7284c.m7808c(m7812c0, abstractC7945e);
        m7813J0(12, m7812c0);
    }
}
