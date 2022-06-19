package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/u60.class */
public final class u60 implements b30 {

    /* renamed from: a */
    private final x50 f30534a;

    /* renamed from: b */
    private final vi0 f30535b;

    /* renamed from: c */
    final /* synthetic */ v60 f30536c;

    public u60(v60 v60Var, x50 x50Var, vi0 vi0Var) {
        this.f30536c = v60Var;
        this.f30534a = x50Var;
        this.f30535b = vi0Var;
    }

    @Override // com.google.android.gms.internal.ads.b30
    /* renamed from: r */
    public final void mo10397r(String str) {
        x50 x50Var;
        try {
            if (str == null) {
                this.f30535b.m10014f(new zzbtv());
            } else {
                this.f30535b.m10014f(new zzbtv(str));
            }
            x50Var = this.f30534a;
        } catch (IllegalStateException e) {
            x50Var = this.f30534a;
        } catch (Throwable th) {
            this.f30534a.m9352g();
            throw th;
        }
        x50Var.m9352g();
    }

    @Override // com.google.android.gms.internal.ads.b30
    /* renamed from: s */
    public final void mo10396s(JSONObject jSONObject) {
        x50 x50Var;
        i60 i60Var;
        try {
            try {
                vi0 vi0Var = this.f30535b;
                i60Var = this.f30536c.f31082a;
                vi0Var.m10016c(i60Var.mo11296s(jSONObject));
                x50Var = this.f30534a;
            } catch (IllegalStateException e) {
                x50Var = this.f30534a;
            } catch (JSONException e2) {
                this.f30535b.m10014f(e2);
                x50Var = this.f30534a;
            }
            x50Var.m9352g();
        } catch (Throwable th) {
            this.f30534a.m9352g();
            throw th;
        }
    }
}
