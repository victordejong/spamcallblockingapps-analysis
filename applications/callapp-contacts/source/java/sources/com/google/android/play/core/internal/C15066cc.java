package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.play.core.internal.cc */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/cc.class */
public final class C15066cc extends C15049bm implements AbstractC15067cd {
    public C15066cc(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
    }

    @Override // com.google.android.play.core.internal.AbstractC15067cd
    /* renamed from: a */
    public final void mo9518a(Bundle bundle) throws RemoteException {
        Parcel m9552a = m9552a();
        C15051bo.m9548a(m9552a, bundle);
        m9551a(3, m9552a);
    }

    @Override // com.google.android.play.core.internal.AbstractC15067cd
    /* renamed from: a */
    public final void mo9517a(Bundle bundle, Bundle bundle2) throws RemoteException {
        Parcel m9552a = m9552a();
        C15051bo.m9548a(m9552a, bundle);
        C15051bo.m9548a(m9552a, bundle2);
        m9551a(2, m9552a);
    }

    @Override // com.google.android.play.core.internal.AbstractC15067cd
    /* renamed from: b */
    public final void mo9516b(Bundle bundle) throws RemoteException {
        Parcel m9552a = m9552a();
        C15051bo.m9548a(m9552a, bundle);
        m9551a(4, m9552a);
    }
}
