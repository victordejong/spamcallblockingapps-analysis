package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzbhv;
import com.google.android.gms.internal.ads.zzchs;
import com.google.android.gms.internal.ads.zzqr;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchs.class */
public final class zzchs {

    /* renamed from: a */
    public final Executor f26033a;

    /* renamed from: b */
    public final zzbnd f26034b;

    /* renamed from: c */
    public final zzcae f26035c;

    public zzchs(Executor executor, zzbnd zzbndVar, zzcae zzcaeVar) {
        this.f26033a = executor;
        this.f26035c = zzcaeVar;
        this.f26034b = zzbndVar;
    }

    /* renamed from: a */
    public final void m14264a(final zzbgj zzbgjVar) {
        if (zzbgjVar != null) {
            this.f26035c.m14866a(zzbgjVar.getView());
            this.f26035c.m14939a(new zzqu(zzbgjVar) { // from class: c.d.b.d.g.a.dj

                /* renamed from: a */
                public final zzbgj f12758a;

                {
                    this.f12758a = zzbgjVar;
                }

                @Override // com.google.android.gms.internal.ads.zzqu
                /* renamed from: a */
                public final void mo11534a(zzqr zzqrVar) {
                    zzbhv z = this.f12758a.mo15543z();
                    Rect rect = zzqrVar.f28883d;
                    z.mo15498a(rect.left, rect.top, false);
                }
            }, this.f26033a);
            this.f26035c.m14939a(new zzqu(zzbgjVar) { // from class: c.d.b.d.g.a.fj

                /* renamed from: a */
                public final zzbgj f12979a;

                {
                    this.f12979a = zzbgjVar;
                }

                @Override // com.google.android.gms.internal.ads.zzqu
                /* renamed from: a */
                public final void mo11534a(zzqr zzqrVar) {
                    zzbgj zzbgjVar2 = this.f12979a;
                    HashMap hashMap = new HashMap();
                    hashMap.put("isVisible", zzqrVar.f28889j ? "1" : "0");
                    zzbgjVar2.mo15577a("onAdVisibilityChanged", hashMap);
                }
            }, this.f26033a);
            this.f26035c.m14939a(this.f26034b, this.f26033a);
            this.f26034b.m15295a(zzbgjVar);
            zzbgjVar.mo15570b("/trackActiveViewUnit", new zzahq(this) { // from class: c.d.b.d.g.a.ej

                /* renamed from: a */
                public final zzchs f12846a;

                {
                    this.f12846a = this;
                }

                @Override // com.google.android.gms.internal.ads.zzahq
                /* renamed from: a */
                public final void mo14168a(Object obj, Map map) {
                    this.f12846a.m14262b((zzbgj) obj, map);
                }
            });
            zzbgjVar.mo15570b("/untrackActiveViewUnit", new zzahq(this) { // from class: c.d.b.d.g.a.gj

                /* renamed from: a */
                public final zzchs f13211a;

                {
                    this.f13211a = this;
                }

                @Override // com.google.android.gms.internal.ads.zzahq
                /* renamed from: a */
                public final void mo14168a(Object obj, Map map) {
                    this.f13211a.m14263a((zzbgj) obj, map);
                }
            });
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m14263a(zzbgj zzbgjVar, Map map) {
        this.f26034b.m15292j();
    }

    /* renamed from: b */
    public final /* synthetic */ void m14262b(zzbgj zzbgjVar, Map map) {
        this.f26034b.m15291m();
    }
}
