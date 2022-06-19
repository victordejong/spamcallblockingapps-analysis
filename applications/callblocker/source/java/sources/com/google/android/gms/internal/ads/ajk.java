package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC2708e;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajk.class */
public final class ajk implements dtr {

    /* renamed from: a */
    private act f9822a;

    /* renamed from: b */
    private final Executor f9823b;

    /* renamed from: c */
    private final aiz f9824c;

    /* renamed from: d */
    private final AbstractC2708e f9825d;

    /* renamed from: e */
    private boolean f9826e = false;

    /* renamed from: f */
    private boolean f9827f = false;

    /* renamed from: g */
    private ajd f9828g = new ajd();

    public ajk(Executor executor, aiz aizVar, AbstractC2708e abstractC2708e) {
        this.f9823b = executor;
        this.f9824c = aizVar;
        this.f9825d = abstractC2708e;
    }

    /* renamed from: c */
    private final void m13065c() {
        try {
            JSONObject mo7728a = this.f9824c.mo7728a(this.f9828g);
            if (this.f9822a == null) {
                return;
            }
            this.f9823b.execute(new Runnable(this, mo7728a) { // from class: com.google.android.gms.internal.ads.ajo

                /* renamed from: a */
                private final ajk f9833a;

                /* renamed from: b */
                private final JSONObject f9834b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f9833a = this;
                    this.f9834b = mo7728a;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f9833a.m13068a(this.f9834b);
                }
            });
        } catch (JSONException e) {
            C3556uu.m7051a("Failed to call video active view js", e);
        }
    }

    /* renamed from: a */
    public final void m13070a() {
        this.f9826e = false;
    }

    /* renamed from: a */
    public final void m13069a(act actVar) {
        this.f9822a = actVar;
    }

    @Override // com.google.android.gms.internal.ads.dtr
    /* renamed from: a */
    public final void mo7170a(dtt dttVar) {
        this.f9828g.f9799a = this.f9827f ? false : dttVar.f15739j;
        this.f9828g.f9801c = this.f9825d.mo13861b();
        this.f9828g.f9803e = dttVar;
        if (this.f9826e) {
            m13065c();
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m13068a(JSONObject jSONObject) {
        this.f9822a.mo7736a("AFMA_updateActiveView", jSONObject);
    }

    /* renamed from: a */
    public final void m13067a(boolean z) {
        this.f9827f = z;
    }

    /* renamed from: b */
    public final void m13066b() {
        this.f9826e = true;
        m13065c();
    }
}
