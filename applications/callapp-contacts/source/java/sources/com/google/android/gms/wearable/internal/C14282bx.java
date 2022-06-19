package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.AbstractC11906n;
import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.tasks.C14186i;
import com.google.android.gms.wearable.AbstractC14355k;
import com.google.android.gms.wearable.AbstractC14358l;
/* renamed from: com.google.android.gms.wearable.internal.bx */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bx.class */
final class C14282bx extends AbstractC11906n<C14314db, AbstractC14358l.AbstractC14359a> {

    /* renamed from: e */
    private final AbstractC14358l.AbstractC14359a f52238e;

    /* renamed from: f */
    private final IntentFilter[] f52239f;

    /* renamed from: g */
    private final C11899i<AbstractC14355k.AbstractC14356a> f52240g;

    /* JADX INFO: Access modifiers changed from: private */
    public C14282bx(AbstractC14358l.AbstractC14359a abstractC14359a, IntentFilter[] intentFilterArr, C11899i<AbstractC14358l.AbstractC14359a> c11899i) {
        super(c11899i);
        this.f52238e = abstractC14359a;
        this.f52239f = intentFilterArr;
        this.f52240g = c11899i;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11906n
    /* renamed from: a */
    public final /* synthetic */ void mo11362a(C14314db c14314db, C14186i c14186i) throws RemoteException {
        C14314db c14314db2 = c14314db;
        c14314db2.f52252c.m11404a(c14314db2, new C14299cn(c14186i), this.f52238e, BinderC14317de.m11385a(this.f52240g, this.f52239f));
    }
}
