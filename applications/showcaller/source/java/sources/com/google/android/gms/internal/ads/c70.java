package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/c70.class */
public final class c70 implements b30 {

    /* renamed from: a */
    private final vi0 f21119a;

    /* renamed from: b */
    final /* synthetic */ d70 f21120b;

    public c70(d70 d70Var, vi0 vi0Var) {
        this.f21120b = d70Var;
        this.f21119a = vi0Var;
    }

    @Override // com.google.android.gms.internal.ads.b30
    /* renamed from: r */
    public final void mo10397r(String str) {
        try {
            if (str == null) {
                this.f21119a.m10014f(new zzbtv());
            } else {
                this.f21119a.m10014f(new zzbtv(str));
            }
        } catch (IllegalStateException e) {
        }
    }

    @Override // com.google.android.gms.internal.ads.b30
    /* renamed from: s */
    public final void mo10396s(JSONObject jSONObject) {
        try {
            this.f21119a.m10016c(jSONObject);
        } catch (IllegalStateException e) {
        } catch (JSONException e2) {
            this.f21119a.m10014f(e2);
        }
    }
}
