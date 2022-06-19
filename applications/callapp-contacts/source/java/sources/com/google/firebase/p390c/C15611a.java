package com.google.firebase.p390c;

import android.content.Context;
import com.google.firebase.components.AbstractC15627e;
import com.google.firebase.components.C15622b;
import com.google.firebase.components.C15648r;
import com.google.firebase.components.C15651u;
import com.google.firebase.p390c.AbstractC15616f;
import com.google.firebase.p391d.AbstractC15728b;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.firebase.c.a */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/c/a.class */
public final class C15611a implements AbstractC15616f {

    /* renamed from: d */
    private static final ThreadFactory f55992d = ThreadFactoryC15614d.m8558a();

    /* renamed from: a */
    private AbstractC15728b<C15618g> f55993a;

    /* renamed from: b */
    private final Set<AbstractC15615e> f55994b;

    /* renamed from: c */
    private final Executor f55995c;

    private C15611a(Context context, Set<AbstractC15615e> set) {
        this(new C15651u(new AbstractC15728b(context) { // from class: com.google.firebase.c.b

            /* renamed from: a */
            private final Context f55996a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f55996a = context;
            }

            @Override // com.google.firebase.p391d.AbstractC15728b
            /* renamed from: a */
            public final Object mo8476a() {
                C15618g m8555a;
                m8555a = C15618g.m8555a(this.f55996a);
                return m8555a;
            }
        }), set, new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f55992d));
    }

    C15611a(AbstractC15728b<C15618g> abstractC15728b, Set<AbstractC15615e> set, Executor executor) {
        this.f55993a = abstractC15728b;
        this.f55994b = set;
        this.f55995c = executor;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC15616f m8561a(AbstractC15627e abstractC15627e) {
        return new C15611a((Context) abstractC15627e.mo8532a(Context.class), abstractC15627e.mo8525b(AbstractC15615e.class));
    }

    /* renamed from: a */
    public static C15622b<AbstractC15616f> m8563a() {
        return C15622b.m8552a(AbstractC15616f.class).m8544a(C15648r.m8510b(Context.class)).m8544a(C15648r.m8509c(AbstractC15615e.class)).m8545a(C15613c.m8559a()).m8547a();
    }

    /* renamed from: a */
    public static /* synthetic */ Thread m8560a(Runnable runnable) {
        return new Thread(runnable, "heartbeat-information-executor");
    }

    @Override // com.google.firebase.p390c.AbstractC15616f
    /* renamed from: a */
    public final AbstractC15616f.EnumC15617a mo8557a(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        boolean m8554a = this.f55993a.mo8476a().m8554a(str, currentTimeMillis);
        boolean m8556a = this.f55993a.mo8476a().m8556a(currentTimeMillis);
        return (!m8554a || !m8556a) ? m8556a ? AbstractC15616f.EnumC15617a.GLOBAL : m8554a ? AbstractC15616f.EnumC15617a.SDK : AbstractC15616f.EnumC15617a.NONE : AbstractC15616f.EnumC15617a.COMBINED;
    }
}
