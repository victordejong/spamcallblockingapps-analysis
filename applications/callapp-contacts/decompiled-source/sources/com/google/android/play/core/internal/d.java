package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/d.class */
public abstract class d extends bn implements e {
    public d() {
        super("com.google.android.play.core.inappreview.protocol.IInAppReviewServiceCallback");
    }

    @Override // com.google.android.play.core.internal.bn
    protected final boolean a(int i, Parcel parcel) throws RemoteException {
        if (i != 2) {
            return false;
        }
        a((Bundle) bo.a(parcel, Bundle.CREATOR));
        return true;
    }
}
