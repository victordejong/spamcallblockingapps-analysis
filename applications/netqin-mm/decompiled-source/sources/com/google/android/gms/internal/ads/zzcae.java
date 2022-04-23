package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.internal.ads.zzqr;
import com.google.android.gms.internal.ads.zzqu;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcae.class */
public final class zzcae extends zzbyr<zzqu> implements zzqu {

    /* renamed from: b */
    public Map<View, zzqq> f25647b = new WeakHashMap(1);

    /* renamed from: c */
    public final Context f25648c;

    /* renamed from: d */
    public final zzdnv f25649d;

    public zzcae(Context context, Set<zzcab<zzqu>> set, zzdnv zzdnvVar) {
        super(set);
        this.f25648c = context;
        this.f25649d = zzdnvVar;
    }

    /* renamed from: a */
    public final void m14866a(View view) {
        synchronized (this) {
            zzqq zzqqVar = this.f25647b.get(view);
            zzqq zzqqVar2 = zzqqVar;
            if (zzqqVar == null) {
                zzqqVar2 = new zzqq(this.f25648c, view);
                zzqqVar2.m11541a(this);
                this.f25647b.put(view, zzqqVar2);
            }
            if (this.f25649d != null && this.f25649d.f27571R) {
                if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23679G0)).booleanValue()) {
                    zzqqVar2.m11546a(((Long) zzwm.m11166e().m16921a(zzabb.f23674F0)).longValue());
                    return;
                }
            }
            zzqqVar2.m11540b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    /* renamed from: a */
    public final void mo11534a(final zzqr zzqrVar) {
        synchronized (this) {
            m14941a(new zzbyt(zzqrVar) { // from class: c.d.b.d.g.a.mg

                /* renamed from: a */
                public final zzqr f14171a;

                {
                    this.f14171a = zzqrVar;
                }

                @Override // com.google.android.gms.internal.ads.zzbyt
                /* renamed from: a */
                public final void mo14897a(Object obj) {
                    ((zzqu) obj).mo11534a(this.f14171a);
                }
            });
        }
    }

    /* renamed from: b */
    public final void m14865b(View view) {
        synchronized (this) {
            if (this.f25647b.containsKey(view)) {
                this.f25647b.get(view).m11537b(this);
                this.f25647b.remove(view);
            }
        }
    }
}
