package com.mopub.volley.toolbox;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerFuture;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import com.mopub.common.Constants;
import com.mopub.volley.AuthFailureError;
@SuppressLint({"MissingPermission"})
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/AndroidAuthenticator.class */
public class AndroidAuthenticator implements Authenticator {

    /* renamed from: a */
    public final AccountManager f9530a;

    /* renamed from: b */
    public final Account f9531b;

    /* renamed from: c */
    public final String f9532c;

    /* renamed from: d */
    public final boolean f9533d;

    @VisibleForTesting
    public AndroidAuthenticator(AccountManager accountManager, Account account, String str, boolean z) {
        this.f9530a = accountManager;
        this.f9531b = account;
        this.f9532c = str;
        this.f9533d = z;
    }

    public AndroidAuthenticator(Context context, Account account, String str) {
        this(context, account, str, false);
    }

    public AndroidAuthenticator(Context context, Account account, String str, boolean z) {
        this(AccountManager.get(context), account, str, z);
    }

    public Account getAccount() {
        return this.f9531b;
    }

    @Override // com.mopub.volley.toolbox.Authenticator
    public String getAuthToken() throws AuthFailureError {
        AccountManagerFuture<Bundle> authToken = this.f9530a.getAuthToken(this.f9531b, this.f9532c, this.f9533d, null, null);
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
            throw new AuthFailureError("Got null auth token for type: " + this.f9532c);
        } catch (Exception e) {
            throw new AuthFailureError("Error while retrieving auth token", e);
        }
    }

    public String getAuthTokenType() {
        return this.f9532c;
    }

    @Override // com.mopub.volley.toolbox.Authenticator
    public void invalidateAuthToken(String str) {
        this.f9530a.invalidateAuthToken(this.f9531b.type, str);
    }
}
