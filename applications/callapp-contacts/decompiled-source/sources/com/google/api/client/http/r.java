package com.google.api.client.http;

import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/r.class */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private final w f31826a;

    /* renamed from: b  reason: collision with root package name */
    private final s f31827b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(w wVar, s sVar) {
        this.f31826a = wVar;
        this.f31827b = sVar;
    }

    public final q a(i iVar) throws IOException {
        return a("GET", iVar, null);
    }

    public final q a(i iVar, j jVar) throws IOException {
        return a("POST", iVar, jVar);
    }

    public final q a(String str, i iVar, j jVar) throws IOException {
        q buildRequest = this.f31826a.buildRequest();
        if (iVar != null) {
            buildRequest.a(iVar);
        }
        s sVar = this.f31827b;
        if (sVar != null) {
            sVar.a(buildRequest);
        }
        buildRequest.a(str);
        if (jVar != null) {
            buildRequest.h = jVar;
        }
        return buildRequest;
    }

    public final w a() {
        return this.f31826a;
    }

    public final q b(i iVar) throws IOException {
        return a("PUT", iVar, null);
    }

    public final s b() {
        return this.f31827b;
    }
}
