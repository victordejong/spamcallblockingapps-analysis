package com.google.firebase.c;

import android.content.Context;
import com.google.firebase.c.f;
import com.google.firebase.components.e;
import com.google.firebase.components.r;
import com.google.firebase.components.u;
import com.google.firebase.d.b;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/c/a.class */
public final class a implements f {

    /* renamed from: d  reason: collision with root package name */
    private static final ThreadFactory f32222d = d.a();

    /* renamed from: a  reason: collision with root package name */
    private b<g> f32223a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<e> f32224b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f32225c;

    private a(final Context context, Set<e> set) {
        this(new u(new b(context) { // from class: com.google.firebase.c.b

            /* renamed from: a  reason: collision with root package name */
            private final Context f32226a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32226a = context;
            }

            @Override // com.google.firebase.d.b
            public final Object a() {
                g a2;
                a2 = g.a(this.f32226a);
                return a2;
            }
        }), set, new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f32222d));
    }

    a(b<g> bVar, Set<e> set, Executor executor) {
        this.f32223a = bVar;
        this.f32224b = set;
        this.f32225c = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ f a(e eVar) {
        return new a((Context) eVar.a(Context.class), eVar.b(e.class));
    }

    public static com.google.firebase.components.b<f> a() {
        return com.google.firebase.components.b.a(f.class).a(r.b(Context.class)).a(r.c(e.class)).a(c.a()).a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Thread a(Runnable runnable) {
        return new Thread(runnable, "heartbeat-information-executor");
    }

    @Override // com.google.firebase.c.f
    public final f.a a(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        boolean a2 = this.f32223a.a().a(str, currentTimeMillis);
        boolean a3 = this.f32223a.a().a(currentTimeMillis);
        return (!a2 || !a3) ? a3 ? f.a.GLOBAL : a2 ? f.a.SDK : f.a.NONE : f.a.COMBINED;
    }
}
