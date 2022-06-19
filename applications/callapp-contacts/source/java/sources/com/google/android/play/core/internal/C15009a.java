package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.play.core.internal.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/a.class */
public final class C15009a extends C15049bm implements AbstractC15063c {
    public C15009a(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.inappreview.protocol.IInAppReviewService");
    }

    @Override // com.google.android.play.core.internal.AbstractC15063c
    /* renamed from: a */
    public final void mo9521a(String str, Bundle bundle, AbstractC15069e abstractC15069e) throws RemoteException {
        Parcel m9552a = m9552a();
        m9552a.writeString(str);
        C15051bo.m9548a(m9552a, bundle);
        C15051bo.m9550a(m9552a, abstractC15069e);
        m9551a(2, m9552a);
    }
}
