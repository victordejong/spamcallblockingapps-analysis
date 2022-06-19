package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.km */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/km.class */
final class C12692km implements AbstractC12607hi<AbstractC12709lc> {

    /* renamed from: a */
    private final /* synthetic */ die f49433a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC12673ju f49434b;

    /* renamed from: c */
    private final /* synthetic */ zzbs f49435c;

    /* renamed from: d */
    private final /* synthetic */ C12684ke f49436d;

    public C12692km(C12684ke c12684ke, die dieVar, AbstractC12673ju abstractC12673ju, zzbs zzbsVar) {
        this.f49436d = c12684ke;
        this.f49433a = dieVar;
        this.f49434b = abstractC12673ju;
        this.f49435c = zzbsVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final /* synthetic */ void mo14250a(AbstractC12709lc abstractC12709lc, Map map) {
        synchronized (this.f49436d.f49413a) {
            zzd.zzey("JS Engine is requesting an update");
            if (this.f49436d.f49419g == 0) {
                zzd.zzey("Starting reload.");
                this.f49436d.f49419g = 2;
                this.f49436d.m14555a(this.f49433a);
            }
            this.f49434b.mo14531b("/requestReload", (AbstractC12607hi) this.f49435c.get());
        }
    }
}
