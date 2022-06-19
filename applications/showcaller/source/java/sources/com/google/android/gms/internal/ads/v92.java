package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/v92.class */
public final class v92 implements wa2<w92> {

    /* renamed from: a */
    private final s03 f31106a;

    /* renamed from: b */
    private final ScheduledExecutorService f31107b;

    /* renamed from: c */
    private final v22 f31108c;

    /* renamed from: d */
    private final Context f31109d;

    /* renamed from: e */
    private final xj2 f31110e;

    /* renamed from: f */
    private final p22 f31111f;

    /* renamed from: g */
    private final ol1 f31112g;

    /* renamed from: h */
    final String f31113h;

    public v92(s03 s03Var, ScheduledExecutorService scheduledExecutorService, String str, v22 v22Var, Context context, xj2 xj2Var, p22 p22Var, ol1 ol1Var) {
        this.f31106a = s03Var;
        this.f31107b = scheduledExecutorService;
        this.f31113h = str;
        this.f31108c = v22Var;
        this.f31109d = context;
        this.f31110e = xj2Var;
        this.f31111f = p22Var;
        this.f31112g = ol1Var;
    }

    /* renamed from: d */
    private final r03<JSONObject> m10060d(String str, List<Bundle> list, Bundle bundle, boolean z, boolean z2) {
        r90 r90Var;
        vi0 vi0Var = new vi0();
        if (z2) {
            this.f31111f.m12461a(str);
            r90Var = this.f31111f.m12460b(str);
        } else {
            try {
                r90Var = this.f31112g.m12596c(str);
            } catch (RemoteException e) {
                ei0.m15466d("Couldn't create RTB adapter : ", e);
                r90Var = null;
            }
        }
        Objects.requireNonNull(r90Var);
        y22 y22Var = new y22(str, r90Var, vi0Var);
        if (z) {
            r90Var.mo11648O4(BinderC6255b.m16744m2(this.f31109d), this.f31113h, bundle, list.get(0), this.f31110e.f32078e, y22Var);
        } else {
            y22Var.m8972b();
        }
        return vi0Var;
    }

    /* renamed from: a */
    public final /* synthetic */ r03 m10063a(String str, z22 z22Var, Bundle bundle) {
        return m10060d(str, Collections.singletonList(z22Var.f32794d), bundle, z22Var.f32792b, z22Var.f32793c);
    }

    /* renamed from: b */
    public final /* synthetic */ r03 m10062b(String str, List list, Bundle bundle) {
        return m10060d(str, list, bundle, true, true);
    }

    /* renamed from: c */
    public final /* bridge */ /* synthetic */ r03 m10061c() {
        Map<String, List<Bundle>> m10099c = this.f31108c.m10099c(this.f31113h, this.f31110e.f32079f);
        ArrayList arrayList = new ArrayList();
        Iterator<E> it = ((zzfon) m10099c).entrySet().iterator();
        while (true) {
            Bundle bundle = null;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            List list = (List) entry.getValue();
            Bundle bundle2 = this.f31110e.f32077d.f33671p;
            if (bundle2 != null) {
                bundle = bundle2.getBundle(str);
            }
            arrayList.add(k03.m13998f((a03) k03.m13996h(a03.m16718E(k03.m13999e(new tz2(this, str, list, bundle) { // from class: com.google.android.gms.internal.ads.q92

                /* renamed from: a */
                private final v92 f28348a;

                /* renamed from: b */
                private final String f28349b;

                /* renamed from: c */
                private final List f28350c;

                /* renamed from: d */
                private final Bundle f28351d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f28348a = this;
                    this.f28349b = str;
                    this.f28350c = list;
                    this.f28351d = bundle;
                }

                @Override // com.google.android.gms.internal.ads.tz2
                public final r03 zza() {
                    return this.f28348a.m10062b(this.f28349b, this.f28350c, this.f28351d);
                }
            }, this.f31106a)), ((Long) C7192yr.m8714c().m14263c(C6679kw.f25620X0)).longValue(), TimeUnit.MILLISECONDS, this.f31107b), Throwable.class, new nu2(str) { // from class: com.google.android.gms.internal.ads.r92

                /* renamed from: a */
                private final String f28829a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f28829a = str;
                }

                @Override // com.google.android.gms.internal.ads.nu2
                /* renamed from: a */
                public final Object mo8501a(Object obj) {
                    Throwable th = (Throwable) obj;
                    String valueOf = String.valueOf(this.f28829a);
                    ei0.m15467c(valueOf.length() != 0 ? "Error calling adapter: ".concat(valueOf) : new String("Error calling adapter: "));
                    return null;
                }
            }, this.f31106a));
        }
        for (Map.Entry entry2 : ((zzfon) this.f31108c.m10100b()).entrySet()) {
            z22 z22Var = (z22) entry2.getValue();
            String str2 = z22Var.f32791a;
            Bundle bundle3 = this.f31110e.f32077d.f33671p;
            arrayList.add(k03.m13998f((a03) k03.m13996h(a03.m16718E(k03.m13999e(new tz2(this, str2, z22Var, bundle3 != null ? bundle3.getBundle(str2) : null) { // from class: com.google.android.gms.internal.ads.s92

                /* renamed from: a */
                private final v92 f29425a;

                /* renamed from: b */
                private final String f29426b;

                /* renamed from: c */
                private final z22 f29427c;

                /* renamed from: d */
                private final Bundle f29428d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f29425a = this;
                    this.f29426b = str2;
                    this.f29427c = z22Var;
                    this.f29428d = bundle5;
                }

                @Override // com.google.android.gms.internal.ads.tz2
                public final r03 zza() {
                    return this.f29425a.m10063a(this.f29426b, this.f29427c, this.f29428d);
                }
            }, this.f31106a)), ((Long) C7192yr.m8714c().m14263c(C6679kw.f25620X0)).longValue(), TimeUnit.MILLISECONDS, this.f31107b), Throwable.class, new nu2(str2) { // from class: com.google.android.gms.internal.ads.t92

                /* renamed from: a */
                private final String f29869a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f29869a = str2;
                }

                @Override // com.google.android.gms.internal.ads.nu2
                /* renamed from: a */
                public final Object mo8501a(Object obj) {
                    Throwable th = (Throwable) obj;
                    String valueOf = String.valueOf(this.f29869a);
                    ei0.m15467c(valueOf.length() != 0 ? "Error calling adapter: ".concat(valueOf) : new String("Error calling adapter: "));
                    return null;
                }
            }, this.f31106a));
        }
        return k03.m13989o(arrayList).m14516a(new Callable(arrayList) { // from class: com.google.android.gms.internal.ads.u92

            /* renamed from: a */
            private final List f30544a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f30544a = arrayList;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<r03> list2 = this.f30544a;
                JSONArray jSONArray = new JSONArray();
                for (r03 r03Var : list2) {
                    if (((JSONObject) r03Var.get()) != null) {
                        jSONArray.put(r03Var.get());
                    }
                }
                if (jSONArray.length() == 0) {
                    return null;
                }
                return new w92(jSONArray.toString());
            }
        }, this.f31106a);
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<w92> zza() {
        return k03.m13999e(new tz2(this) { // from class: com.google.android.gms.internal.ads.p92

            /* renamed from: a */
            private final v92 f27912a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27912a = this;
            }

            @Override // com.google.android.gms.internal.ads.tz2
            public final r03 zza() {
                return this.f27912a.m10061c();
            }
        }, this.f31106a);
    }
}
