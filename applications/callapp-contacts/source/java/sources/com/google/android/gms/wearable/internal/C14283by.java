package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.AbstractC11915u;
import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.tasks.C14186i;
import com.google.android.gms.wearable.AbstractC14358l;
/* renamed from: com.google.android.gms.wearable.internal.by */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/by.class */
final class C14283by extends AbstractC11915u<C14314db, AbstractC14358l.AbstractC14359a> {

    /* renamed from: b */
    private final AbstractC14358l.AbstractC14359a f52241b;

    /* JADX INFO: Access modifiers changed from: private */
    public C14283by(AbstractC14358l.AbstractC14359a abstractC14359a, C11899i.C11900a<AbstractC14358l.AbstractC14359a> c11900a) {
        super(c11900a);
        this.f52241b = abstractC14359a;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11915u
    /* renamed from: a */
    public final /* synthetic */ void mo11361a(C14314db c14314db, C14186i c14186i) throws RemoteException {
        C14314db c14314db2 = c14314db;
        c14314db2.f52252c.m11405a(c14314db2, new C14298cm(c14186i), this.f52241b);
    }
}
