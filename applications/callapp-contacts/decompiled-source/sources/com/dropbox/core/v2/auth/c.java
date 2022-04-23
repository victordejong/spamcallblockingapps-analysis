package com.dropbox.core.v2.auth;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.a.d;
import com.dropbox.core.n;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final com.dropbox.core.v2.c f17934a;

    public c(com.dropbox.core.v2.c cVar) {
        this.f17934a = cVar;
    }

    public final void a() throws DbxApiException, DbxException {
        try {
            com.dropbox.core.v2.c cVar = this.f17934a;
            String str = cVar.f17948a.f17753b;
            d.i iVar = d.i.f17718a;
            cVar.a(str, "2/auth/token/revoke", null, iVar, iVar, d.i.f17718a);
        } catch (DbxWrappedException e) {
            String str2 = e.f17696b;
            n nVar = e.f17697c;
            throw new DbxApiException(str2, nVar, "Unexpected error response for \"token/revoke\":" + e.f17695a);
        }
    }
}
