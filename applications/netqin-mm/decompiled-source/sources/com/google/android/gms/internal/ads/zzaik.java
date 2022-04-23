package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.zzp;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p170b.p224d.p252g.p253a.C3936q0;
import p131c.p161d.p170b.p224d.p252g.p253a.C4050t0;
import p131c.p161d.p170b.p224d.p252g.p253a.C4087u0;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3973r0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaik.class */
public final class zzaik implements zzx {

    /* renamed from: a */
    public volatile zzahz f24135a;

    /* renamed from: b */
    public final Context f24136b;

    public zzaik(Context context) {
        this.f24136b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzx
    /* renamed from: a */
    public final zzy mo11147a(zzaa<?> zzaaVar) throws zzao {
        zzaic a = zzaic.m16742a(zzaaVar);
        long a2 = zzp.m17962j().mo17092a();
        try {
            zzbcg zzbcgVar = new zzbcg();
            this.f24135a = new zzahz(this.f24136b, zzp.m17955q().m15947b(), new C4087u0(this, zzbcgVar), new C4050t0(this, zzbcgVar));
            this.f24135a.m17350p();
            zzdzc a3 = zzdyq.m12994a(zzdyq.m12992a(zzbcgVar, new C3936q0(this, a), zzbbz.f24764a), ((Integer) zzwm.m11166e().m16921a(zzabb.f23781a2)).intValue(), TimeUnit.MILLISECONDS, zzbbz.f24767d);
            a3.mo12976a(new RunnableC3973r0(this), zzbbz.f24764a);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) a3.get();
            long a4 = zzp.m17962j().mo17092a();
            StringBuilder sb = new StringBuilder(52);
            sb.append("Http assets remote cache took ");
            sb.append(a4 - a2);
            sb.append("ms");
            zzayp.m16153g(sb.toString());
            zzaie zzaieVar = (zzaie) new zzatb(parcelFileDescriptor).m16379a(zzaie.CREATOR);
            if (zzaieVar == null) {
                return null;
            }
            if (zzaieVar.f24127a) {
                throw new zzao(zzaieVar.f24128b);
            } else if (zzaieVar.f24131e.length != zzaieVar.f24132f.length) {
                return null;
            } else {
                HashMap hashMap = new HashMap();
                int i = 0;
                while (true) {
                    String[] strArr = zzaieVar.f24131e;
                    if (i >= strArr.length) {
                        return new zzy(zzaieVar.f24129c, zzaieVar.f24130d, hashMap, zzaieVar.f24133g, zzaieVar.f24134h);
                    }
                    hashMap.put(strArr[i], zzaieVar.f24132f[i]);
                    i++;
                }
            }
        } catch (InterruptedException | ExecutionException e) {
            long a5 = zzp.m17962j().mo17092a();
            StringBuilder sb2 = new StringBuilder(52);
            sb2.append("Http assets remote cache took ");
            sb2.append(a5 - a2);
            sb2.append("ms");
            zzayp.m16153g(sb2.toString());
            return null;
        } catch (Throwable th) {
            long a6 = zzp.m17962j().mo17092a();
            StringBuilder sb3 = new StringBuilder(52);
            sb3.append("Http assets remote cache took ");
            sb3.append(a6 - a2);
            sb3.append("ms");
            zzayp.m16153g(sb3.toString());
            throw th;
        }
    }

    /* renamed from: a */
    public final void m16739a() {
        if (this.f24135a != null) {
            this.f24135a.mo10491b();
            Binder.flushPendingCommands();
        }
    }
}
