package com.dropbox.core.v2;

import com.dropbox.core.v2.account.a;
import com.dropbox.core.v2.auth.c;
import com.dropbox.core.v2.files.d;
import com.dropbox.core.v2.sharing.l;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    protected final c f17941a;

    /* renamed from: b  reason: collision with root package name */
    public final c f17942b;

    /* renamed from: c  reason: collision with root package name */
    public final d f17943c;

    /* renamed from: d  reason: collision with root package name */
    private final a f17944d;
    private final com.dropbox.core.v2.b.a e;
    private final com.dropbox.core.v2.clouddocs.b f;
    private final com.dropbox.core.v2.contacts.a g;
    private final com.dropbox.core.v2.fileproperties.b h;
    private final com.dropbox.core.v2.filerequests.c i;
    private final com.dropbox.core.v2.paper.a j;
    private final l k;
    private final com.dropbox.core.v2.users.a l;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(c cVar) {
        this.f17941a = cVar;
        this.f17944d = new a(cVar);
        this.f17942b = new c(cVar);
        this.e = new com.dropbox.core.v2.b.a(cVar);
        this.f = new com.dropbox.core.v2.clouddocs.b(cVar);
        this.g = new com.dropbox.core.v2.contacts.a(cVar);
        this.h = new com.dropbox.core.v2.fileproperties.b(cVar);
        this.i = new com.dropbox.core.v2.filerequests.c(cVar);
        this.f17943c = new d(cVar);
        this.j = new com.dropbox.core.v2.paper.a(cVar);
        this.k = new l(cVar);
        this.l = new com.dropbox.core.v2.users.a(cVar);
    }
}
