package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzdge;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdge.class */
public final class zzdge implements zzdgx<zzdgf> {

    /* renamed from: a */
    public final zzawo f27271a;

    /* renamed from: b */
    public final zzdzb f27272b;

    /* renamed from: c */
    public final Context f27273c;

    public zzdge(zzawo zzawoVar, zzdzb zzdzbVar, Context context) {
        this.f27271a = zzawoVar;
        this.f27272b = zzdzbVar;
        this.f27273c = context;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdgf> mo13576a() {
        return this.f27272b.mo12977a(new Callable(this) { // from class: c.d.b.d.g.a.fu

            /* renamed from: a */
            public final zzdge f13001a;

            {
                this.f13001a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f13001a.m13612b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ zzdgf m13612b() throws Exception {
        Long l;
        if (!this.f27271a.m16256a(this.f27273c)) {
            return new zzdgf(null, null, null, null, null);
        }
        String c = this.f27271a.m16238c(this.f27273c);
        if (c == null) {
            c = "";
        }
        String d = this.f27271a.m16236d(this.f27273c);
        if (d == null) {
            d = "";
        }
        String e = this.f27271a.m16234e(this.f27273c);
        if (e == null) {
            e = "";
        }
        String f = this.f27271a.m16232f(this.f27273c);
        if (f == null) {
            f = "";
        }
        if ("TIME_OUT".equals(d)) {
            l = (Long) zzwm.m11166e().m16921a(zzabb.f23758W);
        } else {
            l = null;
        }
        return new zzdgf(c, d, e, f, l);
    }
}
