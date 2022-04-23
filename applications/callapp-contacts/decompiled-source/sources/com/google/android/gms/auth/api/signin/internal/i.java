package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.e;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.m;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/i.class */
public final class i extends o<e> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f22518a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ GoogleSignInOptions f22519b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(g gVar, Context context, GoogleSignInOptions googleSignInOptions) {
        super(gVar);
        this.f22518a = context;
        this.f22519b = googleSignInOptions;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ m a(Status status) {
        return new e(null, status);
    }

    @Override // com.google.android.gms.common.api.internal.d.a
    public final /* synthetic */ void a(g gVar) throws RemoteException {
        ((u) gVar.getService()).a(new l(this), this.f22519b);
    }
}
