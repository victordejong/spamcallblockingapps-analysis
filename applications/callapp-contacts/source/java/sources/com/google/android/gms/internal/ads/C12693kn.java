package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.kn */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/kn.class */
final class C12693kn implements AbstractC12607hi<AbstractC12709lc> {

    /* renamed from: a */
    private final /* synthetic */ C12705kz f49437a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC12673ju f49438b;

    /* renamed from: c */
    private final /* synthetic */ C12684ke f49439c;

    public C12693kn(C12684ke c12684ke, C12705kz c12705kz, AbstractC12673ju abstractC12673ju) {
        this.f49439c = c12684ke;
        this.f49437a = c12705kz;
        this.f49438b = abstractC12673ju;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final /* synthetic */ void mo14250a(AbstractC12709lc abstractC12709lc, Map map) {
        synchronized (this.f49439c.f49413a) {
            if (this.f49437a.f50137b.get() != -1 && this.f49437a.f50137b.get() != 1) {
                this.f49439c.f49419g = 0;
                this.f49439c.f49417e.zzg(this.f49438b);
                this.f49437a.m13895a(this.f49438b);
                this.f49439c.f49418f = this.f49437a;
                zzd.zzed("Successfully loaded JS Engine.");
            }
        }
    }
}
