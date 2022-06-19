package com.mopub.volley.toolbox;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerFuture;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.mopub.common.Constants;
import com.mopub.volley.AuthFailureError;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/AndroidAuthenticator.class */
public class AndroidAuthenticator implements Authenticator {

    /* renamed from: a */
    private final AccountManager f60393a;

    /* renamed from: b */
    private final Account f60394b;

    /* renamed from: c */
    private final String f60395c;

    /* renamed from: d */
    private final boolean f60396d;

    AndroidAuthenticator(AccountManager accountManager, Account account, String str, boolean z) {
        this.f60393a = accountManager;
        this.f60394b = account;
        this.f60395c = str;
        this.f60396d = z;
    }

    public AndroidAuthenticator(Context context, Account account, String str) {
        this(context, account, str, false);
    }

    public AndroidAuthenticator(Context context, Account account, String str, boolean z) {
        this(AccountManager.get(context), account, str, z);
    }

    public Account getAccount() {
        return this.f60394b;
    }

    @Override // com.mopub.volley.toolbox.Authenticator
    public String getAuthToken() throws AuthFailureError {
        AccountManagerFuture<Bundle> authToken = this.f60393a.getAuthToken(this.f60394b, this.f60395c, this.f60396d, null, null);
        try {
            Bundle result = authToken.getResult();
            String str = null;
            if (authToken.isDone()) {
                str = null;
                if (!authToken.isCancelled()) {
                    if (result.containsKey(Constants.INTENT_SCHEME)) {
                        throw new AuthFailureError((Intent) result.getParcelable(Constants.INTENT_SCHEME));
                    }
                    str = result.getString("authtoken");
                }
            }
            if (str != null) {
                return str;
            }
            throw new AuthFailureError("Got null auth token for type: " + this.f60395c);
        } catch (Exception e) {
            throw new AuthFailureError("Error while retrieving auth token", e);
        }
    }

    public String getAuthTokenType() {
        return this.f60395c;
    }

    @Override // com.mopub.volley.toolbox.Authenticator
    public void invalidateAuthToken(String str) {
        this.f60393a.invalidateAuthToken(this.f60394b.type, str);
    }
}
