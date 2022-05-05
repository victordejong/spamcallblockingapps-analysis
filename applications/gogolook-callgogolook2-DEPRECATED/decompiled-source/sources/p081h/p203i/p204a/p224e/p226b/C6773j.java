package p081h.p203i.p204a.p224e.p226b;

import android.accounts.Account;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.auth.TokenData;
import java.io.IOException;
import p081h.p203i.p204a.p224e.p235d.p243o.C7051a;
import p081h.p203i.p204a.p224e.p259j.p264e.AbstractBinderC7526n;
import p081h.p203i.p204a.p224e.p259j.p264e.EnumC7522j;
/* renamed from: h.i.a.e.b.j */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/j.class */
public final class C6773j implements AbstractC6775l<TokenData> {

    /* renamed from: a */
    public final /* synthetic */ Account f16648a;

    /* renamed from: b */
    public final /* synthetic */ String f16649b;

    /* renamed from: c */
    public final /* synthetic */ Bundle f16650c;

    public C6773j(Account account, String str, Bundle bundle) {
        this.f16648a = account;
        this.f16649b = str;
        this.f16650c = bundle;
    }

    @Override // p081h.p203i.p204a.p224e.p226b.AbstractC6775l
    /* renamed from: a */
    public final /* synthetic */ TokenData mo21933a(IBinder iBinder) throws RemoteException, IOException, C6710a {
        C7051a aVar;
        Bundle a = AbstractBinderC7526n.m20397a(iBinder).mo20396a(this.f16648a, this.f16649b, this.f16650c);
        C6772i.m21936a(a);
        Bundle bundle = a;
        TokenData a2 = TokenData.m32086a(bundle, "tokenDetails");
        if (a2 != null) {
            return a2;
        }
        String string = bundle.getString("Error");
        Intent intent = (Intent) bundle.getParcelable("userRecoveryIntent");
        EnumC7522j a3 = EnumC7522j.m20400a(string);
        boolean z = false;
        if (!EnumC7522j.m20401a(a3)) {
            if (EnumC7522j.NETWORK_ERROR.equals(a3) || EnumC7522j.SERVICE_UNAVAILABLE.equals(a3) || EnumC7522j.INTNERNAL_ERROR.equals(a3)) {
                z = true;
            }
            if (z) {
                throw new IOException(string);
            }
            throw new C6710a(string);
        }
        aVar = C6772i.f16647e;
        String valueOf = String.valueOf(a3);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 31);
        sb.append("isUserRecoverableError status: ");
        sb.append(valueOf);
        aVar.m21187e("GoogleAuthUtil", sb.toString());
        throw new C6713d(string, intent);
    }
}
