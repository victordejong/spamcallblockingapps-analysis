package com.inmobi.commons.core.p510b;

import com.inmobi.commons.core.p511c.AbstractC8345b;
import com.inmobi.commons.core.p511c.C8343a;
import com.inmobi.commons.core.utilities.p516b.C8398b;
import com.inmobi.commons.core.utilities.uid.C8418d;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.inmobi.commons.core.b.d */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/b/d.class */
public class C8340d implements AbstractC8345b {

    /* renamed from: a */
    public static final String f32437a = "d";

    /* renamed from: d */
    public AbstractC8338b f32440d;

    /* renamed from: e */
    public AbstractC8342e f32441e;

    /* renamed from: h */
    public ScheduledExecutorService f32444h;

    /* renamed from: b */
    public AtomicBoolean f32438b = new AtomicBoolean(false);

    /* renamed from: c */
    public AtomicBoolean f32439c = new AtomicBoolean(false);

    /* renamed from: g */
    public List<String> f32443g = new LinkedList();

    /* renamed from: f */
    public HashMap<String, C8337a> f32442f = new HashMap<>(1);

    public C8340d(AbstractC8338b bVar, AbstractC8342e eVar, C8337a aVar) {
        this.f32440d = bVar;
        this.f32441e = eVar;
        m5862a(aVar);
    }

    /* renamed from: a */
    public static /* synthetic */ void m5861a(C8340d dVar, String str, C8418d dVar2) {
        C8339c a;
        if (!dVar.f32439c.get() && !dVar.f32438b.get()) {
            dVar.f32440d.mo5759b(dVar.m5859b(str).f32422a, str);
            int a2 = dVar.f32440d.mo5762a(str);
            int a3 = C8398b.m5691a();
            int i = a3 != 1 ? dVar.m5859b(str).f32430i : dVar.m5859b(str).f32428g;
            long j = a3 != 1 ? dVar.m5859b(str).f32431j : dVar.m5859b(str).f32429h;
            if ((i <= a2 || dVar.f32440d.mo5764a(dVar.m5859b(str).f32424c, str) || dVar.f32440d.mo5765a(dVar.m5859b(str).f32427f, dVar.m5859b(str).f32424c, str)) && (a = dVar.f32441e.mo5791a(str)) != null) {
                dVar.f32438b.set(true);
                C8337a b = dVar.m5859b(str);
                C8343a a4 = C8343a.m5858a();
                String str2 = b.f32426e;
                int i2 = b.f32425d + 1;
                a4.m5857a(a, str2, i2, i2, j, dVar2, dVar);
            }
        }
    }

    /* renamed from: b */
    private C8337a m5859b(String str) {
        return this.f32442f.get(str);
    }

    /* renamed from: a */
    public final void m5863a() {
        ScheduledExecutorService scheduledExecutorService = this.f32444h;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
            this.f32444h = null;
        }
        this.f32438b.set(false);
        this.f32439c.set(true);
        this.f32443g.clear();
        this.f32442f.clear();
    }

    /* renamed from: a */
    public final void m5862a(C8337a aVar) {
        String str = aVar.f32423b;
        String str2 = str;
        if (str == null) {
            str2 = "default";
        }
        this.f32442f.put(str2, aVar);
    }

    @Override // com.inmobi.commons.core.p511c.AbstractC8345b
    /* renamed from: a */
    public final void mo5854a(C8339c cVar) {
        String b = this.f32440d.mo5760b(cVar.f32434a.get(0).intValue());
        this.f32440d.mo5761a(cVar.f32434a);
        if (b != null) {
            this.f32440d.mo5757c(System.currentTimeMillis(), b);
            this.f32438b.set(false);
        }
    }

    @Override // com.inmobi.commons.core.p511c.AbstractC8345b
    /* renamed from: a */
    public final void mo5853a(C8339c cVar, boolean z) {
        String b = this.f32440d.mo5760b(cVar.f32434a.get(0).intValue());
        if (cVar.f32436c && z) {
            this.f32440d.mo5761a(cVar.f32434a);
        }
        if (b != null) {
            this.f32440d.mo5757c(System.currentTimeMillis(), b);
            this.f32438b.set(false);
        }
    }

    /* renamed from: a */
    public final void m5860a(String str) {
        if (!this.f32439c.get()) {
            final String str2 = str;
            if (str == null) {
                str2 = "default";
            }
            long j = m5859b(str2).f32427f;
            if (!this.f32443g.contains(str2)) {
                this.f32443g.add(str2);
                if (this.f32444h == null) {
                    this.f32444h = Executors.newSingleThreadScheduledExecutor();
                }
                ScheduledExecutorService scheduledExecutorService = this.f32444h;
                Runnable runnable = new Runnable() { // from class: com.inmobi.commons.core.b.d.1

                    /* renamed from: b */
                    public final /* synthetic */ C8418d f32446b = null;

                    @Override // java.lang.Runnable
                    public final void run() {
                        C8340d.m5861a(C8340d.this, str2, this.f32446b);
                    }
                };
                C8337a b = m5859b(str2);
                long b2 = this.f32440d.mo5758b(str2);
                if (b2 == -1) {
                    this.f32440d.mo5757c(System.currentTimeMillis(), str2);
                }
                long seconds = TimeUnit.MILLISECONDS.toSeconds(b2) + b.f32427f;
                scheduledExecutorService.scheduleAtFixedRate(runnable, seconds - TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis()) > 0 ? seconds - TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis()) : 0L, j, TimeUnit.SECONDS);
            }
        }
    }
}
