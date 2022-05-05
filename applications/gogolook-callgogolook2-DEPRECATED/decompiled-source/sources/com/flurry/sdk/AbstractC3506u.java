package com.flurry.sdk;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.flurry.sdk.C3324j;
import com.flurry.sdk.C3334je;
import com.flurry.sdk.C3425kq;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.flurry.sdk.u */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/u.class */
public abstract class AbstractC3506u implements AbstractC3518x {

    /* renamed from: a */
    public static final String f6057a = "u";

    /* renamed from: b */
    public final int f6058b;

    /* renamed from: c */
    public final String f6059c;

    /* renamed from: d */
    public final C2952di f6060d;

    /* renamed from: g */
    public C2853ay f6063g;

    /* renamed from: h */
    public C2853ay f6064h;

    /* renamed from: i */
    public C3374k f6065i;

    /* renamed from: j */
    public EnumC3515a f6066j;

    /* renamed from: k */
    public final WeakReference<Context> f6067k;

    /* renamed from: l */
    public final WeakReference<ViewGroup> f6068l;

    /* renamed from: e */
    public boolean f6061e = false;

    /* renamed from: f */
    public boolean f6062f = false;

    /* renamed from: m */
    public boolean f6069m = false;

    /* renamed from: n */
    public boolean f6070n = false;

    /* renamed from: o */
    public boolean f6071o = false;

    /* renamed from: p */
    public final AbstractC3344jl<C3324j> f6072p = new AbstractC3344jl<C3324j>() { // from class: com.flurry.sdk.u.1
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo32302a(C3324j jVar) {
            C3324j jVar2 = jVar;
            AbstractC3518x xVar = jVar2.f5647a;
            AbstractC3506u uVar = AbstractC3506u.this;
            if (xVar == uVar && jVar2.f5648b != null) {
                uVar.mo32318a(jVar2);
            }
        }
    };

    /* renamed from: q */
    public final AbstractC3344jl<C3425kq> f6073q = new AbstractC3344jl<C3425kq>() { // from class: com.flurry.sdk.u.2
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C3425kq kqVar) {
            C3425kq kqVar2 = kqVar;
            if (kqVar2.f5860b != null) {
                int i = C35147.f6085a[kqVar2.f5861c - 1];
                if (i == 1) {
                    AbstractC3506u uVar = AbstractC3506u.this;
                    if (uVar.f6062f) {
                        String str = AbstractC3506u.f6057a;
                        C3356jq.m32615a(3, str, "Session created. Fetching ad now for " + uVar);
                        uVar.f6060d.m33411a(uVar, uVar.m32313i(), uVar.m32312j());
                        uVar.f6062f = false;
                    }
                } else if (i == 2) {
                    AbstractC3506u uVar2 = AbstractC3506u.this;
                    uVar2.f6061e = false;
                    uVar2.f6062f = false;
                }
            }
        }
    };

    /* renamed from: r */
    public final AbstractC3344jl<C3334je> f6074r = new AbstractC3344jl<C3334je>() { // from class: com.flurry.sdk.u.3
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C3334je jeVar) {
            C3334je jeVar2 = jeVar;
            if (jeVar2.f5689a.get() == null) {
                C3356jq.m32613a(AbstractC3506u.f6057a, "Activity has been destroyed, can't pass ActivityLifecycleEvent to adobject.");
                return;
            }
            int i = C35147.f6086b[jeVar2.f5690b.ordinal()];
            if (i == 1) {
                AbstractC3506u.this.mo32285b();
            } else if (i == 2) {
                AbstractC3506u.this.mo32284c();
            }
        }
    };

    /* renamed from: s */
    public final AbstractC3107fp f6075s = new AbstractC3107fp() { // from class: com.flurry.sdk.u.4
        @Override // com.flurry.sdk.AbstractC3107fp
        /* renamed from: a */
        public final void mo32301a() {
            AbstractC3506u.m32317a(AbstractC3506u.this);
        }
    };

    /* renamed from: com.flurry.sdk.u$7 */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/u$7.class */
    public static final /* synthetic */ class C35147 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f6085a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f6086b = new int[C3334je.EnumC3335a.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003d -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:18:0x0032). Please submit an issue!!! */
        static {
            try {
                f6086b[C3334je.EnumC3335a.kPaused.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6086b[C3334je.EnumC3335a.kResumed.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            f6085a = new int[C3425kq.EnumC3426a.m32518a().length];
            try {
                f6085a[C3425kq.EnumC3426a.f5865c - 1] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f6085a[C3425kq.EnumC3426a.f5867e - 1] = 2;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.flurry.sdk.u$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/u$a.class */
    public enum EnumC3515a {
        INIT,
        READY
    }

    public AbstractC3506u(Context context, ViewGroup viewGroup, String str) {
        C3484p a = C3484p.m32358a();
        if (a != null) {
            this.f6058b = C3010dx.m33317a();
            this.f6067k = new WeakReference<>(context);
            this.f6068l = new WeakReference<>(viewGroup);
            this.f6059c = str;
            this.f6060d = new C2952di(str);
            a.f6000b.m32296a(context, this);
            C3345jm.m32636a().m32632a("com.flurry.android.impl.ads.AdStateEvent", this.f6072p);
            C3345jm.m32636a().m32632a("com.flurry.android.sdk.FlurrySessionEvent", this.f6073q);
            C3345jm.m32636a().m32632a("com.flurry.android.sdk.ActivityLifecycleEvent", this.f6074r);
            return;
        }
        throw new IllegalStateException("A session must be started before ad objects may be instantiated.");
    }

    /* renamed from: a */
    public static /* synthetic */ void m32317a(AbstractC3506u uVar) {
        if (!uVar.f6070n) {
            C3356jq.m32615a(4, f6057a, "Fire partial viewability");
            uVar.m32319a(EnumC2874bi.EV_PARTIAL_VIEWED, Collections.emptyMap());
            uVar.f6070n = true;
        }
    }

    /* renamed from: b */
    public static Map<String, String> m32316b(int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("vt", String.valueOf(i));
        return hashMap;
    }

    @Override // com.flurry.sdk.AbstractC3518x
    /* renamed from: a */
    public void mo32290a() {
        C3345jm.m32636a().m32634a(this.f6072p);
        C3345jm.m32636a().m32634a(this.f6073q);
        C3345jm.m32636a().m32634a(this.f6074r);
        this.f6061e = false;
        this.f6062f = false;
        C3484p.m32358a().f6000b.m32293b(mo32282e(), this);
        mo32309p();
        C2952di diVar = this.f6060d;
        if (diVar != null) {
            diVar.m33408b();
        }
        this.f6065i = null;
    }

    /* renamed from: a */
    public void m32320a(int i) {
        if (i != 0 || !this.f6071o) {
            String str = f6057a;
            C3356jq.m32615a(4, str, "Log impression for type: " + String.valueOf(i));
            m32319a(i == 0 ? EnumC2874bi.EV_NATIVE_IMPRESSION : EnumC2874bi.EV_STATIC_VIEWED_3P, m32316b(i));
            if (i == 0) {
                this.f6071o = true;
            }
            mo32304v();
        }
    }

    @Override // com.flurry.sdk.AbstractC3518x
    /* renamed from: a */
    public void mo32289a(long j, boolean z) {
        C3356jq.m32615a(3, "VerifyPackageLog", "Getting nextAdUnit...  current cacheSize: " + m32312j().m33687a());
        this.f6060d.m33420a();
        if (m32312j().m33687a() != 0 || z) {
            this.f6060d.m33411a(this, m32313i(), m32312j());
            return;
        }
        C3356jq.m32615a(3, "VerifyPackageLog", "nextAdUnit() cacheSize is empty");
        C3324j jVar = new C3324j();
        jVar.f5647a = this;
        jVar.f5648b = C3324j.EnumC3325a.kOnFetchFailed;
        jVar.m32637b();
    }

    @Override // com.flurry.sdk.AbstractC3518x
    /* renamed from: a */
    public void mo32288a(final View view) {
        if (view != null) {
            String str = f6057a;
            C3356jq.m32615a(4, str, "Set tracking view for " + view.toString());
            C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.u.5
                @Override // com.flurry.sdk.AbstractRunnableC3447lc
                /* renamed from: a */
                public final void mo32300a() {
                    if (!AbstractC3506u.this.f6070n) {
                        C3356jq.m32615a(3, AbstractC3506u.f6057a, "Set trackingView for partial impression");
                        C3109fr.m33055a().m33054a(new C3104fm(view), AbstractC3506u.this.f6075s);
                    }
                    for (final C3105fn fnVar : AbstractC3506u.this.f6064h.f4111b.f4156k.f5044a.f5026a) {
                        if (!fnVar.f5022d) {
                            View view2 = view;
                            if (view2 != null) {
                                String str2 = C3105fn.f5019a;
                                C3356jq.m32613a(str2, "Update tracking view: " + view2.toString());
                                C3105fn.m33058a(fnVar.f5020b);
                                fnVar.f5020b = new WeakReference<>(view2);
                            }
                            AbstractC3107fp fpVar = new AbstractC3107fp() { // from class: com.flurry.sdk.u.5.1
                                @Override // com.flurry.sdk.AbstractC3107fp
                                /* renamed from: a */
                                public final void mo32301a() {
                                    AbstractC3506u.this.m32320a(fnVar.f5021c.f4552a);
                                }
                            };
                            String str3 = AbstractC3506u.f6057a;
                            C3356jq.m32615a(3, str3, "Set trackingView for static impression: " + fnVar.f5021c.f4552a);
                            C3109fr.m33055a().m33054a(fnVar, fpVar);
                        }
                    }
                }
            });
        }
    }

    @Override // com.flurry.sdk.AbstractC3518x
    /* renamed from: a */
    public final void mo32287a(C2853ay ayVar) {
        this.f6063g = ayVar;
    }

    /* renamed from: a */
    public final void m32319a(EnumC2874bi biVar, Map<String, String> map) {
        if (biVar == null) {
            C3356jq.m32609b(f6057a, "Fail to send ad event");
        } else {
            C3007du.m33321a(biVar, map, mo32282e(), this, this.f6064h, 0);
        }
    }

    /* renamed from: a */
    public void mo32318a(C3324j jVar) {
        int a;
        if ((C3324j.EnumC3325a.kOnFetched.equals(jVar.f5648b) || C3324j.EnumC3325a.kOnFetchFailed.equals(jVar.f5648b)) && (a = m32312j().m33687a()) == 0) {
            String str = f6057a;
            C3356jq.m32615a(3, str, "Starting ad request from EnsureCacheNotEmpty size: " + a);
            m32313i().m33375a(this, m32312j(), (C2853ay) null);
        }
        if (C3324j.EnumC3325a.kOnAppExit.equals(jVar.f5648b) && jVar.f5647a.equals(this)) {
            m32307s();
        }
    }

    @Override // com.flurry.sdk.AbstractC3518x
    /* renamed from: a */
    public final void mo32286a(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f6060d.m33406c();
            m32312j().m33685a(str);
        }
    }

    @Override // com.flurry.sdk.AbstractC3518x
    /* renamed from: b */
    public void mo32285b() {
        C3356jq.m32615a(3, f6057a, "Pause tracker");
        if (!C3109fr.m33055a().m33050d()) {
            C3109fr.m33055a().m33051c();
        }
    }

    @Override // com.flurry.sdk.AbstractC3518x
    /* renamed from: c */
    public void mo32284c() {
        if (this.f6061e && this.f6064h.m33535a(EnumC2874bi.EV_AD_CLOSED.f4289an)) {
            C3007du.m33321a(EnumC2874bi.EV_AD_CLOSED, Collections.emptyMap(), mo32282e(), this, this.f6064h, 0);
            this.f6064h.m33530b(EnumC2874bi.EV_AD_CLOSED.f4289an);
        }
        C3356jq.m32615a(3, f6057a, "Resume tracker");
        if (C3109fr.m33055a().m33050d()) {
            C3109fr.m33055a().m33052b();
        }
    }

    @Override // com.flurry.sdk.AbstractC3518x
    /* renamed from: d */
    public final int mo32283d() {
        return this.f6058b;
    }

    @Override // com.flurry.sdk.AbstractC3518x
    /* renamed from: e */
    public final Context mo32282e() {
        return this.f6067k.get();
    }

    @Override // com.flurry.sdk.AbstractC3518x
    /* renamed from: f */
    public final ViewGroup mo32281f() {
        return this.f6068l.get();
    }

    public void finalize() throws Throwable {
        super.finalize();
        mo32290a();
    }

    @Override // com.flurry.sdk.AbstractC3518x
    /* renamed from: h */
    public final C2952di mo32280h() {
        return this.f6060d;
    }

    /* renamed from: i */
    public C2974dj m32313i() {
        return C3484p.m32358a().f5999a.m33680a(this.f6059c, null, this.f6065i).f3943a;
    }

    /* renamed from: j */
    public C2792ac m32312j() {
        return C3484p.m32358a().f5999a.m33680a(this.f6059c, null, this.f6065i).f3944b;
    }

    @Override // com.flurry.sdk.AbstractC3518x
    /* renamed from: k */
    public final C2853ay mo32279k() {
        return this.f6064h;
    }

    @Override // com.flurry.sdk.AbstractC3518x
    /* renamed from: l */
    public final C3374k mo32278l() {
        return this.f6065i;
    }

    @Override // com.flurry.sdk.AbstractC3518x
    /* renamed from: m */
    public final void mo32277m() {
        this.f6060d.m33404d();
    }

    /* renamed from: n */
    public boolean mo32311n() {
        boolean z;
        boolean z2;
        if (!this.f6066j.equals(EnumC3515a.READY)) {
            return false;
        }
        Iterator<C2921cr> it = this.f6064h.f4111b.m33504b().iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                z2 = false;
                break;
            }
            C2921cr next = it.next();
            if (next.f4515a.equals("htmlRenderer")) {
                Map<String, String> map = next.f4521g;
                String str = map.get("templateType");
                z2 = !TextUtils.isEmpty(str) ? str.equals("Html.Renderer.Tiles") : false;
                String str2 = map.get("presentationPhase");
                z = !TextUtils.isEmpty(str2) ? str2.equals("POSTTAP") : false;
            }
        }
        return z2 && z;
    }

    /* renamed from: o */
    public final void m32310o() {
        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.u.6
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                AbstractC3506u.this.m32320a(0);
            }
        });
    }

    /* renamed from: p */
    public void mo32309p() {
        if (C3484p.m32358a().f6006h != null) {
            C2806af.m33650a(this);
        }
    }

    /* renamed from: r */
    public final void m32308r() {
        this.f6064h = this.f6063g;
        this.f6063g = null;
    }

    /* renamed from: s */
    public final void m32307s() {
        this.f6061e = true;
        C2853ay ayVar = this.f6064h;
        String str = EnumC2874bi.EV_AD_CLOSED.f4289an;
        C2861bc bcVar = ayVar.f4111b;
        C2854az azVar = bcVar.f4148c.get(bcVar.f4150e);
        if (!TextUtils.isEmpty(str) && azVar.f4115a.containsKey(str)) {
            azVar.f4115a.put(str, Boolean.FALSE);
        }
    }

    /* renamed from: t */
    public final void m32306t() {
        C3294ij.m32755a();
        if (TextUtils.isEmpty(C3294ij.m32754b())) {
            String str = f6057a;
            C3356jq.m32615a(3, str, "Session Id not created yet. Delaying the fetch until session is created." + this);
            this.f6062f = true;
            return;
        }
        String str2 = f6057a;
        C3356jq.m32615a(3, str2, "Fetching ad now for " + this);
        this.f6060d.m33411a(this, m32313i(), m32312j());
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x015b A[SYNTHETIC] */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo32304v() {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.AbstractC3506u.mo32304v():void");
    }

    /* renamed from: x */
    public final List<String> m32303x() {
        if (!this.f6066j.equals(EnumC3515a.READY)) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<C2921cr> it = this.f6064h.f4111b.m33504b().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            C2921cr next = it.next();
            if (next.f4515a.equals("adView")) {
                try {
                    JSONArray jSONArray = new JSONObject(new JSONObject(next.f4517c).getString(NovaHomeBadger.TAG)).getJSONArray("assets");
                    int min = Math.min(4, jSONArray.length());
                    for (int i = 0; i < min; i++) {
                        JSONArray jSONArray2 = jSONArray.getJSONObject(i).getJSONArray("precache");
                        int length = jSONArray2.length();
                        for (int i2 = 0; i2 < length; i2++) {
                            arrayList.add(jSONArray2.getString(i2));
                        }
                    }
                } catch (JSONException e) {
                    C3356jq.m32614a(6, f6057a, "Error parsing ad view json for getting asset urls", e);
                }
            }
        }
        return arrayList;
    }
}
