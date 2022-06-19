package com.criteo.publisher.p251j0;

import android.content.Context;
import com.criteo.publisher.AbstractRunnableC8529v;
import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.model.C8509u;
import com.criteo.publisher.p252k.C8380c;
import com.criteo.publisher.p252k.p253a.AbstractC8373c;
import com.criteo.publisher.p256m0.AbstractC8430d;
import com.criteo.publisher.p256m0.C8424b;
import org.json.JSONObject;
/* renamed from: com.criteo.publisher.j0.a */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j0/a.class */
public class C8355a extends AbstractRunnableC8529v {

    /* renamed from: a */
    private final C8402g f30012a = C8404h.m25741a(C8355a.class);

    /* renamed from: b */
    private final Context f30013b;

    /* renamed from: c */
    private final AbstractC8430d f30014c;

    /* renamed from: d */
    private final C8424b f30015d;

    /* renamed from: e */
    private final C8364g f30016e;

    /* renamed from: f */
    private final C8509u f30017f;

    /* renamed from: g */
    private final C8380c f30018g;

    /* renamed from: h */
    private final String f30019h;

    public C8355a(Context context, AbstractC8430d abstractC8430d, C8424b c8424b, C8364g c8364g, C8509u c8509u, C8380c c8380c, String str) {
        this.f30013b = context;
        this.f30014c = abstractC8430d;
        this.f30015d = c8424b;
        this.f30016e = c8364g;
        this.f30017f = c8509u;
        this.f30018g = c8380c;
        this.f30019h = str;
    }

    @Override // com.criteo.publisher.AbstractRunnableC8529v
    /* renamed from: a */
    public void mo25368a() throws Throwable {
        boolean z = this.f30015d.m25707a().f30187b;
        String str = this.f30015d.m25707a().f30186a;
        String packageName = this.f30013b.getPackageName();
        String str2 = this.f30017f.mo25380b().get();
        C8364g c8364g = this.f30016e;
        String str3 = this.f30019h;
        AbstractC8373c m25769a = this.f30018g.f30070d.m25769a();
        JSONObject m25785a = c8364g.m25785a(packageName, str, str3, z ? 1 : 0, str2, m25769a == null ? null : m25769a.mo25774a());
        this.f30012a.m25742a("App event response: %s", m25785a);
        if (m25785a.has("throttleSec")) {
            this.f30014c.mo25695a(m25785a.optInt("throttleSec", 0));
        } else {
            this.f30014c.mo25695a(0);
        }
    }
}
