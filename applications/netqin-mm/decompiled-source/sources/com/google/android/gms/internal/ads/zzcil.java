package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzcil;
import com.google.android.gms.internal.ads.zzdzc;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C3844nj;
import p131c.p161d.p170b.p224d.p252g.p253a.C3881oj;
import p131c.p161d.p170b.p224d.p252g.p253a.C3918pj;
import p131c.p161d.p170b.p224d.p252g.p253a.C3955qj;
import p131c.p161d.p170b.p224d.p252g.p253a.C3995rj;
import p131c.p161d.p170b.p224d.p252g.p253a.C4032sj;
import p131c.p161d.p170b.p224d.p252g.p253a.C4106uj;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcil.class */
public final class zzcil {

    /* renamed from: b */
    public final zzb f26076b;

    /* renamed from: c */
    public final Context f26077c;

    /* renamed from: d */
    public final Executor f26078d;

    /* renamed from: e */
    public final zzeg f26079e;

    /* renamed from: f */
    public final zzbbx f26080f;

    /* renamed from: h */
    public zzdzc<zzbgj> f26082h;

    /* renamed from: a */
    public final C3995rj f26075a = new C3995rj(null);

    /* renamed from: g */
    public final zzahw f26081g = new zzahw();

    public zzcil(zzciy zzciyVar) {
        this.f26077c = zzciy.m14166a(zzciyVar);
        this.f26078d = zzciy.m14165b(zzciyVar);
        this.f26079e = zzciy.m14164c(zzciyVar);
        this.f26080f = zzciy.m14163d(zzciyVar);
        this.f26076b = zzciy.m14162e(zzciyVar);
        zzciy.m14161f(zzciyVar);
    }

    /* renamed from: a */
    public final /* synthetic */ zzbgj m14179a(zzbgj zzbgjVar) {
        zzbgjVar.mo15570b("/result", this.f26081g);
        zzbhv z = zzbgjVar.mo15543z();
        C3995rj rjVar = this.f26075a;
        z.mo15489a(null, rjVar, rjVar, rjVar, rjVar, false, null, new zza(this.f26077c, null, null), null, null);
        return zzbgjVar;
    }

    /* renamed from: a */
    public final zzdzc<JSONObject> m14174a(final String str, final JSONObject jSONObject) {
        synchronized (this) {
            if (this.f26082h == null) {
                return zzdyq.m12988a((Object) null);
            }
            return zzdyq.m12992a(this.f26082h, new zzdya(this, str, jSONObject) { // from class: c.d.b.d.g.a.lj

                /* renamed from: a */
                public final zzcil f13981a;

                /* renamed from: b */
                public final String f13982b;

                /* renamed from: c */
                public final JSONObject f13983c;

                {
                    this.f13981a = this;
                    this.f13982b = str;
                    this.f13983c = jSONObject;
                }

                @Override // com.google.android.gms.internal.ads.zzdya
                /* renamed from: d */
                public final zzdzc mo13006d(Object obj) {
                    return this.f13981a.m14173a(this.f13982b, this.f13983c, (zzbgj) obj);
                }
            }, this.f26078d);
        }
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m14173a(String str, JSONObject jSONObject, zzbgj zzbgjVar) throws Exception {
        return this.f26081g.m16749a(zzbgjVar, str, jSONObject);
    }

    /* renamed from: a */
    public final void m14180a() {
        synchronized (this) {
            if (this.f26082h != null) {
                zzdyq.m12991a(this.f26082h, new C3881oj(this), this.f26078d);
                this.f26082h = null;
            }
        }
    }

    /* renamed from: a */
    public final void m14177a(zzdnv zzdnvVar, zzdnw zzdnwVar) {
        synchronized (this) {
            if (this.f26082h != null) {
                zzdyq.m12991a(this.f26082h, new C4032sj(this, zzdnvVar, zzdnwVar), this.f26078d);
            }
        }
    }

    /* renamed from: a */
    public final void m14176a(String str, zzahq<Object> zzahqVar) {
        synchronized (this) {
            if (this.f26082h != null) {
                zzdyq.m12991a(this.f26082h, new C3844nj(this, str, zzahqVar), this.f26078d);
            }
        }
    }

    /* renamed from: a */
    public final void m14175a(String str, Map<String, ?> map) {
        synchronized (this) {
            if (this.f26082h != null) {
                zzdyq.m12991a(this.f26082h, new C3918pj(this, str, map), this.f26078d);
            }
        }
    }

    /* renamed from: a */
    public final <T> void m14172a(WeakReference<T> weakReference, String str, zzahq<T> zzahqVar) {
        m14176a(str, new C4106uj(this, weakReference, str, zzahqVar, null));
    }

    /* renamed from: b */
    public final void m14171b() {
        synchronized (this) {
            zzdzc<zzbgj> a = zzdyq.m12993a(zzbgr.m15610a(this.f26077c, this.f26080f, (String) zzwm.m11166e().m16921a(zzabb.f23916y1), this.f26079e, this.f26076b), new zzdvu(this) { // from class: c.d.b.d.g.a.mj

                /* renamed from: a */
                public final zzcil f14178a;

                {
                    this.f14178a = this;
                }

                @Override // com.google.android.gms.internal.ads.zzdvu
                public final Object apply(Object obj) {
                    zzbgj zzbgjVar = (zzbgj) obj;
                    this.f14178a.m14179a(zzbgjVar);
                    return zzbgjVar;
                }
            }, this.f26078d);
            this.f26082h = a;
            zzbcc.m15837a(a, "NativeJavascriptExecutor.initializeEngine");
        }
    }

    /* renamed from: b */
    public final void m14170b(String str, zzahq<Object> zzahqVar) {
        synchronized (this) {
            if (this.f26082h != null) {
                zzdyq.m12991a(this.f26082h, new C3955qj(this, str, zzahqVar), this.f26078d);
            }
        }
    }
}
