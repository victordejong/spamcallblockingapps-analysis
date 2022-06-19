package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.AbstractC14355k;
/* renamed from: com.google.android.gms.wearable.internal.bs */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bs.class */
final class C14277bs extends AbstractC14327do<AbstractC14355k.AbstractC14357b> {

    /* renamed from: a */
    private final /* synthetic */ String f52231a;

    /* renamed from: b */
    private final /* synthetic */ String f52232b;

    /* renamed from: g */
    private final /* synthetic */ byte[] f52233g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14277bs(C14276br c14276br, AbstractC11826g abstractC11826g, String str, String str2, byte[] bArr) {
        super(abstractC11826g);
        this.f52231a = str;
        this.f52232b = str2;
        this.f52233g = bArr;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: a */
    public final /* synthetic */ AbstractC11925m mo11354a(Status status) {
        return new C14278bt(status, -1);
    }

    @Override // com.google.android.gms.common.api.internal.C11892d.AbstractC11893a
    /* renamed from: a */
    public final /* synthetic */ void mo11353a(C14314db c14314db) throws RemoteException {
        ((AbstractC14271bm) c14314db.getService()).mo11409a(new BinderC14311cz(this), this.f52231a, this.f52232b, this.f52233g);
    }
}
