package com.google.api.client.auth.openidconnect;

import com.google.api.client.p379a.AbstractC15230i;
import com.google.common.base.C15391m;
import java.util.Collection;
import java.util.Collections;
/* renamed from: com.google.api.client.auth.openidconnect.a */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/openidconnect/a.class */
public class C15270a {

    /* renamed from: a */
    private final AbstractC15230i f55180a;

    /* renamed from: b */
    private final long f55181b;

    /* renamed from: c */
    private final Collection<String> f55182c;

    /* renamed from: d */
    private final Collection<String> f55183d;

    /* renamed from: com.google.api.client.auth.openidconnect.a$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/openidconnect/a$a.class */
    public static class C15271a {

        /* renamed from: a */
        AbstractC15230i f55184a = AbstractC15230i.f55077a;

        /* renamed from: b */
        long f55185b = 300;

        /* renamed from: c */
        Collection<String> f55186c;

        /* renamed from: d */
        Collection<String> f55187d;

        /* renamed from: a */
        public C15271a mo9170a(Collection<String> collection) {
            C15391m.m8942a(collection == null || !collection.isEmpty(), "Issuers must not be empty");
            this.f55186c = collection;
            return this;
        }
    }

    public C15270a() {
        this(new C15271a());
    }

    public C15270a(C15271a c15271a) {
        this.f55180a = c15271a.f55184a;
        this.f55181b = c15271a.f55185b;
        this.f55182c = c15271a.f55186c == null ? null : Collections.unmodifiableCollection(c15271a.f55186c);
        this.f55183d = c15271a.f55187d == null ? null : Collections.unmodifiableCollection(c15271a.f55187d);
    }

    /* renamed from: a */
    public final boolean m9181a(IdToken idToken) {
        Collection<String> collection = this.f55182c;
        if (collection == null || idToken.verifyIssuer(collection)) {
            Collection<String> collection2 = this.f55183d;
            return (collection2 == null || idToken.verifyAudience(collection2)) && idToken.verifyTime(this.f55180a.mo9243a(), this.f55181b);
        }
        return false;
    }
}
