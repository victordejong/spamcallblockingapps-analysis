package com.google.api.client.testing.a;

import com.google.api.client.http.w;
import com.google.api.client.http.z;
import com.google.common.base.m;
import java.io.IOException;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/testing/a/b.class */
public final class b extends w {

    /* renamed from: a  reason: collision with root package name */
    private Set<String> f31836a;

    /* renamed from: b  reason: collision with root package name */
    private c f31837b;

    /* renamed from: c  reason: collision with root package name */
    private d f31838c;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/testing/a/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        Set<String> f31839a;

        /* renamed from: b  reason: collision with root package name */
        c f31840b;

        /* renamed from: c  reason: collision with root package name */
        d f31841c;

        public final a a(d dVar) {
            m.b(this.f31840b == null, "Cannot set a low level HTTP response when a low level HTTP request has been set.");
            this.f31841c = dVar;
            return this;
        }

        public final b a() {
            return new b(this);
        }
    }

    public b() {
    }

    protected b(a aVar) {
        this.f31836a = aVar.f31839a;
        this.f31837b = aVar.f31840b;
        this.f31838c = aVar.f31841c;
    }

    @Override // com.google.api.client.http.w
    public final z buildRequest(String str, String str2) throws IOException {
        m.a(supportsMethod(str), "HTTP method %s not supported", str);
        c cVar = this.f31837b;
        if (cVar != null) {
            return cVar;
        }
        c cVar2 = new c(str2);
        this.f31837b = cVar2;
        d dVar = this.f31838c;
        if (dVar != null) {
            cVar2.f31842a = dVar;
        }
        return this.f31837b;
    }

    @Override // com.google.api.client.http.w
    public final boolean supportsMethod(String str) throws IOException {
        Set<String> set = this.f31836a;
        return set == null || set.contains(str);
    }
}
