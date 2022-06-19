package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.C2341q;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.internal.ads.fu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fu.class */
public final class C3151fu implements dqu {

    /* renamed from: a */
    private volatile C3144fn f16677a;

    /* renamed from: b */
    private final Context f16678b;

    public C3151fu(Context context) {
        this.f16678b = context;
    }

    /* renamed from: a */
    public final void m7824a() {
        if (this.f16677a == null) {
            return;
        }
        this.f16677a.m14083e();
        Binder.flushPendingCommands();
    }

    @Override // com.google.android.gms.internal.ads.dqu
    /* renamed from: a */
    public final drt mo6883a(dts<?> dtsVar) {
        drt drtVar;
        C3143fm m7826a = C3143fm.m7826a(dtsVar);
        long mo13861b = C2341q.m14737j().mo13861b();
        try {
            C3658yo c3658yo = new C3658yo();
            this.f16677a = new C3144fn(this.f16678b, C2341q.m14730q().m6841a(), new C3155fy(this, c3658yo), new C3160gc(this, c3658yo));
            this.f16677a.m14072o();
            crt m10784a = crg.m10784a(crg.m10782a(c3658yo, new C3154fx(this, m7826a), C3650yg.f17642a), ((Integer) dyx.m8158e().m7876a(edi.f16414bT)).intValue(), TimeUnit.MILLISECONDS, C3650yg.f17645d);
            m10784a.mo6734a(new RunnableC3156fz(this), C3650yg.f17642a);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) m10784a.get();
            C3556uu.m7052a(new StringBuilder(52).append("Http assets remote cache took ").append(C2341q.m14737j().mo13861b() - mo13861b).append("ms").toString());
            C3145fo c3145fo = (C3145fo) new C3422pv(parcelFileDescriptor).m7329a(C3145fo.CREATOR);
            if (c3145fo == null) {
                drtVar = null;
            } else if (c3145fo.f16669a) {
                throw new zzae(c3145fo.f16670b);
            } else {
                drtVar = null;
                if (c3145fo.f16673e.length == c3145fo.f16674f.length) {
                    HashMap hashMap = new HashMap();
                    for (int i = 0; i < c3145fo.f16673e.length; i++) {
                        hashMap.put(c3145fo.f16673e[i], c3145fo.f16674f[i]);
                    }
                    drtVar = new drt(c3145fo.f16671c, c3145fo.f16672d, hashMap, c3145fo.f16675g, c3145fo.f16676h);
                }
            }
        } catch (InterruptedException e) {
            C3556uu.m7052a(new StringBuilder(52).append("Http assets remote cache took ").append(C2341q.m14737j().mo13861b() - mo13861b).append("ms").toString());
            drtVar = null;
            return drtVar;
        } catch (ExecutionException e2) {
            C3556uu.m7052a(new StringBuilder(52).append("Http assets remote cache took ").append(C2341q.m14737j().mo13861b() - mo13861b).append("ms").toString());
            drtVar = null;
            return drtVar;
        } catch (Throwable th) {
            C3556uu.m7052a(new StringBuilder(52).append("Http assets remote cache took ").append(C2341q.m14737j().mo13861b() - mo13861b).append("ms").toString());
            throw th;
        }
        return drtVar;
    }
}
