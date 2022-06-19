package p193e.p1577m.p1578a.p1642f.p1644b;

import android.accounts.Account;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.auth.TokenData;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.android.gms.auth.zzd;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.internal.auth.zzay;
import com.google.android.gms.internal.auth.zzf;
import java.io.IOException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.f.b.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/b/c.class */
public final class C24894c implements AbstractC24896e<TokenData> {

    /* renamed from: a */
    public final /* synthetic */ Account f69786a;

    /* renamed from: b */
    public final /* synthetic */ String f69787b;

    /* renamed from: c */
    public final /* synthetic */ Bundle f69788c;

    public C24894c(Account account, String str, Bundle bundle) {
        this.f69786a = account;
        this.f69787b = str;
        this.f69788c = bundle;
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1644b.AbstractC24896e
    /* renamed from: a */
    public final TokenData mo4301a(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        TokenData tokenData;
        Bundle zza = zzf.zza(iBinder).zza(this.f69786a, this.f69787b, this.f69788c);
        zzd.m39093c(zza);
        Parcelable.Creator<TokenData> creator = TokenData.CREATOR;
        zza.setClassLoader(TokenData.class.getClassLoader());
        Bundle bundle = zza.getBundle("tokenDetails");
        if (bundle == null) {
            tokenData = null;
        } else {
            bundle.setClassLoader(TokenData.class.getClassLoader());
            tokenData = (TokenData) bundle.getParcelable("TokenData");
        }
        if (tokenData != null) {
            return tokenData;
        }
        String string = zza.getString("Error");
        Intent intent = (Intent) zza.getParcelable("userRecoveryIntent");
        zzay zzc = zzay.zzc(string);
        boolean z = false;
        if (zzay.zza(zzc)) {
            Logger logger = zzd.f5577c;
            String valueOf = String.valueOf(zzc);
            logger.m38817b("GoogleAuthUtil", C22128a.m8674Q1(valueOf.length() + 31, "isUserRecoverableError status: ", valueOf));
            throw new UserRecoverableAuthException(string, intent);
        }
        if (zzay.NETWORK_ERROR.equals(zzc) || zzay.SERVICE_UNAVAILABLE.equals(zzc) || zzay.INTNERNAL_ERROR.equals(zzc)) {
            z = true;
        }
        if (!z) {
            throw new GoogleAuthException(string);
        }
        throw new IOException(string);
    }
}
