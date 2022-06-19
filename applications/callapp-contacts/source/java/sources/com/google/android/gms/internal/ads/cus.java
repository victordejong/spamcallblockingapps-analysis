package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cus.class */
public final class cus {

    /* renamed from: a */
    final C13090zc f46594a;

    /* renamed from: b */
    private final Executor f46595b;

    public cus(Executor executor, C13090zc c13090zc) {
        this.f46595b = executor;
        this.f46594a = c13090zc;
    }

    /* renamed from: a */
    public final void m17207a(String str) {
        this.f46595b.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.cur

            /* renamed from: a */
            private final cus f46592a;

            /* renamed from: b */
            private final String f46593b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46592a = this;
                this.f46593b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                cus cusVar = this.f46592a;
                cusVar.f46594a.zzen(this.f46593b);
            }
        });
    }

    /* renamed from: a */
    public final void m17206a(List<String> list) {
        for (String str : list) {
            m17207a(str);
        }
    }
}
