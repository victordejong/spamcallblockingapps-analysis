package com.dropbox.core.v2;

import com.dropbox.core.DbxException;
import com.dropbox.core.e;
import com.dropbox.core.h;
import com.dropbox.core.http.a;
import com.dropbox.core.i;
import com.dropbox.core.oauth.c;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/a.class */
public final class a extends b {

    /* renamed from: com.dropbox.core.v2.a$a  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/a$a.class */
    static final class C0360a extends c {

        /* renamed from: c  reason: collision with root package name */
        private final com.dropbox.core.oauth.a f17914c;

        C0360a(h hVar, com.dropbox.core.oauth.a aVar, e eVar, String str, com.dropbox.core.v2.c.a aVar2) {
            super(hVar, eVar, str, aVar2);
            Objects.requireNonNull(aVar, "credential");
            this.f17914c = aVar;
        }

        @Override // com.dropbox.core.v2.c
        public final c a() throws DbxException {
            this.f17914c.a(d(), e.f17752a);
            return new c(this.f17914c.f17827a, this.f17914c.f17828b.longValue());
        }

        @Override // com.dropbox.core.v2.c
        protected final void a(List<a.C0354a> list) {
            i.a(list);
            i.a(list, this.f17914c.f17827a);
        }

        @Override // com.dropbox.core.v2.c
        final boolean b() {
            return this.f17914c.f17829c != null;
        }

        @Override // com.dropbox.core.v2.c
        final boolean c() {
            if (!b()) {
                return false;
            }
            com.dropbox.core.oauth.a aVar = this.f17914c;
            return aVar.f17828b != null && ((System.currentTimeMillis() + 300000) > aVar.f17828b.longValue() ? 1 : ((System.currentTimeMillis() + 300000) == aVar.f17828b.longValue() ? 0 : -1)) > 0;
        }
    }

    public a(h hVar, com.dropbox.core.oauth.a aVar) {
        this(hVar, aVar, e.f17752a, null, null);
    }

    private a(h hVar, com.dropbox.core.oauth.a aVar, e eVar, String str, com.dropbox.core.v2.c.a aVar2) {
        super(new C0360a(hVar, aVar, eVar, str, aVar2));
    }

    public a(h hVar, String str) {
        this(hVar, str, e.f17752a, null);
    }

    public a(h hVar, String str, e eVar) {
        this(hVar, str, eVar, null);
    }

    public a(h hVar, String str, e eVar, String str2) {
        this(hVar, new com.dropbox.core.oauth.a(str), eVar, str2, null);
    }

    public a(h hVar, String str, String str2) {
        this(hVar, str, e.f17752a, str2);
    }

    a(c cVar) {
        super(cVar);
    }
}
