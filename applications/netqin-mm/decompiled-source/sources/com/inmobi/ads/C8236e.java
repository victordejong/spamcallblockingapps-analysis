package com.inmobi.ads;

import android.os.SystemClock;
import com.inmobi.commons.core.network.C8379a;
import com.inmobi.commons.core.network.C8384d;
import com.inmobi.p497a.C8002n;
/* renamed from: com.inmobi.ads.e */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/e.class */
public final class C8236e implements C8379a.AbstractC8381a {

    /* renamed from: a */
    public static final String f32137a = "e";

    /* renamed from: b */
    public C8240f f32138b;

    /* renamed from: c */
    public AbstractC8237a f32139c;

    /* renamed from: d */
    public long f32140d = 0;

    /* renamed from: com.inmobi.ads.e$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/e$a.class */
    public interface AbstractC8237a {
        /* renamed from: a */
        void mo6119a(C8245g gVar);

        /* renamed from: b */
        void mo6110b(C8245g gVar);
    }

    public C8236e(C8240f fVar, AbstractC8237a aVar) {
        this.f32138b = fVar;
        this.f32139c = aVar;
    }

    /* renamed from: a */
    public final void m6128a() {
        this.f32140d = SystemClock.elapsedRealtime();
        new C8379a(this.f32138b, this).m5752a();
    }

    @Override // com.inmobi.commons.core.network.C8379a.AbstractC8381a
    /* renamed from: a */
    public final void mo5500a(C8384d dVar) {
        C8245g gVar = new C8245g(this.f32138b, dVar);
        try {
            C8002n.m6748a().m6747a(this.f32138b.m5734g());
            C8002n.m6748a().m6745b(dVar.m5729c());
            C8002n.m6748a().m6744c(SystemClock.elapsedRealtime() - this.f32140d);
            this.f32139c.mo6119a(gVar);
        } catch (Exception e) {
            new StringBuilder("Handling ad fetch success encountered an unexpected error: ").append(e.getMessage());
        }
    }

    @Override // com.inmobi.commons.core.network.C8379a.AbstractC8381a
    /* renamed from: b */
    public final void mo5499b(C8384d dVar) {
        C8245g gVar = new C8245g(this.f32138b, dVar);
        new StringBuilder("Ad fetch failed:").append(gVar.f32157a.f32624b.f32583b);
        try {
            C8002n.m6748a().m6747a(this.f32138b.m5734g());
            C8002n.m6748a().m6745b(dVar.m5729c());
            this.f32139c.mo6110b(gVar);
        } catch (Exception e) {
            new StringBuilder("Handling ad fetch failed encountered an unexpected error: ").append(e.getMessage());
        }
    }
}
