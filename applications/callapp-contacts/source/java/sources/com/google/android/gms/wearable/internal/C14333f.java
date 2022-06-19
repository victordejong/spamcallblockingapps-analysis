package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.AbstractC11906n;
import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.tasks.C14186i;
import com.google.android.gms.wearable.AbstractC14209a;
import com.google.android.gms.wearable.AbstractC14221b;
/* renamed from: com.google.android.gms.wearable.internal.f */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/f.class */
final class C14333f extends AbstractC11906n<C14314db, AbstractC14221b.AbstractC14222a> {

    /* renamed from: e */
    private final AbstractC14221b.AbstractC14222a f52297e;

    /* renamed from: f */
    private final IntentFilter[] f52298f;

    /* renamed from: g */
    private final C11899i<AbstractC14209a.AbstractC14210a> f52299g;

    /* JADX INFO: Access modifiers changed from: private */
    public C14333f(AbstractC14221b.AbstractC14222a abstractC14222a, IntentFilter[] intentFilterArr, C11899i<AbstractC14221b.AbstractC14222a> c11899i) {
        super(c11899i);
        this.f52297e = abstractC14222a;
        this.f52298f = intentFilterArr;
        this.f52299g = c11899i;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11906n
    /* renamed from: a */
    public final /* synthetic */ void mo11362a(C14314db c14314db, C14186i c14186i) throws RemoteException {
        C14314db c14314db2 = c14314db;
        c14314db2.f52253d.m11404a(c14314db2, new C14299cn(c14186i), this.f52297e, BinderC14317de.m11374c(this.f52299g, this.f52298f));
    }
}
