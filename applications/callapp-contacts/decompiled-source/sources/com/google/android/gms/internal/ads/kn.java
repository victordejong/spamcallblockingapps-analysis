package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/kn.class */
final class kn implements hi<lc> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ kz f28121a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ju f28122b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ ke f28123c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kn(ke keVar, kz kzVar, ju juVar) {
        this.f28123c = keVar;
        this.f28121a = kzVar;
        this.f28122b = juVar;
    }

    @Override // com.google.android.gms.internal.ads.hi
    public final /* synthetic */ void a(lc lcVar, Map map) {
        synchronized (this.f28123c.f28101a) {
            if (!(this.f28121a.f28589b.get() == -1 || this.f28121a.f28589b.get() == 1)) {
                this.f28123c.g = 0;
                this.f28123c.e.zzg(this.f28122b);
                this.f28121a.a(this.f28122b);
                this.f28123c.f = this.f28121a;
                zzd.zzed("Successfully loaded JS Engine.");
            }
        }
    }
}
