package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bop.class */
public final class bop implements bmy<avq, chs, bof> {

    /* renamed from: a */
    private final Context f11693a;

    /* renamed from: b */
    private final awq f11694b;

    /* renamed from: c */
    private final C3647yd f11695c;

    /* renamed from: d */
    private final Executor f11696d;

    public bop(Context context, C3647yd c3647yd, awq awqVar, Executor executor) {
        this.f11693a = context;
        this.f11695c = c3647yd;
        this.f11694b = awqVar;
        this.f11696d = executor;
    }

    @Override // com.google.android.gms.internal.ads.bmy
    /* renamed from: a */
    public final void mo11709a(chd chdVar, cgr cgrVar, bmx<chs, bof> bmxVar) {
        if (this.f11695c.f17638c < 4100000) {
            bmxVar.f11571b.m11291a(this.f11693a, chdVar.f13034a.f13017a.f13040d, cgrVar.f12997s.toString(), bmxVar.f11572c);
        } else {
            bmxVar.f11571b.m11289a(this.f11693a, chdVar.f13034a.f13017a.f13040d, cgrVar.f12997s.toString(), C3614wy.m6857a((AbstractC3615wz) cgrVar.f12994p), bmxVar.f11572c);
        }
    }

    @Override // com.google.android.gms.internal.ads.bmy
    /* renamed from: b */
    public final /* synthetic */ avq mo11708b(chd chdVar, cgr cgrVar, bmx<chs, bof> bmxVar) {
        avs mo12372a = this.f11694b.mo12372a(new amy(chdVar, cgrVar, bmxVar.f11570a), new avv(new awx(bmxVar) { // from class: com.google.android.gms.internal.ads.bos

            /* renamed from: a */
            private final bmx f11705a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11705a = bmxVar;
            }

            @Override // com.google.android.gms.internal.ads.awx
            /* renamed from: a */
            public final void mo11680a(boolean z, Context context) {
                bmx bmxVar2 = this.f11705a;
                try {
                    ((chs) bmxVar2.f11571b).m11282a(z);
                    ((chs) bmxVar2.f11571b).m11281b();
                } catch (zzdhk e) {
                    C3556uu.m6747d("Cannot show interstitial.");
                    throw new zzbxy(e.getCause());
                }
            }
        }));
        mo12372a.mo12944a().m12773a((aqk) new aio(bmxVar.f11571b), this.f11696d);
        bmxVar.f11572c.m11742a((AbstractC3286ku) mo12372a.mo12939f());
        return mo12372a.mo12403h();
    }
}
