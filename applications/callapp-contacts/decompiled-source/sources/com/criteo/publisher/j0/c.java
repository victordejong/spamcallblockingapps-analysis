package com.criteo.publisher.j0;

import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.g;
import com.criteo.publisher.h;
import com.criteo.publisher.model.n;
import com.criteo.publisher.model.o;
import com.criteo.publisher.model.p;
import com.criteo.publisher.model.r;
import com.criteo.publisher.model.s;
import com.criteo.publisher.v;
import java.util.List;
import java.util.concurrent.ExecutionException;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j0/c.class */
public final class c extends v {

    /* renamed from: a  reason: collision with root package name */
    private final g f17375a;

    /* renamed from: b  reason: collision with root package name */
    private final p f17376b;

    /* renamed from: c  reason: collision with root package name */
    private final h f17377c;

    /* renamed from: d  reason: collision with root package name */
    private final List<n> f17378d;
    private final ContextData e;
    private final g f;

    public c(g gVar, p pVar, h hVar, List<n> list, ContextData contextData, g gVar2) {
        this.f17375a = gVar;
        this.f17376b = pVar;
        this.f17377c = hVar;
        this.f17378d = list;
        this.e = contextData;
        this.f = gVar2;
    }

    @Override // com.criteo.publisher.v
    public final void a() throws ExecutionException, InterruptedException {
        o cdbRequest = this.f17376b.a(this.f17378d, this.e);
        String str = this.f17376b.a().get();
        g gVar = this.f;
        kotlin.jvm.internal.p.c(cdbRequest, "cdbRequest");
        gVar.f17330b.a(cdbRequest);
        try {
            r a2 = this.f17375a.a(cdbRequest, str);
            long a3 = this.f17377c.a();
            for (s sVar : a2.b()) {
                sVar.a(a3);
            }
            this.f.a(cdbRequest, a2);
        } catch (Exception e) {
            this.f.a(cdbRequest, e);
        }
    }
}
