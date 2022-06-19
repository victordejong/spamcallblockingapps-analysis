package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.play.core.internal.bp */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bp.class */
public final class C15052bp extends C15049bm implements AbstractC15055bs {
    public C15052bp(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.appupdate.protocol.IAppUpdateService");
    }

    @Override // com.google.android.play.core.internal.AbstractC15055bs
    /* renamed from: a */
    public final void mo9546a(String str, Bundle bundle, AbstractC15057bu abstractC15057bu) throws RemoteException {
        Parcel m9552a = m9552a();
        m9552a.writeString(str);
        C15051bo.m9548a(m9552a, bundle);
        C15051bo.m9550a(m9552a, abstractC15057bu);
        m9551a(2, m9552a);
    }

    @Override // com.google.android.play.core.internal.AbstractC15055bs
    /* renamed from: b */
    public final void mo9545b(String str, Bundle bundle, AbstractC15057bu abstractC15057bu) throws RemoteException {
        Parcel m9552a = m9552a();
        m9552a.writeString(str);
        C15051bo.m9548a(m9552a, bundle);
        C15051bo.m9550a(m9552a, abstractC15057bu);
        m9551a(3, m9552a);
    }
}
