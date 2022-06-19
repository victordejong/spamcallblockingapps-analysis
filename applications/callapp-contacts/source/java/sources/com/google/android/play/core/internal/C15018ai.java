package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* renamed from: com.google.android.play.core.internal.ai */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/ai.class */
public final class C15018ai extends C15049bm implements AbstractC15020ak {
    public C15018ai(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.splitinstall.protocol.ISplitInstallService");
    }

    @Override // com.google.android.play.core.internal.AbstractC15020ak
    /* renamed from: a */
    public final void mo9589a(String str, int i, AbstractC15022am abstractC15022am) throws RemoteException {
        Parcel m9552a = m9552a();
        m9552a.writeString(str);
        m9552a.writeInt(i);
        C15051bo.m9550a(m9552a, abstractC15022am);
        m9551a(5, m9552a);
    }

    @Override // com.google.android.play.core.internal.AbstractC15020ak
    /* renamed from: a */
    public final void mo9588a(String str, List<Bundle> list, Bundle bundle, AbstractC15022am abstractC15022am) throws RemoteException {
        Parcel m9552a = m9552a();
        m9552a.writeString(str);
        m9552a.writeTypedList(list);
        C15051bo.m9548a(m9552a, bundle);
        C15051bo.m9550a(m9552a, abstractC15022am);
        m9551a(2, m9552a);
    }
}
