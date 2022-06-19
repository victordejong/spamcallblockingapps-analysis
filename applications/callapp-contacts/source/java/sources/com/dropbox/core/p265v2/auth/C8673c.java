package com.dropbox.core.p265v2.auth;

import com.dropbox.core.C8621n;
import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.AbstractC8685c;
/* renamed from: com.dropbox.core.v2.auth.c */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/c.class */
public final class C8673c {

    /* renamed from: a */
    private final AbstractC8685c f30766a;

    public C8673c(AbstractC8685c abstractC8685c) {
        this.f30766a = abstractC8685c;
    }

    /* renamed from: a */
    public final void m25187a() throws DbxApiException, DbxException {
        try {
            AbstractC8685c abstractC8685c = this.f30766a;
            String str = abstractC8685c.f30788a.f30533b;
            C8548d.C8557i c8557i = C8548d.C8557i.f30460a;
            abstractC8685c.m25175a(str, "2/auth/token/revoke", null, c8557i, c8557i, C8548d.C8557i.f30460a);
        } catch (DbxWrappedException e) {
            String str2 = e.f30438b;
            C8621n c8621n = e.f30439c;
            throw new DbxApiException(str2, c8621n, "Unexpected error response for \"token/revoke\":" + e.f30437a);
        }
    }
}
