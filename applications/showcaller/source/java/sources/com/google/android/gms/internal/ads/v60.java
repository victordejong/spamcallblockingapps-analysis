package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/v60.class */
public final class v60<I, O> implements g60<I, O> {

    /* renamed from: a */
    private final i60<O> f31082a;

    /* renamed from: b */
    private final j60<I> f31083b;

    /* renamed from: c */
    private final d60 f31084c;

    /* renamed from: d */
    private final String f31085d;

    public v60(d60 d60Var, String str, j60<I> j60Var, i60<O> i60Var) {
        this.f31084c = d60Var;
        this.f31085d = str;
        this.f31083b = j60Var;
        this.f31082a = i60Var;
    }

    /* renamed from: d */
    public static /* synthetic */ void m10086d(v60 v60Var, x50 x50Var, e60 e60Var, Object obj, vi0 vi0Var) {
        try {
            C5667s.m18160d();
            String uuid = UUID.randomUUID().toString();
            m20.f26397o.m16124b(uuid, new u60(v60Var, x50Var, vi0Var));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", uuid);
            jSONObject.put("args", v60Var.f31083b.mo8186b(obj));
            e60Var.mo7957E0(v60Var.f31085d, jSONObject);
        } catch (Exception e) {
            try {
                vi0Var.m10014f(e);
                ei0.m15466d("Unable to invokeJavascript", e);
            } finally {
                x50Var.m9352g();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.uz2
    /* renamed from: a */
    public final r03<O> mo8403a(I i) {
        return mo10088b(i);
    }

    @Override // com.google.android.gms.internal.ads.g60
    /* renamed from: b */
    public final r03<O> mo10088b(I i) {
        vi0 vi0Var = new vi0();
        x50 m15939g = this.f31084c.m15939g(null);
        m15939g.m16034b(new s60(this, m15939g, i, vi0Var), new t60(this, vi0Var, m15939g));
        return vi0Var;
    }
}
