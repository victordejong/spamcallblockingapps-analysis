package com.google.android.gms.auth;

import android.accounts.Account;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.p349a.C11806a;
import com.google.android.gms.internal.auth.AbstractBinderC13129o;
import com.google.android.gms.internal.auth.EnumC13124j;
import java.io.IOException;
/* renamed from: com.google.android.gms.auth.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/f.class */
public final class C11773f implements AbstractC11775h<TokenData> {

    /* renamed from: a */
    private final /* synthetic */ Account f39089a;

    /* renamed from: b */
    private final /* synthetic */ String f39090b;

    /* renamed from: c */
    private final /* synthetic */ Bundle f39091c;

    public C11773f(Account account, String str, Bundle bundle) {
        this.f39089a = account;
        this.f39090b = str;
        this.f39091c = bundle;
    }

    @Override // com.google.android.gms.auth.AbstractC11775h
    /* renamed from: a */
    public final /* synthetic */ TokenData mo19509a(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        C11806a c11806a;
        Bundle bundle = (Bundle) C11772e.m19511a(AbstractBinderC13129o.m13617a(iBinder).mo13616a(this.f39089a, this.f39090b, this.f39091c));
        TokenData zza = TokenData.zza(bundle, "tokenDetails");
        if (zza != null) {
            return zza;
        }
        String string = bundle.getString("Error");
        Intent intent = (Intent) bundle.getParcelable("userRecoveryIntent");
        EnumC13124j zzc = EnumC13124j.zzc(string);
        boolean z = false;
        if (!EnumC13124j.zza(zzc)) {
            if (EnumC13124j.NETWORK_ERROR.equals(zzc) || EnumC13124j.SERVICE_UNAVAILABLE.equals(zzc) || EnumC13124j.INTNERNAL_ERROR.equals(zzc)) {
                z = true;
            }
            if (!z) {
                throw new GoogleAuthException(string);
            }
            throw new IOException(string);
        }
        c11806a = C11772e.f39088e;
        String valueOf = String.valueOf(zzc);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 31);
        sb.append("isUserRecoverableError status: ");
        sb.append(valueOf);
        c11806a.m19475b("GoogleAuthUtil", sb.toString());
        throw new UserRecoverableAuthException(string, intent);
    }
}
