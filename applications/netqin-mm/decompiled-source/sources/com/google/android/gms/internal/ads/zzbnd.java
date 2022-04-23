package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.ads.zzbnd;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnd.class */
public final class zzbnd implements zzqu {

    /* renamed from: a */
    public zzbgj f25231a;

    /* renamed from: b */
    public final Executor f25232b;

    /* renamed from: c */
    public final zzbms f25233c;

    /* renamed from: d */
    public final Clock f25234d;

    /* renamed from: e */
    public boolean f25235e = false;

    /* renamed from: f */
    public boolean f25236f = false;

    /* renamed from: g */
    public zzbmw f25237g = new zzbmw();

    public zzbnd(Executor executor, zzbms zzbmsVar, Clock clock) {
        this.f25232b = executor;
        this.f25233c = zzbmsVar;
        this.f25234d = clock;
    }

    /* renamed from: a */
    public final void m15295a(zzbgj zzbgjVar) {
        this.f25231a = zzbgjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    /* renamed from: a */
    public final void mo11534a(zzqr zzqrVar) {
        this.f25237g.f25209a = this.f25236f ? false : zzqrVar.f28889j;
        this.f25237g.f25211c = this.f25234d.mo17092a();
        this.f25237g.f25213e = zzqrVar;
        if (this.f25235e) {
            m15290n();
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m15294a(JSONObject jSONObject) {
        this.f25231a.mo15569b("AFMA_updateActiveView", jSONObject);
    }

    /* renamed from: a */
    public final void m15293a(boolean z) {
        this.f25236f = z;
    }

    /* renamed from: j */
    public final void m15292j() {
        this.f25235e = false;
    }

    /* renamed from: m */
    public final void m15291m() {
        this.f25235e = true;
        m15290n();
    }

    /* renamed from: n */
    public final void m15290n() {
        try {
            final JSONObject a = this.f25233c.mo15308b(this.f25237g);
            if (this.f25231a != null) {
                this.f25232b.execute(new Runnable(this, a) { // from class: c.d.b.d.g.a.ic

                    /* renamed from: a */
                    public final zzbnd f13524a;

                    /* renamed from: b */
                    public final JSONObject f13525b;

                    {
                        this.f13524a = this;
                        this.f13525b = a;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f13524a.m15294a(this.f13525b);
                    }
                });
            }
        } catch (JSONException e) {
            zzayp.m16154e("Failed to call video active view js", e);
        }
    }
}
