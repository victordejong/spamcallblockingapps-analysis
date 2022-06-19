package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.Status;
/* renamed from: com.google.android.gms.auth.api.signin.internal.k */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/k.class */
public final class C11751k extends AbstractC11755o<Status> {
    public C11751k(AbstractC11826g abstractC11826g) {
        super(abstractC11826g);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: a */
    public final /* synthetic */ AbstractC11925m mo11354a(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.C11892d.AbstractC11893a
    /* renamed from: a */
    public final /* synthetic */ void mo11353a(C11747g c11747g) throws RemoteException {
        C11747g c11747g2 = c11747g;
        ((AbstractC11761u) c11747g2.getService()).mo19518b(new BinderC11754n(this), c11747g2.f39071a);
    }
}
