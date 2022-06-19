package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.beb;
import com.google.android.gms.tasks.AbstractC14182e;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14188k;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvo.class */
public final class cvo {

    /* renamed from: a */
    final Context f46640a;

    /* renamed from: b */
    final cuy f46641b;

    /* renamed from: c */
    final cvu f46642c;

    /* renamed from: d */
    final cvu f46643d;

    /* renamed from: e */
    AbstractC14185h<beb.C12217a> f46644e;

    /* renamed from: f */
    AbstractC14185h<beb.C12217a> f46645f;

    /* renamed from: g */
    private final Executor f46646g;

    /* renamed from: h */
    private final cvc f46647h;

    private cvo(Context context, Executor executor, cuy cuyVar, cvc cvcVar, cvs cvsVar, cvr cvrVar) {
        this.f46640a = context;
        this.f46646g = executor;
        this.f46641b = cuyVar;
        this.f46647h = cvcVar;
        this.f46642c = cvsVar;
        this.f46643d = cvrVar;
    }

    /* renamed from: a */
    public static beb.C12217a m17161a(AbstractC14185h<beb.C12217a> abstractC14185h, beb.C12217a c12217a) {
        return !abstractC14185h.mo11478b() ? c12217a : abstractC14185h.mo11475d();
    }

    /* renamed from: a */
    public static cvo m17162a(Context context, Executor executor, cuy cuyVar, cvc cvcVar) {
        cvo cvoVar = new cvo(context, executor, cuyVar, cvcVar, new cvs(), new cvr());
        if (cvoVar.f46647h.mo17181b()) {
            cvoVar.f46644e = cvoVar.m17160a(new Callable(cvoVar) { // from class: com.google.android.gms.internal.ads.cvn

                /* renamed from: a */
                private final cvo f46639a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f46639a = cvoVar;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    cvo cvoVar2 = this.f46639a;
                    return cvoVar2.f46642c.mo17152a(cvoVar2.f46640a);
                }
            });
        } else {
            cvoVar.f46644e = C14188k.m11464a(cvoVar.f46642c.mo17153a());
        }
        cvoVar.f46645f = cvoVar.m17160a(new Callable(cvoVar) { // from class: com.google.android.gms.internal.ads.cvq

            /* renamed from: a */
            private final cvo f46649a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46649a = cvoVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                cvo cvoVar2 = this.f46649a;
                return cvoVar2.f46643d.mo17152a(cvoVar2.f46640a);
            }
        });
        return cvoVar;
    }

    /* renamed from: a */
    private final AbstractC14185h<beb.C12217a> m17160a(Callable<beb.C12217a> callable) {
        return C14188k.m11462a(this.f46646g, callable).mo11481a(this.f46646g, new AbstractC14182e(this) { // from class: com.google.android.gms.internal.ads.cvp

            /* renamed from: a */
            private final cvo f46648a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46648a = this;
            }

            @Override // com.google.android.gms.tasks.AbstractC14182e
            public final void onFailure(Exception exc) {
                cvo cvoVar = this.f46648a;
                if (exc instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                cvoVar.f46641b.m17192a(2025, -1L, exc);
            }
        });
    }
}
