package com.google.android.gms.auth;

import android.accounts.Account;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.a.a;
import com.google.android.gms.internal.auth.j;
import com.google.android.gms.internal.auth.o;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/f.class */
public final class f implements h<TokenData> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Account f22534a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f22535b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ Bundle f22536c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Account account, String str, Bundle bundle) {
        this.f22534a = account;
        this.f22535b = str;
        this.f22536c = bundle;
    }

    @Override // com.google.android.gms.auth.h
    public final /* synthetic */ TokenData a(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        a aVar;
        Bundle bundle = (Bundle) e.a(o.a(iBinder).a(this.f22534a, this.f22535b, this.f22536c));
        TokenData zza = TokenData.zza(bundle, "tokenDetails");
        if (zza != null) {
            return zza;
        }
        String string = bundle.getString("Error");
        Intent intent = (Intent) bundle.getParcelable("userRecoveryIntent");
        j zzc = j.zzc(string);
        boolean z = false;
        if (!j.zza(zzc)) {
            if (j.NETWORK_ERROR.equals(zzc) || j.SERVICE_UNAVAILABLE.equals(zzc) || j.INTNERNAL_ERROR.equals(zzc)) {
                z = true;
            }
            if (z) {
                throw new IOException(string);
            }
            throw new GoogleAuthException(string);
        }
        aVar = e.e;
        String valueOf = String.valueOf(zzc);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 31);
        sb.append("isUserRecoverableError status: ");
        sb.append(valueOf);
        aVar.b("GoogleAuthUtil", sb.toString());
        throw new UserRecoverableAuthException(string, intent);
    }
}
