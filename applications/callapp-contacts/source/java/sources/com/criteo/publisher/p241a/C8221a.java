package com.criteo.publisher.p241a;

import android.content.Context;
import com.criteo.publisher.AbstractC8336h;
import com.criteo.publisher.model.C8509u;
import com.criteo.publisher.p251j0.C8355a;
import com.criteo.publisher.p251j0.C8364g;
import com.criteo.publisher.p252k.C8380c;
import com.criteo.publisher.p256m0.AbstractC8430d;
import com.criteo.publisher.p256m0.C8424b;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: com.criteo.publisher.a.a */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/a/a.class */
public class C8221a implements AbstractC8430d {

    /* renamed from: a */
    private final Context f29737a;

    /* renamed from: b */
    private final C8424b f29738b;

    /* renamed from: c */
    private final AbstractC8336h f29739c;

    /* renamed from: d */
    private final C8364g f29740d;

    /* renamed from: e */
    private final C8380c f29741e;

    /* renamed from: f */
    private final C8509u f29742f;

    /* renamed from: g */
    private final Executor f29743g;

    /* renamed from: h */
    private final AtomicLong f29744h = new AtomicLong(-1);

    public C8221a(Context context, C8424b c8424b, AbstractC8336h abstractC8336h, C8364g c8364g, C8380c c8380c, C8509u c8509u, Executor executor) {
        this.f29737a = context;
        this.f29738b = c8424b;
        this.f29739c = abstractC8336h;
        this.f29740d = c8364g;
        this.f29741e = c8380c;
        this.f29742f = c8509u;
        this.f29743g = executor;
    }

    @Override // com.criteo.publisher.p256m0.AbstractC8430d
    /* renamed from: a */
    public final void mo25695a(int i) {
        this.f29744h.set(this.f29739c.mo25381a() + (i * 1000));
    }

    /* renamed from: a */
    public final void m25985a(String str) {
        boolean z;
        C8380c c8380c = this.f29741e;
        if (c8380c.m25758a().isEmpty()) {
            z = !Boolean.parseBoolean(c8380c.m25755b());
        } else {
            String m25758a = c8380c.m25758a();
            z = !C8380c.f30067a.matcher(m25758a).matches() || C8380c.f30068b.contains(m25758a.toLowerCase(Locale.ROOT));
        }
        boolean z2 = false;
        if (z) {
            z2 = false;
            if (!C8380c.f30069c.contains(this.f29741e.m25754c().toLowerCase(Locale.ROOT))) {
                z2 = true;
            }
        }
        if (!z2) {
            return;
        }
        long j = this.f29744h.get();
        if (j > 0 && this.f29739c.mo25381a() < j) {
            return;
        }
        this.f29743g.execute(new C8355a(this.f29737a, this, this.f29738b, this.f29740d, this.f29742f, this.f29741e, str));
    }
}
