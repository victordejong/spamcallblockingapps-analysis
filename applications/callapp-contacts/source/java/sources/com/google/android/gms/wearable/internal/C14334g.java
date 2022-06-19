package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.AbstractC11915u;
import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.tasks.C14186i;
import com.google.android.gms.wearable.AbstractC14221b;
/* renamed from: com.google.android.gms.wearable.internal.g */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/g.class */
final class C14334g extends AbstractC11915u<C14314db, AbstractC14221b.AbstractC14222a> {

    /* renamed from: b */
    private final AbstractC14221b.AbstractC14222a f52300b;

    /* JADX INFO: Access modifiers changed from: private */
    public C14334g(AbstractC14221b.AbstractC14222a abstractC14222a, C11899i.C11900a<AbstractC14221b.AbstractC14222a> c11900a) {
        super(c11900a);
        this.f52300b = abstractC14222a;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11915u
    /* renamed from: a */
    public final /* synthetic */ void mo11361a(C14314db c14314db, C14186i c14186i) throws RemoteException {
        C14314db c14314db2 = c14314db;
        c14314db2.f52253d.m11405a(c14314db2, new C14298cm(c14186i), this.f52300b);
    }
}
