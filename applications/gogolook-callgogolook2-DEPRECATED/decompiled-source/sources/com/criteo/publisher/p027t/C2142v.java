package com.criteo.publisher.p027t;

import androidx.annotation.NonNull;
import com.criteo.publisher.AbstractRunnableC2020m;
import com.criteo.publisher.model.C2042p;
import com.criteo.publisher.p020a0.C1917h;
import com.criteo.publisher.p031x.C2166d;
import java.io.IOException;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Executor;
/* renamed from: com.criteo.publisher.t.v */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/v.class */
public class C2142v {
    @NonNull

    /* renamed from: a */
    public final AbstractC2141u f2433a;
    @NonNull

    /* renamed from: b */
    public final C2166d f2434b;
    @NonNull

    /* renamed from: c */
    public final C1917h f2435c;
    @NonNull

    /* renamed from: d */
    public final C2042p f2436d;
    @NonNull

    /* renamed from: e */
    public final Executor f2437e;

    /* renamed from: com.criteo.publisher.t.v$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/v$b.class */
    public static class C2144b extends AbstractRunnableC2020m {
        @NonNull

        /* renamed from: c */
        public final AbstractC2141u f2438c;
        @NonNull

        /* renamed from: d */
        public final C2166d f2439d;
        @NonNull

        /* renamed from: e */
        public final C1917h f2440e;

        public C2144b(@NonNull AbstractC2141u uVar, @NonNull C2166d dVar, @NonNull C1917h hVar) {
            this.f2438c = uVar;
            this.f2439d = dVar;
            this.f2440e = hVar;
        }

        /* renamed from: a */
        private AbstractC2138t m35618a(Collection<AbstractC2127m> collection) {
            return AbstractC2138t.m35635a(collection, this.f2440e.m36024m(), this.f2440e.m36025l());
        }

        /* renamed from: b */
        private void m35617b(Collection<AbstractC2127m> collection) {
            for (AbstractC2127m mVar : collection) {
                this.f2438c.mo35602a(mVar);
            }
        }

        @Override // com.criteo.publisher.AbstractRunnableC2020m
        /* renamed from: a */
        public void mo35563a() throws IOException {
            List<AbstractC2127m> a = this.f2438c.mo35603a(this.f2440e.m36033d());
            if (!a.isEmpty()) {
                try {
                    this.f2439d.m35559a(m35618a(a));
                } catch (Throwable th) {
                    m35617b(a);
                    throw th;
                }
            }
        }
    }

    public C2142v(@NonNull AbstractC2141u uVar, @NonNull C2166d dVar, @NonNull C1917h hVar, @NonNull C2042p pVar, @NonNull Executor executor) {
        this.f2433a = uVar;
        this.f2434b = dVar;
        this.f2435c = hVar;
        this.f2436d = pVar;
        this.f2437e = executor;
    }

    /* renamed from: a */
    public void m35619a() {
        if (this.f2436d.m35834e()) {
            this.f2437e.execute(new C2144b(this.f2433a, this.f2434b, this.f2435c));
        }
    }
}
