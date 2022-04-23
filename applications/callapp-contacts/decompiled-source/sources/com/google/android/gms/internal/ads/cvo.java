package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.beb;
import com.google.android.gms.tasks.e;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.k;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvo.class */
public final class cvo {

    /* renamed from: a  reason: collision with root package name */
    final Context f26476a;

    /* renamed from: b  reason: collision with root package name */
    final cuy f26477b;

    /* renamed from: c  reason: collision with root package name */
    final cvu f26478c;

    /* renamed from: d  reason: collision with root package name */
    final cvu f26479d;
    h<beb.a> e;
    h<beb.a> f;
    private final Executor g;
    private final cvc h;

    private cvo(Context context, Executor executor, cuy cuyVar, cvc cvcVar, cvs cvsVar, cvr cvrVar) {
        this.f26476a = context;
        this.g = executor;
        this.f26477b = cuyVar;
        this.h = cvcVar;
        this.f26478c = cvsVar;
        this.f26479d = cvrVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static beb.a a(h<beb.a> hVar, beb.a aVar) {
        return !hVar.b() ? aVar : hVar.d();
    }

    public static cvo a(Context context, Executor executor, cuy cuyVar, cvc cvcVar) {
        final cvo cvoVar = new cvo(context, executor, cuyVar, cvcVar, new cvs(), new cvr());
        if (cvoVar.h.b()) {
            cvoVar.e = cvoVar.a(new Callable(cvoVar) { // from class: com.google.android.gms.internal.ads.cvn

                /* renamed from: a  reason: collision with root package name */
                private final cvo f26475a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f26475a = cvoVar;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    cvo cvoVar2 = this.f26475a;
                    return cvoVar2.f26478c.a(cvoVar2.f26476a);
                }
            });
        } else {
            cvoVar.e = k.a(cvoVar.f26478c.a());
        }
        cvoVar.f = cvoVar.a(new Callable(cvoVar) { // from class: com.google.android.gms.internal.ads.cvq

            /* renamed from: a  reason: collision with root package name */
            private final cvo f26481a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26481a = cvoVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                cvo cvoVar2 = this.f26481a;
                return cvoVar2.f26479d.a(cvoVar2.f26476a);
            }
        });
        return cvoVar;
    }

    private final h<beb.a> a(Callable<beb.a> callable) {
        return k.a(this.g, callable).a(this.g, new e(this) { // from class: com.google.android.gms.internal.ads.cvp

            /* renamed from: a  reason: collision with root package name */
            private final cvo f26480a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26480a = this;
            }

            @Override // com.google.android.gms.tasks.e
            public final void onFailure(Exception exc) {
                cvo cvoVar = this.f26480a;
                if (exc instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                cvoVar.f26477b.a(2025, -1L, exc);
            }
        });
    }
}
