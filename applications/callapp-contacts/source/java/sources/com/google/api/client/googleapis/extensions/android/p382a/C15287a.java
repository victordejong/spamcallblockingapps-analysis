package com.google.api.client.googleapis.extensions.android.p382a;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import com.google.common.base.C15391m;
/* renamed from: com.google.api.client.googleapis.extensions.android.a.a */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/extensions/android/a/a.class */
public final class C15287a {

    /* renamed from: a */
    private final AccountManager f55252a;

    public C15287a(AccountManager accountManager) {
        this.f55252a = (AccountManager) C15391m.m8946a(accountManager);
    }

    public C15287a(Context context) {
        this(AccountManager.get(context));
    }

    /* renamed from: a */
    public final Account[] m9165a() {
        return this.f55252a.getAccountsByType("com.google");
    }
}
