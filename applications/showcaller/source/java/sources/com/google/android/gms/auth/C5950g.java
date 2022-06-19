package com.google.android.gms.auth;

import android.accounts.Account;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.common.p269i.C6099a;
import com.google.android.gms.internal.auth.AbstractBinderC7268m;
import com.google.android.gms.internal.auth.zzay;
import java.io.IOException;
/* renamed from: com.google.android.gms.auth.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/g.class */
public final class C5950g implements AbstractC5952i<TokenData> {

    /* renamed from: a */
    private final /* synthetic */ Account f19084a;

    /* renamed from: b */
    private final /* synthetic */ String f19085b;

    /* renamed from: c */
    private final /* synthetic */ Bundle f19086c;

    public C5950g(Account account, String str, Bundle bundle) {
        this.f19084a = account;
        this.f19085b = str;
        this.f19086c = bundle;
    }

    @Override // com.google.android.gms.auth.AbstractC5952i
    /* renamed from: a */
    public final /* synthetic */ TokenData mo17550a(IBinder iBinder) {
        Object m17554h;
        C6099a c6099a;
        m17554h = C5949f.m17554h(AbstractBinderC7268m.m7825c0(iBinder).mo7824S5(this.f19084a, this.f19085b, this.f19086c));
        Bundle bundle = (Bundle) m17554h;
        TokenData m17725k0 = TokenData.m17725k0(bundle, "tokenDetails");
        if (m17725k0 != null) {
            return m17725k0;
        }
        String string = bundle.getString("Error");
        Intent intent = (Intent) bundle.getParcelable("userRecoveryIntent");
        zzay zzc = zzay.zzc(string);
        boolean z = false;
        if (!zzay.zza(zzc)) {
            if (zzay.NETWORK_ERROR.equals(zzc) || zzay.SERVICE_UNAVAILABLE.equals(zzc) || zzay.INTNERNAL_ERROR.equals(zzc)) {
                z = true;
            }
            if (!z) {
                throw new GoogleAuthException(string);
            }
            throw new IOException(string);
        }
        c6099a = C5949f.f19083e;
        String valueOf = String.valueOf(zzc);
        StringBuilder sb = new StringBuilder(valueOf.length() + 31);
        sb.append("isUserRecoverableError status: ");
        sb.append(valueOf);
        c6099a.m17178f("GoogleAuthUtil", sb.toString());
        throw new UserRecoverableAuthException(string, intent);
    }
}
