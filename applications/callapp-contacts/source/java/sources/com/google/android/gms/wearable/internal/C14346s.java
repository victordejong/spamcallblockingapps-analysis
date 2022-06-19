package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.AbstractC14225e;
/* renamed from: com.google.android.gms.wearable.internal.s */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/s.class */
final class C14346s extends AbstractC14327do<AbstractC14225e> {

    /* renamed from: a */
    private final /* synthetic */ zzay f52314a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14346s(zzay zzayVar, AbstractC11826g abstractC11826g) {
        super(abstractC11826g);
        this.f52314a = zzayVar;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: a */
    public final /* synthetic */ AbstractC11925m mo11354a(Status status) {
        return new C14351x(status, null);
    }

    @Override // com.google.android.gms.common.api.internal.C11892d.AbstractC11893a
    /* renamed from: a */
    public final /* synthetic */ void mo11353a(C14314db c14314db) throws RemoteException {
        String str;
        str = this.f52314a.zzce;
        BinderC14237af binderC14237af = new BinderC14237af();
        ((AbstractC14271bm) c14314db.getService()).mo11408b(new BinderC14307cv(this, binderC14237af), binderC14237af, str);
    }
}
