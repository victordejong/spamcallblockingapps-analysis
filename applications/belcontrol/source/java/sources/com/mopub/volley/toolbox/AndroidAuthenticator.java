package com.mopub.volley.toolbox;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerFuture;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.mopub.common.Constants;
import com.mopub.volley.AuthFailureError;
@SuppressLint({"MissingPermission"})
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/AndroidAuthenticator.class */
public class AndroidAuthenticator implements Authenticator {

    /* renamed from: a */
    public final AccountManager f5504a;

    /* renamed from: b */
    public final Account f5505b;

    /* renamed from: c */
    public final String f5506c;

    /* renamed from: d */
    public final boolean f5507d;

    public AndroidAuthenticator(AccountManager accountManager, Account account, String str, boolean z) {
        this.f5504a = accountManager;
        this.f5505b = account;
        this.f5506c = str;
        this.f5507d = z;
    }

    public AndroidAuthenticator(Context context, Account account, String str) {
        this(context, account, str, false);
    }

    public AndroidAuthenticator(Context context, Account account, String str, boolean z) {
        this(AccountManager.get(context), account, str, z);
    }

    public Account getAccount() {
        return this.f5505b;
    }

    @Override // com.mopub.volley.toolbox.Authenticator
    public String getAuthToken() {
        AccountManagerFuture<Bundle> authToken = this.f5504a.getAuthToken(this.f5505b, this.f5506c, this.f5507d, null, null);
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
            throw new AuthFailureError("Got null auth token for type: " + this.f5506c);
        } catch (Exception e) {
            throw new AuthFailureError("Error while retrieving auth token", e);
        }
    }

    public String getAuthTokenType() {
        return this.f5506c;
    }

    @Override // com.mopub.volley.toolbox.Authenticator
    public void invalidateAuthToken(String str) {
        this.f5504a.invalidateAuthToken(this.f5505b.type, str);
    }
}
