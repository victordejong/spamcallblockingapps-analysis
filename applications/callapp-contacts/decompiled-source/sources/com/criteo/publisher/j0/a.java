package com.criteo.publisher.j0;

import android.content.Context;
import com.criteo.publisher.k.c;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.m0.b;
import com.criteo.publisher.m0.d;
import com.criteo.publisher.model.u;
import com.criteo.publisher.v;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j0/a.class */
public class a extends v {

    /* renamed from: a  reason: collision with root package name */
    private final g f17362a = h.a(a.class);

    /* renamed from: b  reason: collision with root package name */
    private final Context f17363b;

    /* renamed from: c  reason: collision with root package name */
    private final d f17364c;

    /* renamed from: d  reason: collision with root package name */
    private final b f17365d;
    private final g e;
    private final u f;
    private final c g;
    private final String h;

    public a(Context context, d dVar, b bVar, g gVar, u uVar, c cVar, String str) {
        this.f17363b = context;
        this.f17364c = dVar;
        this.f17365d = bVar;
        this.e = gVar;
        this.f = uVar;
        this.g = cVar;
        this.h = str;
    }

    @Override // com.criteo.publisher.v
    public void a() throws Throwable {
        boolean z = this.f17365d.a().f17504b;
        String str = this.f17365d.a().f17503a;
        String packageName = this.f17363b.getPackageName();
        String str2 = this.f.b().get();
        g gVar = this.e;
        String str3 = this.h;
        com.criteo.publisher.k.a.c a2 = this.g.f17408d.a();
        JSONObject a3 = gVar.a(packageName, str, str3, z ? 1 : 0, str2, a2 == null ? null : a2.a());
        this.f17362a.a("App event response: %s", a3);
        if (a3.has("throttleSec")) {
            this.f17364c.a(a3.optInt("throttleSec", 0));
        } else {
            this.f17364c.a(0);
        }
    }
}
