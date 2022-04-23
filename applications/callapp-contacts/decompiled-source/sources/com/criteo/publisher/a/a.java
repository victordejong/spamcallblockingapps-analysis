package com.criteo.publisher.a;

import android.content.Context;
import com.criteo.publisher.h;
import com.criteo.publisher.j0.g;
import com.criteo.publisher.k.c;
import com.criteo.publisher.m0.b;
import com.criteo.publisher.m0.d;
import com.criteo.publisher.model.u;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/a/a.class */
public class a implements d {

    /* renamed from: a  reason: collision with root package name */
    private final Context f17137a;

    /* renamed from: b  reason: collision with root package name */
    private final b f17138b;

    /* renamed from: c  reason: collision with root package name */
    private final h f17139c;

    /* renamed from: d  reason: collision with root package name */
    private final g f17140d;
    private final c e;
    private final u f;
    private final Executor g;
    private final AtomicLong h = new AtomicLong(-1);

    public a(Context context, b bVar, h hVar, g gVar, c cVar, u uVar, Executor executor) {
        this.f17137a = context;
        this.f17138b = bVar;
        this.f17139c = hVar;
        this.f17140d = gVar;
        this.e = cVar;
        this.f = uVar;
        this.g = executor;
    }

    @Override // com.criteo.publisher.m0.d
    public final void a(int i) {
        this.h.set(this.f17139c.a() + (i * 1000));
    }

    public final void a(String str) {
        boolean z;
        c cVar = this.e;
        if (cVar.a().isEmpty()) {
            z = !Boolean.parseBoolean(cVar.b());
        } else {
            String a2 = cVar.a();
            z = !c.f17405a.matcher(a2).matches() || c.f17406b.contains(a2.toLowerCase(Locale.ROOT));
        }
        boolean z2 = false;
        if (z) {
            z2 = false;
            if (!c.f17407c.contains(this.e.c().toLowerCase(Locale.ROOT))) {
                z2 = true;
            }
        }
        if (z2) {
            long j = this.h.get();
            if (j <= 0 || this.f17139c.a() >= j) {
                this.g.execute(new com.criteo.publisher.j0.a(this.f17137a, this, this.f17138b, this.f17140d, this.f, this.e, str));
            }
        }
    }
}
