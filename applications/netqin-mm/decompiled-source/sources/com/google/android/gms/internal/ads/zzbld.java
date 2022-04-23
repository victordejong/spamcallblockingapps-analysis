package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbbz;
import com.google.android.gms.internal.ads.zzbld;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbld.class */
public final class zzbld extends zzxv {

    /* renamed from: a */
    public final Context f25124a;

    /* renamed from: b */
    public final zzbbx f25125b;

    /* renamed from: c */
    public final zzcku f25126c;

    /* renamed from: d */
    public final zzctb<zzdpa, zzcut> f25127d;

    /* renamed from: e */
    public final zzcza f25128e;

    /* renamed from: f */
    public final zzcnu f25129f;

    /* renamed from: g */
    public final zzawo f25130g;

    /* renamed from: h */
    public final zzckw f25131h;

    /* renamed from: i */
    public boolean f25132i = false;

    public zzbld(Context context, zzbbx zzbbxVar, zzcku zzckuVar, zzctb<zzdpa, zzcut> zzctbVar, zzcza zzczaVar, zzcnu zzcnuVar, zzawo zzawoVar, zzckw zzckwVar) {
        this.f25124a = context;
        this.f25125b = zzbbxVar;
        this.f25126c = zzckuVar;
        this.f25127d = zzctbVar;
        this.f25128e = zzczaVar;
        this.f25129f = zzcnuVar;
        this.f25130g = zzawoVar;
        this.f25131h = zzckwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: J1 */
    public final void mo10937J1() {
        this.f25129f.m13997a();
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: S1 */
    public final List<zzaiq> mo10935S1() throws RemoteException {
        return this.f25129f.m13983c();
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: a */
    public final void mo10934a(float f) {
        synchronized (this) {
            zzp.m17964h().m16022a(f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: a */
    public final void mo10933a(IObjectWrapper iObjectWrapper, String str) {
        if (iObjectWrapper == null) {
            zzbbq.m15856b("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) ObjectWrapper.m17021Q(iObjectWrapper);
        if (context == null) {
            zzbbq.m15856b("Context is null. Failed to open debug menu.");
            return;
        }
        zzazp zzazpVar = new zzazp(context);
        zzazpVar.m16013a(str);
        zzazpVar.m16009b(this.f25125b.f24759a);
        zzazpVar.m16017a();
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: a */
    public final void mo10932a(zzaae zzaaeVar) throws RemoteException {
        this.f25130g.m16255a(this.f25124a, zzaaeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: a */
    public final void mo10931a(zzait zzaitVar) throws RemoteException {
        this.f25129f.m13996a(zzaitVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: a */
    public final void mo10930a(zzanb zzanbVar) throws RemoteException {
        this.f25126c.m14105a(zzanbVar);
    }

    /* renamed from: a */
    public final /* synthetic */ void m15333a(Runnable runnable) {
        Preconditions.m17286a("Adapters must be initialized on the main thread.");
        Map<String, zzana> e = zzp.m17965g().m16176i().mo16075a().m16195e();
        if (!(e == null || e.isEmpty())) {
            if (runnable != null) {
                try {
                    runnable.run();
                } catch (Throwable th) {
                    zzbbq.m15853c("Could not initialize rewarded ads.", th);
                    return;
                }
            }
            if (this.f25126c.m14106a()) {
                HashMap hashMap = new HashMap();
                for (zzana zzanaVar : e.values()) {
                    for (zzamx zzamxVar : zzanaVar.f24201a) {
                        String str = zzamxVar.f24199b;
                        for (String str2 : zzamxVar.f24198a) {
                            if (!hashMap.containsKey(str2)) {
                                hashMap.put(str2, new ArrayList());
                            }
                            if (str != null) {
                                ((Collection) hashMap.get(str2)).add(str);
                            }
                        }
                    }
                }
                JSONObject jSONObject = new JSONObject();
                for (Map.Entry entry : hashMap.entrySet()) {
                    String str3 = (String) entry.getKey();
                    try {
                        zzctc<zzdpa, zzcut> a = this.f25127d.mo13804a(str3, jSONObject);
                        if (a != null) {
                            zzdpa zzdpaVar = a.f26497b;
                            if (!zzdpaVar.m13352d() && zzdpaVar.m13345k()) {
                                zzdpaVar.m13366a(this.f25124a, a.f26498c, (List) entry.getValue());
                                String valueOf = String.valueOf(str3);
                                zzbbq.m15858a(valueOf.length() != 0 ? "Initialized rewarded video mediation adapter ".concat(valueOf) : new String("Initialized rewarded video mediation adapter "));
                            }
                        }
                    } catch (zzdos e2) {
                        StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 56);
                        sb.append("Failed to initialize rewarded video mediation adapter \"");
                        sb.append(str3);
                        sb.append("\"");
                        zzbbq.m15853c(sb.toString(), e2);
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: b */
    public final void mo10929b(String str, IObjectWrapper iObjectWrapper) {
        String str2;
        zzabb.m16916a(this.f25124a);
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23715N1)).booleanValue()) {
            zzp.m17969c();
            str2 = zzayu.m16079o(this.f25124a);
        } else {
            str2 = "";
        }
        if (!TextUtils.isEmpty(str2)) {
            str = str2;
        }
        if (!TextUtils.isEmpty(str)) {
            boolean booleanValue = ((Boolean) zzwm.m11166e().m16921a(zzabb.f23705L1)).booleanValue() | ((Boolean) zzwm.m11166e().m16921a(zzabb.f23857n0)).booleanValue();
            Runnable runnable = null;
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23857n0)).booleanValue()) {
                booleanValue = true;
                final Runnable runnable2 = (Runnable) ObjectWrapper.m17021Q(iObjectWrapper);
                runnable = new Runnable(this, runnable2) { // from class: c.d.b.d.g.a.vb

                    /* renamed from: a */
                    public final zzbld f15810a;

                    /* renamed from: b */
                    public final Runnable f15811b;

                    {
                        this.f15810a = this;
                        this.f15811b = runnable2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbbz.f24768e.execute(new Runnable(this.f15810a, this.f15811b) { // from class: c.d.b.d.g.a.ub

                            /* renamed from: a */
                            public final zzbld f15596a;

                            /* renamed from: b */
                            public final Runnable f15597b;

                            {
                                this.f15596a = r4;
                                this.f15597b = r5;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f15596a.m15333a(this.f15597b);
                            }
                        });
                    }
                };
            }
            if (booleanValue) {
                zzp.m17961k().m17993a(this.f25124a, this.f25125b, str, runnable);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: b2 */
    public final boolean mo10928b2() {
        boolean b;
        synchronized (this) {
            b = zzp.m17964h().m16019b();
        }
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: g */
    public final void mo10927g(boolean z) {
        synchronized (this) {
            zzp.m17964h().m16020a(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    public final void initialize() {
        synchronized (this) {
            if (this.f25132i) {
                zzbbq.m15852d("Mobile ads is initialized already.");
                return;
            }
            zzabb.m16916a(this.f25124a);
            zzp.m17965g().m16191a(this.f25124a, this.f25125b);
            zzp.m17963i().m11457a(this.f25124a);
            this.f25132i = true;
            this.f25129f.m13986b();
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23709M0)).booleanValue()) {
                this.f25128e.m13757a();
            }
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23710M1)).booleanValue()) {
                this.f25131h.m14100a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: n1 */
    public final String mo10926n1() {
        return this.f25125b.f24759a;
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: p */
    public final void mo10925p(String str) {
        synchronized (this) {
            zzabb.m16916a(this.f25124a);
            if (!TextUtils.isEmpty(str)) {
                if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23705L1)).booleanValue()) {
                    zzp.m17961k().m17993a(this.f25124a, this.f25125b, str, (Runnable) null);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: q */
    public final void mo10924q(String str) {
        this.f25128e.m13756a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: y0 */
    public final float mo10923y0() {
        float a;
        synchronized (this) {
            a = zzp.m17964h().m16023a();
        }
        return a;
    }
}
