package com.twitter.sdk.android.core.internal;

import com.twitter.sdk.android.core.o;
import com.twitter.sdk.android.core.services.AccountService;
import com.twitter.sdk.android.core.t;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/h.class */
public final class h implements e<t> {

    /* renamed from: a  reason: collision with root package name */
    private final a f35160a;

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/h$a.class */
    protected static final class a {
        protected a() {
        }
    }

    public h() {
        this(new a());
    }

    h(a aVar) {
        this.f35160a = aVar;
    }

    @Override // com.twitter.sdk.android.core.internal.e
    public final /* synthetic */ void a(t tVar) {
        AccountService accountService = new o(tVar).getAccountService();
        try {
            Boolean bool = Boolean.TRUE;
            Boolean bool2 = Boolean.FALSE;
            accountService.verifyCredentials(bool, bool2, bool2).a();
        } catch (IOException | RuntimeException e) {
        }
    }
}
