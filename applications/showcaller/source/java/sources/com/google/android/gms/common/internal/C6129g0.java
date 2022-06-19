package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.internal.base.C7282a;
import com.google.android.gms.internal.base.C7284c;
/* renamed from: com.google.android.gms.common.internal.g0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/g0.class */
public final class C6129g0 extends C7282a implements IInterface {
    public C6129g0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ISignInButtonCreator");
    }

    /* renamed from: a3 */
    public final AbstractC6253a m17055a3(AbstractC6253a abstractC6253a, zax zaxVar) {
        Parcel m7812c0 = m7812c0();
        C7284c.m7808c(m7812c0, abstractC6253a);
        C7284c.m7809b(m7812c0, zaxVar);
        Parcel m7814D0 = m7814D0(2, m7812c0);
        AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(m7814D0.readStrongBinder());
        m7814D0.recycle();
        return m16746D0;
    }
}
