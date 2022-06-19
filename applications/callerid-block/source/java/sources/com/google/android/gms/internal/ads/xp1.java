package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xp1.class */
public final class xp1 {

    /* renamed from: a */
    private final Executor f9142a;

    /* renamed from: b */
    private final to f9143b;

    public xp1(Executor executor, to toVar) {
        this.f9142a = executor;
        this.f9143b = toVar;
    }

    /* renamed from: a */
    public final void m4873a(String str) {
        this.f9142a.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.wp1

            /* renamed from: b */
            private final xp1 f9042b;

            /* renamed from: c */
            private final String f9043c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9042b = this;
                this.f9043c = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f9042b.m4872b(this.f9043c);
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ void m4872b(String str) {
        this.f9143b.g(str);
    }
}
