package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.auth.api.b;
import com.google.android.gms.auth.api.c;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.d;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.x;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth/f.class */
public final class f extends com.google.android.gms.common.internal.f<g> {

    /* renamed from: a  reason: collision with root package name */
    private final Bundle f28653a;

    public f(Context context, Looper looper, e eVar, c cVar, g.a aVar, g.b bVar) {
        super(context, looper, 16, eVar, aVar, bVar);
        if (cVar == null) {
            this.f28653a = new Bundle();
            return;
        }
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.common.internal.d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
        return queryLocalInterface instanceof g ? (g) queryLocalInterface : new h(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    public final Bundle getGetServiceRequestExtraArgs() {
        return this.f28653a;
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final int getMinApkVersion() {
        return d.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getStartServiceAction() {
        return "com.google.android.gms.auth.service.START";
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final boolean requiresSignIn() {
        Set set;
        e b2 = b();
        Account account = b2.f22881a;
        if (TextUtils.isEmpty(account != null ? account.name : null)) {
            return false;
        }
        x xVar = b2.f22884d.get(b.f22461a);
        if (xVar == null || xVar.f22908a.isEmpty()) {
            set = b2.f22882b;
        } else {
            set = new HashSet(b2.f22882b);
            set.addAll(xVar.f22908a);
        }
        return !set.isEmpty();
    }
}
