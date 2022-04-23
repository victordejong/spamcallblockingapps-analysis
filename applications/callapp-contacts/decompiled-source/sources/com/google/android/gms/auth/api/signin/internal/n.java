package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/n.class */
final class n extends d {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ k f22522a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(k kVar) {
        this.f22522a = kVar;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.d, com.google.android.gms.auth.api.signin.internal.s
    public final void a(Status status) throws RemoteException {
        this.f22522a.a((k) status);
    }
}
