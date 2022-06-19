package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.play.core.internal.d */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/d.class */
public abstract class AbstractBinderC15068d extends BinderC15050bn implements AbstractC15069e {
    public AbstractBinderC15068d() {
        super("com.google.android.play.core.inappreview.protocol.IInAppReviewServiceCallback");
    }

    @Override // com.google.android.play.core.internal.BinderC15050bn
    /* renamed from: a */
    protected final boolean mo9515a(int i, Parcel parcel) throws RemoteException {
        if (i == 2) {
            mo9464a((Bundle) C15051bo.m9549a(parcel, Bundle.CREATOR));
            return true;
        }
        return false;
    }
}
