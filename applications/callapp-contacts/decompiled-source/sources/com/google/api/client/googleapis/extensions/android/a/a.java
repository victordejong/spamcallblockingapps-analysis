package com.google.api.client.googleapis.extensions.android.a;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import com.google.common.base.m;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/extensions/android/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final AccountManager f31742a;

    public a(AccountManager accountManager) {
        this.f31742a = (AccountManager) m.a(accountManager);
    }

    public a(Context context) {
        this(AccountManager.get(context));
    }

    public final Account[] a() {
        return this.f31742a.getAccountsByType("com.google");
    }
}
