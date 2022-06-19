package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/d70.class */
public final class d70<I, O> implements uz2<I, O> {

    /* renamed from: a */
    private final i60<O> f21536a;

    /* renamed from: b */
    private final j60<I> f21537b;

    /* renamed from: c */
    private final String f21538c = "google.afma.activeView.handleUpdate";

    /* renamed from: d */
    private final r03<e60> f21539d;

    public d70(r03<e60> r03Var, String str, j60<I> j60Var, i60<O> i60Var) {
        this.f21539d = r03Var;
        this.f21537b = j60Var;
        this.f21536a = i60Var;
    }

    @Override // com.google.android.gms.internal.ads.uz2
    /* renamed from: a */
    public final r03<O> mo8403a(I i) {
        return m15883b(i);
    }

    /* renamed from: b */
    public final r03<O> m15883b(I i) {
        return k03.m13995i(this.f21539d, new uz2(this, i) { // from class: com.google.android.gms.internal.ads.b70

            /* renamed from: a */
            private final d70 f20303a;

            /* renamed from: b */
            private final Object f20304b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20303a = this;
                this.f20304b = i;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f20303a.m15882c(this.f20304b, (e60) obj);
            }
        }, qi0.f28500f);
    }

    /* renamed from: c */
    public final /* synthetic */ r03 m15882c(Object obj, e60 e60Var) {
        vi0 vi0Var = new vi0();
        C5667s.m18160d();
        String uuid = UUID.randomUUID().toString();
        m20.f26397o.m16124b(uuid, new c70(this, vi0Var));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", uuid);
        jSONObject.put("args", (JSONObject) obj);
        e60Var.mo7957E0(this.f21538c, jSONObject);
        return vi0Var;
    }
}
