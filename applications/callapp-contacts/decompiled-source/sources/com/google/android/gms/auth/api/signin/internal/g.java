package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.d;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.f;
import com.google.android.gms.internal.auth_api.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/g.class */
public final class g extends f<u> {

    /* renamed from: a  reason: collision with root package name */
    final GoogleSignInOptions f22517a;

    public g(Context context, Looper looper, e eVar, GoogleSignInOptions googleSignInOptions, g.a aVar, g.b bVar) {
        super(context, looper, 91, eVar, aVar, bVar);
        GoogleSignInOptions.a aVar2 = googleSignInOptions != null ? new GoogleSignInOptions.a(googleSignInOptions) : new GoogleSignInOptions.a();
        aVar2.f22492c = b.a();
        if (!eVar.f22883c.isEmpty()) {
            for (Scope scope : eVar.f22883c) {
                aVar2.a(scope, new Scope[0]);
            }
        }
        this.f22517a = aVar2.d();
    }

    @Override // com.google.android.gms.common.internal.d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
        return queryLocalInterface instanceof u ? (u) queryLocalInterface : new x(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final int getMinApkVersion() {
        return d.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.auth.api.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.d
    public final Intent getSignInIntent() {
        return j.a(getContext(), this.f22517a);
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getStartServiceAction() {
        return "com.google.android.gms.auth.api.signin.service.START";
    }

    @Override // com.google.android.gms.common.internal.d
    public final boolean providesSignIn() {
        return true;
    }
}
