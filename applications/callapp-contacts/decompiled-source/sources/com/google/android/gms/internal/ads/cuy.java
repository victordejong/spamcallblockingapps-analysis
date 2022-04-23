package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.aut;
import com.google.android.gms.tasks.b;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.k;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cuy.class */
public final class cuy {

    /* renamed from: d  reason: collision with root package name */
    private static volatile aut.a.c f26445d = aut.a.c.UNKNOWN;

    /* renamed from: a  reason: collision with root package name */
    private final Context f26446a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f26447b;

    /* renamed from: c  reason: collision with root package name */
    private final h<ehq> f26448c;

    private cuy(Context context, Executor executor, h<ehq> hVar) {
        this.f26446a = context;
        this.f26447b = executor;
        this.f26448c = hVar;
    }

    public static cuy a(final Context context, Executor executor) {
        return new cuy(context, executor, k.a(executor, new Callable(context) { // from class: com.google.android.gms.internal.ads.cva

            /* renamed from: a  reason: collision with root package name */
            private final Context f26453a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26453a = context;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return cuy.a(this.f26453a);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ ehq a(Context context) throws Exception {
        return new ehq(context, "GLAS", null);
    }

    private final h<Boolean> a(final int i, long j, Exception exc, String str, String str2) {
        final aut.a.b a2 = aut.a.a().a(this.f26446a.getPackageName()).a(j);
        a2.a(f26445d);
        if (exc != null) {
            a2.b(cyq.c(exc)).c(exc.getClass().getName());
        }
        if (str2 != null) {
            a2.d(str2);
        }
        if (str != null) {
            a2.e(str);
        }
        return this.f26448c.a(this.f26447b, new b(a2, i) { // from class: com.google.android.gms.internal.ads.cuz

            /* renamed from: a  reason: collision with root package name */
            private final aut.a.b f26449a;

            /* renamed from: b  reason: collision with root package name */
            private final int f26450b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26449a = a2;
                this.f26450b = i;
            }

            @Override // com.google.android.gms.tasks.b
            public final Object then(h hVar) {
                return cuy.a(this.f26449a, this.f26450b, hVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ Boolean a(aut.a.b bVar, int i, h hVar) throws Exception {
        if (!hVar.b()) {
            return Boolean.FALSE;
        }
        ehu a2 = ((ehq) hVar.d()).a(bVar.f().g());
        a2.f27853b = i;
        a2.a();
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(aut.a.c cVar) {
        f26445d = cVar;
    }

    public final h<Boolean> a(int i, long j) {
        return a(i, j, null, null, null);
    }

    public final h<Boolean> a(int i, long j, Exception exc) {
        return a(i, j, exc, null, null);
    }

    public final h<Boolean> a(int i, long j, String str) {
        return a(i, j, null, str, null);
    }

    public final h<Boolean> a(int i, String str) {
        return a(i, 0L, null, null, str);
    }

    public final h<Boolean> b(int i, long j, String str) {
        return a(i, j, null, null, str);
    }
}
