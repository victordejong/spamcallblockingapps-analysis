package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C2341q;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bij.class */
public final class bij {

    /* renamed from: e */
    private final Context f11323e;

    /* renamed from: f */
    private final WeakReference<Context> f11324f;

    /* renamed from: g */
    private final bfg f11325g;

    /* renamed from: h */
    private final Executor f11326h;

    /* renamed from: i */
    private final Executor f11327i;

    /* renamed from: j */
    private final ScheduledExecutorService f11328j;

    /* renamed from: k */
    private final bht f11329k;

    /* renamed from: l */
    private final C3647yd f11330l;

    /* renamed from: a */
    private boolean f11319a = false;

    /* renamed from: b */
    private boolean f11320b = false;

    /* renamed from: d */
    private final C3658yo<Boolean> f11322d = new C3658yo<>();

    /* renamed from: m */
    private Map<String, C3159gb> f11331m = new ConcurrentHashMap();

    /* renamed from: c */
    private final long f11321c = C2341q.m14737j().mo13861b();

    public bij(Executor executor, Context context, WeakReference<Context> weakReference, Executor executor2, bfg bfgVar, ScheduledExecutorService scheduledExecutorService, bht bhtVar, C3647yd c3647yd) {
        this.f11325g = bfgVar;
        this.f11323e = context;
        this.f11324f = weakReference;
        this.f11326h = executor2;
        this.f11328j = scheduledExecutorService;
        this.f11327i = executor;
        this.f11329k = bhtVar;
        this.f11330l = c3647yd;
        m11877a("com.google.android.gms.ads.MobileAds", false, "", 0);
    }

    /* renamed from: a */
    public final void m11878a(String str) {
        try {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = new JSONObject(str).getJSONObject("initializer_settings").getJSONObject("config");
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object obj = new Object();
                C3658yo c3658yo = new C3658yo();
                crt m10784a = crg.m10784a(c3658yo, ((Long) dyx.m8158e().m7876a(edi.f16356aO)).longValue(), TimeUnit.SECONDS, this.f11328j);
                this.f11329k.m11919a(next);
                long mo13861b = C2341q.m14737j().mo13861b();
                m10784a.mo6734a(new Runnable(this, obj, c3658yo, next, mo13861b) { // from class: com.google.android.gms.internal.ads.bin

                    /* renamed from: a */
                    private final bij f11336a;

                    /* renamed from: b */
                    private final Object f11337b;

                    /* renamed from: c */
                    private final C3658yo f11338c;

                    /* renamed from: d */
                    private final String f11339d;

                    /* renamed from: e */
                    private final long f11340e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f11336a = this;
                        this.f11337b = obj;
                        this.f11338c = c3658yo;
                        this.f11339d = next;
                        this.f11340e = mo13861b;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11336a.m11879a(this.f11337b, this.f11338c, this.f11339d, this.f11340e);
                    }
                }, this.f11326h);
                arrayList.add(m10784a);
                bit bitVar = new bit(this, obj, next, mo13861b, c3658yo);
                JSONObject optJSONObject = jSONObject.optJSONObject(next);
                ArrayList arrayList2 = new ArrayList();
                if (optJSONObject != null) {
                    try {
                        JSONArray jSONArray = optJSONObject.getJSONArray("data");
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                            String optString = jSONObject2.optString("format", "");
                            JSONObject optJSONObject2 = jSONObject2.optJSONObject("data");
                            Bundle bundle = new Bundle();
                            if (optJSONObject2 != null) {
                                Iterator<String> keys2 = optJSONObject2.keys();
                                while (keys2.hasNext()) {
                                    String next2 = keys2.next();
                                    bundle.putString(next2, optJSONObject2.optString(next2, ""));
                                }
                            }
                            arrayList2.add(new C3169gl(optString, bundle));
                        }
                    } catch (JSONException e) {
                    }
                }
                m11877a(next, false, "", 0);
                try {
                    this.f11327i.execute(new Runnable(this, this.f11325g.m12006a(next, new JSONObject()), bitVar, arrayList2, next) { // from class: com.google.android.gms.internal.ads.bip

                        /* renamed from: a */
                        private final bij f11342a;

                        /* renamed from: b */
                        private final chs f11343b;

                        /* renamed from: c */
                        private final AbstractC3161gd f11344c;

                        /* renamed from: d */
                        private final List f11345d;

                        /* renamed from: e */
                        private final String f11346e;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f11342a = this;
                            this.f11343b = m12006a;
                            this.f11344c = bitVar;
                            this.f11345d = arrayList2;
                            this.f11346e = next;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f11342a.m11882a(this.f11343b, this.f11344c, this.f11345d, this.f11346e);
                        }
                    });
                } catch (zzdhk e2) {
                    try {
                        bitVar.mo7817a("Failed to create Adapter.");
                    } catch (RemoteException e3) {
                        C3645yb.m6748c("", e3);
                    }
                }
            }
            crg.m10774b(arrayList).m10770a(new Callable(this) { // from class: com.google.android.gms.internal.ads.biq

                /* renamed from: a */
                private final bij f11347a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f11347a = this;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f11347a.m11873c();
                }
            }, this.f11326h);
        } catch (JSONException e4) {
            C3556uu.m7051a("Malformed CLD response", e4);
        }
    }

    /* renamed from: a */
    public final void m11877a(String str, boolean z, String str2, int i) {
        this.f11331m.put(str, new C3159gb(str, z, i, str2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [com.google.android.gms.internal.ads.crt] */
    /* renamed from: f */
    private final crt<String> m11868f() {
        C3658yo c3658yo;
        synchronized (this) {
            String m7077c = C2341q.m14740g().m7084h().mo7019h().m7077c();
            if (!TextUtils.isEmpty(m7077c)) {
                c3658yo = crg.m10778a(m7077c);
            } else {
                c3658yo = new C3658yo();
                C2341q.m14740g().m7084h().mo7036a(new Runnable(this, c3658yo) { // from class: com.google.android.gms.internal.ads.bil

                    /* renamed from: a */
                    private final bij f11333a;

                    /* renamed from: b */
                    private final C3658yo f11334b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f11333a = this;
                        this.f11334b = c3658yo;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11333a.m11880a(this.f11334b);
                    }
                });
            }
        }
        return c3658yo;
    }

    /* renamed from: a */
    public final void m11887a() {
        if (((Boolean) dyx.m8158e().m7876a(edi.f16354aM)).booleanValue() && !C2795as.f10259a.mo13599a().booleanValue()) {
            if (this.f11330l.f17638c >= ((Integer) dyx.m8158e().m7876a(edi.f16355aN)).intValue()) {
                if (this.f11319a) {
                    return;
                }
                synchronized (this) {
                    if (!this.f11319a) {
                        this.f11329k.m11920a();
                        this.f11322d.mo6734a(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bim

                            /* renamed from: a */
                            private final bij f11335a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f11335a = this;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f11335a.m11869e();
                            }
                        }, this.f11326h);
                        this.f11319a = true;
                        crt<String> m11868f = m11868f();
                        this.f11328j.schedule(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bio

                            /* renamed from: a */
                            private final bij f11341a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f11341a = this;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f11341a.m11871d();
                            }
                        }, ((Long) dyx.m8158e().m7876a(edi.f16357aP)).longValue(), TimeUnit.SECONDS);
                        crg.m10781a(m11868f, new bir(this), this.f11326h);
                    }
                }
                return;
            }
        }
        m11877a("com.google.android.gms.ads.MobileAds", true, "", 0);
        this.f11322d.m6731b(false);
    }

    /* renamed from: a */
    public final /* synthetic */ void m11882a(chs chsVar, AbstractC3161gd abstractC3161gd, List list, String str) {
        try {
            Context context = this.f11324f.get();
            if (context == null) {
                context = this.f11323e;
            }
            chsVar.m11285a(context, abstractC3161gd, list);
        } catch (zzdhk e) {
            try {
                abstractC3161gd.mo7817a(new StringBuilder(String.valueOf(str).length() + 74).append("Failed to initialize adapter. ").append(str).append(" does not implement the initialize() method.").toString());
            } catch (RemoteException e2) {
                C3645yb.m6748c("", e2);
            }
        }
    }

    /* renamed from: a */
    public final void m11881a(AbstractC3166gi abstractC3166gi) {
        this.f11322d.mo6734a(new Runnable(this, abstractC3166gi) { // from class: com.google.android.gms.internal.ads.bii

            /* renamed from: a */
            private final bij f11317a;

            /* renamed from: b */
            private final AbstractC3166gi f11318b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11317a = this;
                this.f11318b = abstractC3166gi;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f11317a.m11874b(this.f11318b);
            }
        }, this.f11327i);
    }

    /* renamed from: a */
    public final /* synthetic */ void m11880a(C3658yo c3658yo) {
        this.f11326h.execute(new Runnable(this, c3658yo) { // from class: com.google.android.gms.internal.ads.bis

            /* renamed from: a */
            private final bij f11349a;

            /* renamed from: b */
            private final C3658yo f11350b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11349a = this;
                this.f11350b = c3658yo;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C3658yo c3658yo2 = this.f11350b;
                String m7077c = C2341q.m14740g().m7084h().mo7019h().m7077c();
                if (!TextUtils.isEmpty(m7077c)) {
                    c3658yo2.m6731b(m7077c);
                } else {
                    c3658yo2.m6733a(new Exception());
                }
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m11879a(Object obj, C3658yo c3658yo, String str, long j) {
        synchronized (obj) {
            if (!c3658yo.isDone()) {
                m11877a(str, false, "Timeout.", (int) (C2341q.m14737j().mo13861b() - j));
                this.f11329k.m11918a(str, "timeout");
                c3658yo.m6731b(false);
            }
        }
    }

    /* renamed from: b */
    public final List<C3159gb> m11876b() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f11331m.keySet()) {
            C3159gb c3159gb = this.f11331m.get(str);
            arrayList.add(new C3159gb(str, c3159gb.f16685b, c3159gb.f16686c, c3159gb.f16687d));
        }
        return arrayList;
    }

    /* renamed from: b */
    public final /* synthetic */ void m11874b(AbstractC3166gi abstractC3166gi) {
        try {
            abstractC3166gi.mo7814a(m11876b());
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
        }
    }

    /* renamed from: c */
    public final /* synthetic */ Object m11873c() {
        this.f11322d.m6731b(true);
        return null;
    }

    /* renamed from: d */
    public final /* synthetic */ void m11871d() {
        synchronized (this) {
            if (this.f11320b) {
                return;
            }
            m11877a("com.google.android.gms.ads.MobileAds", false, "Timeout.", (int) (C2341q.m14737j().mo13861b() - this.f11321c));
            this.f11322d.m6733a(new Exception());
        }
    }

    /* renamed from: e */
    public final /* synthetic */ void m11869e() {
        this.f11329k.m11917b();
    }
}
