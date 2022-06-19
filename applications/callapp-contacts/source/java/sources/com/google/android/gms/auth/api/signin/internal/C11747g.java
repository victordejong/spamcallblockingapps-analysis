package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.C11943d;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AbstractC12033f;
import com.google.android.gms.common.internal.C12031e;
import com.google.android.gms.internal.auth_api.C13133b;
/* renamed from: com.google.android.gms.auth.api.signin.internal.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/g.class */
public final class C11747g extends AbstractC12033f<AbstractC11761u> {

    /* renamed from: a */
    final GoogleSignInOptions f39071a;

    public C11747g(Context context, Looper looper, C12031e c12031e, GoogleSignInOptions googleSignInOptions, AbstractC11826g.AbstractC11827a abstractC11827a, AbstractC11826g.AbstractC11828b abstractC11828b) {
        super(context, looper, 91, c12031e, abstractC11827a, abstractC11828b);
        GoogleSignInOptions.C11728a c11728a = googleSignInOptions != null ? new GoogleSignInOptions.C11728a(googleSignInOptions) : new GoogleSignInOptions.C11728a();
        c11728a.f39036c = C13133b.m13613a();
        if (!c12031e.f39542c.isEmpty()) {
            for (Scope scope : c12031e.f39542c) {
                c11728a.m19570a(scope, new Scope[0]);
            }
        }
        this.f39071a = c11728a.m19567d();
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
        return queryLocalInterface instanceof AbstractC11761u ? (AbstractC11761u) queryLocalInterface : new C11764x(iBinder);
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d, com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final int getMinApkVersion() {
        return C11943d.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.auth.api.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final Intent getSignInIntent() {
        return C11750j.m19538a(getContext(), this.f39071a);
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getStartServiceAction() {
        return "com.google.android.gms.auth.api.signin.service.START";
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final boolean providesSignIn() {
        return true;
    }
}
