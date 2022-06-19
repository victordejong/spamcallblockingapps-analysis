package com.google.api.client.googleapis.p281c.p282a.p283a;

import android.accounts.AccountManager;
import android.content.Context;
import com.google.api.client.util.C8731w;
/* renamed from: com.google.api.client.googleapis.c.a.a.a */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/c/a/a/a.class */
public final class C8594a {

    /* renamed from: a */
    private final AccountManager f38214a;

    public C8594a(AccountManager accountManager) {
        this.f38214a = (AccountManager) C8731w.m2836d(accountManager);
    }

    public C8594a(Context context) {
        this(AccountManager.get(context));
    }
}
