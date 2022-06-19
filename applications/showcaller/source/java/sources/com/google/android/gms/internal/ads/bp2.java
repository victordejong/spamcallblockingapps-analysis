package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bp2.class */
public final class bp2 {

    /* renamed from: a */
    private final Executor f20546a;

    /* renamed from: b */
    private final ii0 f20547b;

    public bp2(Executor executor, ii0 ii0Var) {
        this.f20546a = executor;
        this.f20547b = ii0Var;
    }

    /* renamed from: a */
    public final void m16303a(List<String> list) {
        for (String str : list) {
            m16302b(str);
        }
    }

    /* renamed from: b */
    public final void m16302b(String str) {
        this.f20546a.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.ap2

            /* renamed from: d */
            private final bp2 f20074d;

            /* renamed from: e */
            private final String f20075e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20074d = this;
                this.f20075e = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f20074d.m16301c(this.f20075e);
            }
        });
    }

    /* renamed from: c */
    public final /* synthetic */ void m16301c(String str) {
        this.f20547b.mo9583n(str);
    }
}
