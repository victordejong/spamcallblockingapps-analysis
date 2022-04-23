package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/a.class */
public final class a extends bm implements c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public a(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.inappreview.protocol.IInAppReviewService");
    }

    @Override // com.google.android.play.core.internal.c
    public final void a(String str, Bundle bundle, e eVar) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        bo.a(a2, bundle);
        bo.a(a2, eVar);
        a(2, a2);
    }
}
