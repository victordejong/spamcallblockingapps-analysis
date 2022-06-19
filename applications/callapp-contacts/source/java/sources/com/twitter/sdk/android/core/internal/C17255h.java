package com.twitter.sdk.android.core.internal;

import com.twitter.sdk.android.core.C17283o;
import com.twitter.sdk.android.core.C17292t;
import com.twitter.sdk.android.core.services.AccountService;
import java.io.IOException;
/* renamed from: com.twitter.sdk.android.core.internal.h */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/h.class */
public final class C17255h implements AbstractC17252e<C17292t> {

    /* renamed from: a */
    private final C17256a f61008a;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: com.twitter.sdk.android.core.internal.h$a */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/h$a.class */
    public static final class C17256a {
        protected C17256a() {
        }
    }

    public C17255h() {
        this(new C17256a());
    }

    C17255h(C17256a c17256a) {
        this.f61008a = c17256a;
    }

    @Override // com.twitter.sdk.android.core.internal.AbstractC17252e
    /* renamed from: a */
    public final /* synthetic */ void mo5659a(C17292t c17292t) {
        AccountService accountService = new C17283o(c17292t).getAccountService();
        try {
            Boolean bool = Boolean.TRUE;
            Boolean bool2 = Boolean.FALSE;
            accountService.verifyCredentials(bool, bool2, bool2).mo56a();
        } catch (IOException | RuntimeException e) {
        }
    }
}
