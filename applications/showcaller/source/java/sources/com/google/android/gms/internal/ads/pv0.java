package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.common.util.AbstractC6227e;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pv0.class */
public final class pv0 implements AbstractC6888qj {

    /* renamed from: d */
    private wn0 f28164d;

    /* renamed from: e */
    private final Executor f28165e;

    /* renamed from: f */
    private final av0 f28166f;

    /* renamed from: g */
    private final AbstractC6227e f28167g;

    /* renamed from: h */
    private boolean f28168h = false;

    /* renamed from: i */
    private boolean f28169i = false;

    /* renamed from: j */
    private final dv0 f28170j = new dv0();

    public pv0(Executor executor, av0 av0Var, AbstractC6227e abstractC6227e) {
        this.f28165e = executor;
        this.f28166f = av0Var;
        this.f28167g = abstractC6227e;
    }

    /* renamed from: i */
    private final void m12125i() {
        try {
            JSONObject mo8186b = this.f28166f.mo8186b(this.f28170j);
            if (this.f28164d == null) {
                return;
            }
            this.f28165e.execute(new Runnable(this, mo8186b) { // from class: com.google.android.gms.internal.ads.nv0

                /* renamed from: d */
                private final pv0 f27330d;

                /* renamed from: e */
                private final JSONObject f27331e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f27330d = this;
                    this.f27331e = mo8186b;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f27330d.m12126e(this.f27331e);
                }
            });
        } catch (JSONException e) {
            C5722o1.m17989l("Failed to call video active view js", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6888qj
    /* renamed from: Y */
    public final void mo7924Y(C6851pj c6851pj) {
        dv0 dv0Var = this.f28170j;
        dv0Var.f21876a = this.f28169i ? false : c6851pj.f28023j;
        dv0Var.f21879d = this.f28167g.mo16806b();
        this.f28170j.f21881f = c6851pj;
        if (this.f28168h) {
            m12125i();
        }
    }

    /* renamed from: a */
    public final void m12130a(wn0 wn0Var) {
        this.f28164d = wn0Var;
    }

    /* renamed from: b */
    public final void m12129b() {
        this.f28168h = false;
    }

    /* renamed from: c */
    public final void m12128c() {
        this.f28168h = true;
        m12125i();
    }

    /* renamed from: d */
    public final void m12127d(boolean z) {
        this.f28169i = z;
    }

    /* renamed from: e */
    public final /* synthetic */ void m12126e(JSONObject jSONObject) {
        this.f28164d.mo7957E0("AFMA_updateActiveView", jSONObject);
    }
}
