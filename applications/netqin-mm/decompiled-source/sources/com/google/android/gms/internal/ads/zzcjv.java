package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.internal.ads.zzbcg;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzbhv;
import com.google.android.gms.internal.ads.zzcjv;
import com.google.android.gms.internal.ads.zzqr;
import java.util.Map;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C3660ik;
import p131c.p161d.p170b.p224d.p252g.p253a.C3734kk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjv.class */
public final class zzcjv {

    /* renamed from: a */
    public final zzbuc f26146a;

    /* renamed from: b */
    public final zzbvh f26147b;

    /* renamed from: c */
    public final zzbvv f26148c;

    /* renamed from: d */
    public final zzbwa f26149d;

    /* renamed from: e */
    public final zzbyf f26150e;

    /* renamed from: f */
    public final Executor f26151f;

    /* renamed from: g */
    public final zzcae f26152g;

    /* renamed from: h */
    public final zzbmu f26153h;

    /* renamed from: i */
    public final zza f26154i;

    /* renamed from: j */
    public final zzbvb f26155j;

    /* renamed from: k */
    public final zzawl f26156k;

    /* renamed from: l */
    public final zzeg f26157l;

    /* renamed from: m */
    public final zzbxu f26158m;

    public zzcjv(zzbuc zzbucVar, zzbvh zzbvhVar, zzbvv zzbvvVar, zzbwa zzbwaVar, zzbyf zzbyfVar, Executor executor, zzcae zzcaeVar, zzbmu zzbmuVar, zza zzaVar, zzbvb zzbvbVar, zzawl zzawlVar, zzeg zzegVar, zzbxu zzbxuVar) {
        this.f26146a = zzbucVar;
        this.f26147b = zzbvhVar;
        this.f26148c = zzbvvVar;
        this.f26149d = zzbwaVar;
        this.f26150e = zzbyfVar;
        this.f26151f = executor;
        this.f26152g = zzcaeVar;
        this.f26153h = zzbmuVar;
        this.f26154i = zzaVar;
        this.f26155j = zzbvbVar;
        this.f26156k = zzawlVar;
        this.f26157l = zzegVar;
        this.f26158m = zzbxuVar;
    }

    /* renamed from: a */
    public static zzdzc<?> m14123a(zzbgj zzbgjVar, String str, String str2) {
        final zzbcg zzbcgVar = new zzbcg();
        zzbgjVar.mo15543z().mo15492a(new zzbhu(zzbcgVar) { // from class: c.d.b.d.g.a.lk

            /* renamed from: a */
            public final zzbcg f13984a;

            {
                this.f13984a = zzbcgVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbhu
            /* renamed from: a */
            public final void mo15515a(boolean z) {
                zzbcg zzbcgVar2 = this.f13984a;
                if (z) {
                    zzbcgVar2.m15835a((zzbcg) null);
                } else {
                    zzbcgVar2.m15834a((Throwable) new Exception("Ad Web View failed to load."));
                }
            }
        });
        zzbgjVar.mo15578a(str, str2, (String) null);
        return zzbcgVar;
    }

    /* renamed from: a */
    public final /* synthetic */ void m14127a() {
        this.f26147b.m15021s();
    }

    /* renamed from: a */
    public final /* synthetic */ void m14126a(View view) {
        this.f26154i.m17998a();
        zzawl zzawlVar = this.f26156k;
        if (zzawlVar != null) {
            zzawlVar.mo16261b();
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m14124a(zzbgj zzbgjVar, zzbgj zzbgjVar2, Map map) {
        this.f26153h.m15307a(zzbgjVar);
    }

    /* renamed from: a */
    public final void m14122a(final zzbgj zzbgjVar, boolean z) {
        zzdw a;
        zzbgjVar.mo15543z().mo15489a(new zzux(this) { // from class: c.d.b.d.g.a.ck

            /* renamed from: a */
            public final zzcjv f12566a;

            {
                this.f12566a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzux
            public final void onAdClicked() {
                this.f12566a.m14119b();
            }
        }, this.f26148c, this.f26149d, new zzagv(this) { // from class: c.d.b.d.g.a.bk

            /* renamed from: a */
            public final zzcjv f12484a;

            {
                this.f12484a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzagv
            /* renamed from: a */
            public final void mo14944a(String str, String str2) {
                this.f12484a.m14120a(str, str2);
            }
        }, new zzv(this) { // from class: c.d.b.d.g.a.fk

            /* renamed from: a */
            public final zzcjv f12980a;

            {
                this.f12980a = this;
            }

            @Override // com.google.android.gms.ads.internal.overlay.zzv
            /* renamed from: a */
            public final void mo17999a() {
                this.f12980a.m14127a();
            }
        }, z, null, this.f26154i, new C3734kk(this), this.f26156k);
        zzbgjVar.setOnTouchListener(new View.OnTouchListener(this) { // from class: c.d.b.d.g.a.dk

            /* renamed from: a */
            public final zzcjv f12759a;

            {
                this.f12759a = this;
            }

            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f12759a.m14125a(view, motionEvent);
            }
        });
        zzbgjVar.setOnClickListener(new View.OnClickListener(this) { // from class: c.d.b.d.g.a.hk

            /* renamed from: a */
            public final zzcjv f13467a;

            {
                this.f13467a = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f13467a.m14126a(view);
            }
        });
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23810f1)).booleanValue() && (a = this.f26157l.m12604a()) != null) {
            a.mo13018a(zzbgjVar.getView());
        }
        this.f26152g.m14939a(zzbgjVar, this.f26151f);
        this.f26152g.m14939a(new zzqu(zzbgjVar) { // from class: c.d.b.d.g.a.gk

            /* renamed from: a */
            public final zzbgj f13212a;

            {
                this.f13212a = zzbgjVar;
            }

            @Override // com.google.android.gms.internal.ads.zzqu
            /* renamed from: a */
            public final void mo11534a(zzqr zzqrVar) {
                zzbhv z2 = this.f13212a.mo15543z();
                Rect rect = zzqrVar.f28883d;
                z2.mo15498a(rect.left, rect.top, false);
            }
        }, this.f26151f);
        this.f26152g.m14866a(zzbgjVar.getView());
        zzbgjVar.mo15570b("/trackActiveViewUnit", new zzahq(this, zzbgjVar) { // from class: c.d.b.d.g.a.jk

            /* renamed from: a */
            public final zzcjv f13795a;

            /* renamed from: b */
            public final zzbgj f13796b;

            {
                this.f13795a = this;
                this.f13796b = zzbgjVar;
            }

            @Override // com.google.android.gms.internal.ads.zzahq
            /* renamed from: a */
            public final void mo14168a(Object obj, Map map) {
                this.f13795a.m14124a(this.f13796b, (zzbgj) obj, map);
            }
        });
        this.f26153h.m15306a((Object) zzbgjVar);
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23845l0)).booleanValue()) {
            zzbvb zzbvbVar = this.f26155j;
            zzbgjVar.getClass();
            zzbvbVar.m15029a(C3660ik.m26802a(zzbgjVar), this.f26151f);
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m14120a(String str, String str2) {
        this.f26150e.mo14944a(str, str2);
    }

    /* renamed from: a */
    public final /* synthetic */ boolean m14125a(View view, MotionEvent motionEvent) {
        this.f26154i.m17998a();
        zzawl zzawlVar = this.f26156k;
        if (zzawlVar == null) {
            return false;
        }
        zzawlVar.mo16261b();
        return false;
    }

    /* renamed from: b */
    public final /* synthetic */ void m14119b() {
        this.f26146a.onAdClicked();
    }
}
