package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.Status;
/* renamed from: com.google.android.gms.wearable.internal.q */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/q.class */
final class C14344q extends AbstractC14327do<Status> {

    /* renamed from: a */
    private final /* synthetic */ int f52311a;

    /* renamed from: b */
    private final /* synthetic */ zzay f52312b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14344q(zzay zzayVar, AbstractC11826g abstractC11826g, int i) {
        super(abstractC11826g);
        this.f52312b = zzayVar;
        this.f52311a = i;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: a */
    public final /* synthetic */ AbstractC11925m mo11354a(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.C11892d.AbstractC11893a
    /* renamed from: a */
    public final /* synthetic */ void mo11353a(C14314db c14314db) throws RemoteException {
        String str;
        str = this.f52312b.zzce;
        ((AbstractC14271bm) c14314db.getService()).mo11407b(new BinderC14304cs(this), str, this.f52311a);
    }
}
