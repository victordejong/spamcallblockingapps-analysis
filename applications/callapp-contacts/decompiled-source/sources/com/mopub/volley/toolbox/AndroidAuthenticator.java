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

    /* renamed from: a  reason: collision with root package name */
    private final AccountManager f34812a;

    /* renamed from: b  reason: collision with root package name */
    private final Account f34813b;

    /* renamed from: c  reason: collision with root package name */
    private final String f34814c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f34815d;

    AndroidAuthenticator(AccountManager accountManager, Account account, String str, boolean z) {
        this.f34812a = accountManager;
        this.f34813b = account;
        this.f34814c = str;
        this.f34815d = z;
    }

    public AndroidAuthenticator(Context context, Account account, String str) {
        this(context, account, str, false);
    }

    public AndroidAuthenticator(Context context, Account account, String str, boolean z) {
        this(AccountManager.get(context), account, str, z);
    }

    public Account getAccount() {
        return this.f34813b;
    }

    @Override // com.mopub.volley.toolbox.Authenticator
    public String getAuthToken() throws AuthFailureError {
        AccountManagerFuture<Bundle> authToken = this.f34812a.getAuthToken(this.f34813b, this.f34814c, this.f34815d, null, null);
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
            throw new AuthFailureError("Got null auth token for type: " + this.f34814c);
        } catch (Exception e) {
            throw new AuthFailureError("Error while retrieving auth token", e);
        }
    }

    public String getAuthTokenType() {
        return this.f34814c;
    }

    @Override // com.mopub.volley.toolbox.Authenticator
    public void invalidateAuthToken(String str) {
        this.f34812a.invalidateAuthToken(this.f34813b.type, str);
    }
}
