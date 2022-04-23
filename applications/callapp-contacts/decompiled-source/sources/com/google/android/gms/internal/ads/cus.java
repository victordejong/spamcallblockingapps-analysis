package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cus.class */
public final class cus {

    /* renamed from: a  reason: collision with root package name */
    final zc f26437a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f26438b;

    public cus(Executor executor, zc zcVar) {
        this.f26438b = executor;
        this.f26437a = zcVar;
    }

    public final void a(final String str) {
        this.f26438b.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.cur

            /* renamed from: a  reason: collision with root package name */
            private final cus f26435a;

            /* renamed from: b  reason: collision with root package name */
            private final String f26436b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26435a = this;
                this.f26436b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                cus cusVar = this.f26435a;
                cusVar.f26437a.zzen(this.f26436b);
            }
        });
    }

    public final void a(List<String> list) {
        for (String str : list) {
            a(str);
        }
    }
}
