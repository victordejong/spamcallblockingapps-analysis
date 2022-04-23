package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/km.class */
final class km implements hi<lc> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ die f28117a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ju f28118b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ zzbs f28119c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ ke f28120d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public km(ke keVar, die dieVar, ju juVar, zzbs zzbsVar) {
        this.f28120d = keVar;
        this.f28117a = dieVar;
        this.f28118b = juVar;
        this.f28119c = zzbsVar;
    }

    @Override // com.google.android.gms.internal.ads.hi
    public final /* synthetic */ void a(lc lcVar, Map map) {
        synchronized (this.f28120d.f28101a) {
            zzd.zzey("JS Engine is requesting an update");
            if (this.f28120d.g == 0) {
                zzd.zzey("Starting reload.");
                this.f28120d.g = 2;
                this.f28120d.a(this.f28117a);
            }
            this.f28118b.b("/requestReload", (hi) this.f28119c.get());
        }
    }
}
