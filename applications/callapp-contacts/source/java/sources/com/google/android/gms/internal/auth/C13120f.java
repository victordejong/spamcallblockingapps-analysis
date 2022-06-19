package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.auth.api.C11690b;
import com.google.android.gms.auth.api.C11691c;
import com.google.android.gms.common.C11943d;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.internal.AbstractC12033f;
import com.google.android.gms.common.internal.C12031e;
import com.google.android.gms.common.internal.C12057x;
import java.util.HashSet;
/* renamed from: com.google.android.gms.internal.auth.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth/f.class */
public final class C13120f extends AbstractC12033f<AbstractC13121g> {

    /* renamed from: a */
    private final Bundle f50251a;

    public C13120f(Context context, Looper looper, C12031e c12031e, C11691c c11691c, AbstractC11826g.AbstractC11827a abstractC11827a, AbstractC11826g.AbstractC11828b abstractC11828b) {
        super(context, looper, 16, c12031e, abstractC11827a, abstractC11828b);
        if (c11691c == null) {
            this.f50251a = new Bundle();
            return;
        }
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
        return queryLocalInterface instanceof AbstractC13121g ? (AbstractC13121g) queryLocalInterface : new C13122h(iBinder);
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final Bundle getGetServiceRequestExtraArgs() {
        return this.f50251a;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d, com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final int getMinApkVersion() {
        return C11943d.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getStartServiceAction() {
        return "com.google.android.gms.auth.service.START";
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d, com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final boolean requiresSignIn() {
        HashSet hashSet;
        C12031e b = m19183b();
        Account account = b.f39540a;
        if (!TextUtils.isEmpty(account != null ? account.name : null)) {
            C12057x c12057x = b.f39543d.get(C11690b.f38995a);
            if (c12057x == null || c12057x.f39574a.isEmpty()) {
                hashSet = b.f39541b;
            } else {
                hashSet = new HashSet(b.f39541b);
                hashSet.addAll(c12057x.f39574a);
            }
            return !hashSet.isEmpty();
        }
        return false;
    }
}
