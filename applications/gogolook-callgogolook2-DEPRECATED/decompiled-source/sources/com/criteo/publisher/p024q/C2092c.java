package com.criteo.publisher.p024q;

import androidx.annotation.NonNull;
import com.criteo.publisher.model.C2037k;
import com.criteo.publisher.model.C2038l;
import com.criteo.publisher.model.C2041o;
import com.criteo.publisher.model.C2052w;
import com.criteo.publisher.p030w.C2158a;
import com.criteo.publisher.p030w.C2159b;
/* renamed from: com.criteo.publisher.q.c */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/q/c.class */
public class C2092c implements AbstractC2090a {

    /* renamed from: a */
    public final C2158a f2340a = C2159b.m35576b(C2092c.class);

    @Override // com.criteo.publisher.p024q.AbstractC2090a
    /* renamed from: a */
    public void mo35694a() {
        this.f2340a.m35580a("onSdkInitialized", new Object[0]);
    }

    @Override // com.criteo.publisher.p024q.AbstractC2090a
    /* renamed from: a */
    public void mo35693a(@NonNull C2037k kVar, @NonNull C2052w wVar) {
        this.f2340a.m35580a("onBidConsumed: %s", wVar);
    }

    @Override // com.criteo.publisher.p024q.AbstractC2090a
    /* renamed from: a */
    public void mo35692a(@NonNull C2038l lVar) {
        this.f2340a.m35580a("onCdbCallStarted: %s", lVar);
    }

    @Override // com.criteo.publisher.p024q.AbstractC2090a
    /* renamed from: a */
    public void mo35691a(@NonNull C2038l lVar, @NonNull C2041o oVar) {
        this.f2340a.m35580a("onCdbCallFinished: %s", oVar);
    }

    @Override // com.criteo.publisher.p024q.AbstractC2090a
    /* renamed from: a */
    public void mo35689a(@NonNull C2038l lVar, @NonNull Exception exc) {
        this.f2340a.m35581a("onCdbCallFailed", exc);
    }
}
