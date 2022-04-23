package com.android.volley.toolbox;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerFuture;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.android.volley.AuthFailureError;
import com.mopub.common.Constants;
/* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/AndroidAuthenticator.class */
public class AndroidAuthenticator implements Authenticator {
    public final Account mAccount;
    public final AccountManager mAccountManager;
    public final String mAuthTokenType;
    public final boolean mNotifyAuthFailure;

    public AndroidAuthenticator(AccountManager accountManager, Account account, String str, boolean z) {
        this.mAccountManager = accountManager;
        this.mAccount = account;
        this.mAuthTokenType = str;
        this.mNotifyAuthFailure = z;
    }

    public AndroidAuthenticator(Context context, Account account, String str) {
        this(context, account, str, false);
    }

    public AndroidAuthenticator(Context context, Account account, String str, boolean z) {
        this(AccountManager.get(context), account, str, z);
    }

    public Account getAccount() {
        return this.mAccount;
    }

    @Override // com.android.volley.toolbox.Authenticator
    public String getAuthToken() throws AuthFailureError {
        AccountManagerFuture<Bundle> authToken = this.mAccountManager.getAuthToken(this.mAccount, this.mAuthTokenType, this.mNotifyAuthFailure, null, null);
        try {
            Bundle result = authToken.getResult();
            String str = null;
            if (authToken.isDone()) {
                str = null;
                if (!authToken.isCancelled()) {
                    if (!result.containsKey(Constants.INTENT_SCHEME)) {
                        str = result.getString("authtoken");
                    } else {
                        throw new AuthFailureError((Intent) result.getParcelable(Constants.INTENT_SCHEME));
                    }
                }
            }
            if (str != null) {
                return str;
            }
            throw new AuthFailureError("Got null auth token for type: " + this.mAuthTokenType);
        } catch (Exception e) {
            throw new AuthFailureError("Error while retrieving auth token", e);
        }
    }

    public String getAuthTokenType() {
        return this.mAuthTokenType;
    }

    @Override // com.android.volley.toolbox.Authenticator
    public void invalidateAuthToken(String str) {
        this.mAccountManager.invalidateAuthToken(this.mAccount.type, str);
    }
}
