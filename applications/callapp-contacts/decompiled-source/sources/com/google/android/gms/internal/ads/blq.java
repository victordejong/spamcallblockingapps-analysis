package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/blq.class */
public abstract class blq {

    /* renamed from: b  reason: collision with root package name */
    protected final zc f24654b;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f24656d;
    private final boolean e;
    private final cuj f;

    /* renamed from: c  reason: collision with root package name */
    private final String f24655c = ci.f25868b.a();

    /* renamed from: a  reason: collision with root package name */
    protected final Map<String, String> f24653a = new HashMap();

    /* JADX INFO: Access modifiers changed from: protected */
    public blq(Executor executor, zc zcVar, cuj cujVar) {
        this.f24656d = executor;
        this.f24654b = zcVar;
        this.e = ((Boolean) ekb.e().a(aq.bl)).booleanValue() ? ((Boolean) ekb.e().a(aq.bm)).booleanValue() : ((double) ekb.h().nextFloat()) <= ci.f25867a.a().doubleValue();
        this.f = cujVar;
    }

    public final void a(Map<String, String> map) {
        final String b2 = b(map);
        if (this.e) {
            this.f24656d.execute(new Runnable(this, b2) { // from class: com.google.android.gms.internal.ads.blp

                /* renamed from: a  reason: collision with root package name */
                private final blq f24651a;

                /* renamed from: b  reason: collision with root package name */
                private final String f24652b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24651a = this;
                    this.f24652b = b2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    blq blqVar = this.f24651a;
                    blqVar.f24654b.zzen(this.f24652b);
                }
            });
        }
        zzd.zzed(b2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String b(Map<String, String> map) {
        return this.f.a(map);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void b();
}
