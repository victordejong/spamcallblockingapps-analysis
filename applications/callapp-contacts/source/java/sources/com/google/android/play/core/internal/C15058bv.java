package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* renamed from: com.google.android.play.core.internal.bv */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bv.class */
public final class C15058bv extends C15049bm implements AbstractC15060bx {
    public C15058bv(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.assetpacks.protocol.IAssetModuleService");
    }

    @Override // com.google.android.play.core.internal.AbstractC15060bx
    /* renamed from: a */
    public final void mo9541a(String str, Bundle bundle, Bundle bundle2, AbstractC15062bz abstractC15062bz) throws RemoteException {
        Parcel m9552a = m9552a();
        m9552a.writeString(str);
        C15051bo.m9548a(m9552a, bundle);
        C15051bo.m9548a(m9552a, bundle2);
        C15051bo.m9550a(m9552a, abstractC15062bz);
        m9551a(6, m9552a);
    }

    @Override // com.google.android.play.core.internal.AbstractC15060bx
    /* renamed from: a */
    public final void mo9540a(String str, Bundle bundle, AbstractC15062bz abstractC15062bz) throws RemoteException {
        Parcel m9552a = m9552a();
        m9552a.writeString(str);
        C15051bo.m9548a(m9552a, bundle);
        C15051bo.m9550a(m9552a, abstractC15062bz);
        m9551a(5, m9552a);
    }

    @Override // com.google.android.play.core.internal.AbstractC15060bx
    /* renamed from: a */
    public final void mo9539a(String str, List<Bundle> list, Bundle bundle, AbstractC15062bz abstractC15062bz) throws RemoteException {
        Parcel m9552a = m9552a();
        m9552a.writeString(str);
        m9552a.writeTypedList(list);
        C15051bo.m9548a(m9552a, bundle);
        C15051bo.m9550a(m9552a, abstractC15062bz);
        m9551a(14, m9552a);
    }

    @Override // com.google.android.play.core.internal.AbstractC15060bx
    /* renamed from: b */
    public final void mo9538b(String str, Bundle bundle, Bundle bundle2, AbstractC15062bz abstractC15062bz) throws RemoteException {
        Parcel m9552a = m9552a();
        m9552a.writeString(str);
        C15051bo.m9548a(m9552a, bundle);
        C15051bo.m9548a(m9552a, bundle2);
        C15051bo.m9550a(m9552a, abstractC15062bz);
        m9551a(7, m9552a);
    }

    @Override // com.google.android.play.core.internal.AbstractC15060bx
    /* renamed from: b */
    public final void mo9537b(String str, Bundle bundle, AbstractC15062bz abstractC15062bz) throws RemoteException {
        Parcel m9552a = m9552a();
        m9552a.writeString(str);
        C15051bo.m9548a(m9552a, bundle);
        C15051bo.m9550a(m9552a, abstractC15062bz);
        m9551a(10, m9552a);
    }

    @Override // com.google.android.play.core.internal.AbstractC15060bx
    /* renamed from: c */
    public final void mo9536c(String str, Bundle bundle, Bundle bundle2, AbstractC15062bz abstractC15062bz) throws RemoteException {
        Parcel m9552a = m9552a();
        m9552a.writeString(str);
        C15051bo.m9548a(m9552a, bundle);
        C15051bo.m9548a(m9552a, bundle2);
        C15051bo.m9550a(m9552a, abstractC15062bz);
        m9551a(9, m9552a);
    }

    @Override // com.google.android.play.core.internal.AbstractC15060bx
    /* renamed from: d */
    public final void mo9535d(String str, Bundle bundle, Bundle bundle2, AbstractC15062bz abstractC15062bz) throws RemoteException {
        Parcel m9552a = m9552a();
        m9552a.writeString(str);
        C15051bo.m9548a(m9552a, bundle);
        C15051bo.m9548a(m9552a, bundle2);
        C15051bo.m9550a(m9552a, abstractC15062bz);
        m9551a(11, m9552a);
    }
}
