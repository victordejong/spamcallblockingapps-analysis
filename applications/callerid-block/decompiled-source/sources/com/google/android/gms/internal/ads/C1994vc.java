package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C1378a;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.AbstractC1445r;
import com.google.android.gms.ads.internal.util.C1433l1;
import com.google.android.gms.ads.internal.util.C1438n0;
import com.google.android.gms.ads.internal.util.y0;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.vc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vc.class */
public final class C1994vc {

    /* renamed from: b */
    private final Context f8877b;

    /* renamed from: c */
    private final String f8878c;

    /* renamed from: d */
    private final zzbbq f8879d;

    /* renamed from: e */
    private final AbstractC1445r<pb> f8880e;

    /* renamed from: f */
    private uc f8881f;

    /* renamed from: a */
    private final Object f8876a = new Object();

    /* renamed from: g */
    private int f8882g = 1;

    public C1994vc(Context context, zzbbq zzbbqVar, String str, AbstractC1445r<pb> rVar, AbstractC1445r<pb> rVar2) {
        this.f8878c = str;
        this.f8877b = context.getApplicationContext();
        this.f8879d = zzbbqVar;
        this.f8880e = rVar2;
    }

    /* renamed from: a */
    protected final uc m5301a(zh2 zh2Var) {
        final uc ucVar = new uc(this.f8880e);
        C2073zo.f9414e.execute(new Runnable(this, null, ucVar) { // from class: com.google.android.gms.internal.ads.zb

            /* renamed from: b */
            private final C1994vc f9328b;

            /* renamed from: c */
            private final uc f9329c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9328b = this;
                this.f9329c = ucVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f9328b.m5298d(null, this.f9329c);
            }
        });
        ucVar.m6531a(new kc(this, ucVar), new lc(this, ucVar));
        return ucVar;
    }

    /* renamed from: b */
    public final pc m5300b(zh2 zh2Var) {
        synchronized (this.f8876a) {
            synchronized (this.f8876a) {
                uc ucVar = this.f8881f;
                if (ucVar != null && this.f8882g == 0) {
                    ucVar.m6531a(new ac(this), bc.a);
                }
            }
            uc ucVar2 = this.f8881f;
            if (!(ucVar2 == null || ucVar2.m6528d() == -1)) {
                int i = this.f8882g;
                if (i == 0) {
                    return this.f8881f.f();
                } else if (i == 1) {
                    this.f8882g = 2;
                    m5301a(null);
                    return this.f8881f.f();
                } else {
                    return this.f8881f.f();
                }
            }
            this.f8882g = 2;
            uc a = m5301a(null);
            this.f8881f = a;
            return a.f();
        }
    }

    /* renamed from: c */
    final /* synthetic */ void m5299c(pb pbVar) {
        if (pbVar.h()) {
            this.f8882g = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final /* synthetic */ void m5298d(zh2 zh2Var, uc ucVar) {
        try {
            xb xbVar = new xb(this.f8877b, this.f8879d, (zh2) null, (C1378a) null);
            xbVar.h0(new cc(this, ucVar, xbVar));
            xbVar.H0("/jsLoaded", new gc(this, ucVar, xbVar));
            C1438n0 n0Var = new C1438n0();
            hc hcVar = new hc(this, (zh2) null, xbVar, n0Var);
            n0Var.m8737b(hcVar);
            xbVar.H0("/requestReload", hcVar);
            if (this.f8878c.endsWith(".js")) {
                xbVar.x(this.f8878c);
            } else if (this.f8878c.startsWith("<html>")) {
                xbVar.T(this.f8878c);
            } else {
                xbVar.s(this.f8878c);
            }
            C1433l1.f5594i.postDelayed(new RunnableC1800jc(this, ucVar, xbVar), 60000L);
        } catch (Throwable th) {
            C1894po.m6182d("Error creating webview.", th);
            C1407r.m8916h().m4590g(th, "SdkJavascriptFactory.loadJavascriptEngine");
            ucVar.m6529c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final /* synthetic */ void m5297e(uc ucVar, pb pbVar) {
        synchronized (this.f8876a) {
            if (!(ucVar.m6528d() == -1 || ucVar.m6528d() == 1)) {
                ucVar.m6529c();
                C2073zo.f9414e.execute(RunnableC1732fc.m7555a(pbVar));
                y0.k("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
