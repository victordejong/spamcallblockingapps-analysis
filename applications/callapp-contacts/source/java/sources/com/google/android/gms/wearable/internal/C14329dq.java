package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.AbstractC14209a;
/* renamed from: com.google.android.gms.wearable.internal.dq */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/dq.class */
final class C14329dq extends AbstractC14327do<AbstractC14209a.AbstractC14211b> {

    /* renamed from: a */
    private final /* synthetic */ String f52289a;

    /* renamed from: b */
    private final /* synthetic */ int f52290b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14329dq(C14328dp c14328dp, AbstractC11826g abstractC11826g, String str, int i) {
        super(abstractC11826g);
        this.f52289a = str;
        this.f52290b = i;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: a */
    public final /* synthetic */ AbstractC11925m mo11354a(Status status) {
        return new C14331ds(status, null);
    }

    @Override // com.google.android.gms.common.api.internal.C11892d.AbstractC11893a
    /* renamed from: a */
    public final /* synthetic */ void mo11353a(C14314db c14314db) throws RemoteException {
        ((AbstractC14271bm) c14314db.getService()).mo11412a(new BinderC14305ct(this), this.f52289a, this.f52290b);
    }
}
