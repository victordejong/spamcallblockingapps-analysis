package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.C11735e;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.Status;
/* renamed from: com.google.android.gms.auth.api.signin.internal.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/i.class */
public final class C11749i extends AbstractC11755o<C11735e> {

    /* renamed from: a */
    final /* synthetic */ Context f39072a;

    /* renamed from: b */
    final /* synthetic */ GoogleSignInOptions f39073b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11749i(AbstractC11826g abstractC11826g, Context context, GoogleSignInOptions googleSignInOptions) {
        super(abstractC11826g);
        this.f39072a = context;
        this.f39073b = googleSignInOptions;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: a */
    public final /* synthetic */ AbstractC11925m mo11354a(Status status) {
        return new C11735e(null, status);
    }

    @Override // com.google.android.gms.common.api.internal.C11892d.AbstractC11893a
    /* renamed from: a */
    public final /* synthetic */ void mo11353a(C11747g c11747g) throws RemoteException {
        ((AbstractC11761u) c11747g.getService()).mo19519a(new BinderC11752l(this), this.f39073b);
    }
}
