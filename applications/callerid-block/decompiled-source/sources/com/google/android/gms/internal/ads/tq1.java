package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tq1.class */
public final class tq1 {

    /* renamed from: a */
    private final Executor f8710a;

    /* renamed from: b */
    private final to f8711b;

    public tq1(Executor executor, to toVar) {
        this.f8710a = executor;
        this.f8711b = toVar;
    }

    /* renamed from: a */
    public final void m5497a(List<String> list) {
        for (String str : list) {
            m5496b(str);
        }
    }

    /* renamed from: b */
    public final void m5496b(final String str) {
        this.f8710a.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.sq1

            /* renamed from: b */
            private final tq1 f8542b;

            /* renamed from: c */
            private final String f8543c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8542b = this;
                this.f8543c = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f8542b.m5495c(this.f8543c);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final /* synthetic */ void m5495c(String str) {
        this.f8711b.g(str);
    }
}
