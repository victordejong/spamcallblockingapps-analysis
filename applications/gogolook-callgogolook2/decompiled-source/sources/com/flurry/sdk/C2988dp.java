package com.flurry.sdk;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.flurry.sdk.C2857bb;
import com.flurry.sdk.C2862bd;
import com.flurry.sdk.C3425kq;
import gogolook.callgogolook2.gson.UserProfile;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.dp */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/dp.class */
public class C2988dp {

    /* renamed from: j */
    public static final String f4663j = "dp";

    /* renamed from: a */
    public WeakReference<C3423kp> f4664a;

    /* renamed from: b */
    public C2885bo f4665b;

    /* renamed from: c */
    public C3478n f4666c;

    /* renamed from: d */
    public C3475m f4667d;

    /* renamed from: e */
    public AbstractC3140fy f4668e;

    /* renamed from: f */
    public AbstractC3161gk f4669f;

    /* renamed from: g */
    public File f4670g;

    /* renamed from: h */
    public C3342jj<List<C2862bd>> f4671h;

    /* renamed from: i */
    public String f4672i;

    /* renamed from: k */
    public final Map<String, C2862bd> f4673k = Collections.synchronizedMap(new HashMap());

    /* renamed from: l */
    public final AbstractC3344jl<C3425kq> f4674l = new AbstractC3344jl<C3425kq>() { // from class: com.flurry.sdk.dp.1
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C3425kq kqVar) {
            String str;
            C3425kq kqVar2 = kqVar;
            if (C2988dp.this.f4664a == null || kqVar2.f5860b == C2988dp.this.f4664a.get()) {
                int i = C29975.f4679a[kqVar2.f5861c - 1];
                if (i == 1) {
                    final C2988dp dpVar = C2988dp.this;
                    C3423kp kpVar = kqVar2.f5860b;
                    Context context = kqVar2.f5859a.get();
                    dpVar.f4664a = new WeakReference<>(kpVar);
                    dpVar.f4665b = new C2885bo();
                    dpVar.f4666c = new C3478n();
                    dpVar.f4667d = new C3475m();
                    C3475m mVar = dpVar.f4667d;
                    String str2 = "market://details?id=" + C3331jb.m32681a().f5679a.getPackageName();
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(Uri.parse(str2));
                    C3445la.m32466a(intent);
                    dpVar.f4668e = new C3150gb();
                    dpVar.f4669f = new C3153gc();
                    dpVar.f4670g = C3331jb.m32681a().f5679a.getFileStreamPath(".flurryadlog." + Integer.toString(C3331jb.m32681a().f5682d.hashCode(), 16));
                    C3484p.m32358a().f6000b.m32295b();
                    dpVar.f4671h = new C3342jj<>(C3331jb.m32681a().f5679a.getFileStreamPath(".yflurryadlog." + Long.toString(C3445la.m32449i(C3331jb.m32681a().f5682d), 16)), ".yflurryadlog.", 1, new AbstractC3422ko<List<C2862bd>>(dpVar) { // from class: com.flurry.sdk.dp.6
                        @Override // com.flurry.sdk.AbstractC3422ko
                        /* renamed from: a */
                        public final AbstractC3417kl<List<C2862bd>> mo32339a(int i2) {
                            return new C3414kk(new C2862bd.C2863a(new C2857bb.C2858a()));
                        }
                    });
                    if (context == null) {
                        str = null;
                    } else {
                        str = (context != null && Build.VERSION.SDK_INT >= 17) ? WebSettings.getDefaultUserAgent(C3331jb.m32681a().f5679a) : null;
                        if (TextUtils.isEmpty(str)) {
                            str = context == null ? null : new WebView(context).getSettings().getUserAgentString();
                        }
                    }
                    dpVar.f4672i = str;
                    C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.dp.7
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                            C2988dp.this.m33341b();
                        }
                    });
                } else if (i == 2) {
                    C2988dp dpVar2 = C2988dp.this;
                    Context context2 = kqVar2.f5859a.get();
                    C3478n nVar = dpVar2.f4666c;
                    C3356jq.m32615a(3, C3478n.f5989a, "Registered Event Handler ");
                    C3345jm.m32636a().m32632a("com.flurry.android.impl.ads.AdEvent", nVar.f5992b);
                    C3484p.m32358a().f6005g.m33477a();
                    C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc(dpVar2) { // from class: com.flurry.sdk.dp.8
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                            C3484p.m32358a().f6006h.m33643b();
                        }
                    });
                    C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc(dpVar2) { // from class: com.flurry.sdk.dp.9
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                            C3484p.m32358a().f6003e.m32558c();
                        }
                    });
                    if (!C3336jf.m32668a().m32667b()) {
                        C3484p.m32358a().f6000b.m32294b(context2);
                    }
                } else if (i == 3) {
                    final C2988dp dpVar3 = C2988dp.this;
                    Context context3 = kqVar2.f5859a.get();
                    if (!C3336jf.m32668a().m32667b()) {
                        C3484p.m32358a().f6000b.m32297a(context3);
                    }
                    C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.dp.10
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                            C2988dp.this.m33339c();
                        }
                    });
                    C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc(dpVar3) { // from class: com.flurry.sdk.dp.11
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                            C3484p.m32358a().m32351b();
                        }
                    });
                    C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc(dpVar3) { // from class: com.flurry.sdk.dp.12
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                            C3484p.m32358a().m32343f();
                        }
                    });
                } else if (i == 4) {
                    C3345jm.m32636a().m32630b("com.flurry.android.sdk.FlurrySessionEvent", C2988dp.this.f4674l);
                    final C2988dp dpVar4 = C2988dp.this;
                    C3478n nVar2 = dpVar4.f4666c;
                    C3356jq.m32615a(3, C3478n.f5989a, "Unregister Event Handler ");
                    C3345jm.m32636a().m32634a(nVar2.f5992b);
                    C3484p.m32358a().f6000b.m32299a();
                    C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.dp.13
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                            C2988dp.this.m33337d();
                        }
                    });
                    C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc(dpVar4) { // from class: com.flurry.sdk.dp.2
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                            C3484p.m32358a().f6006h.m33635d();
                        }
                    });
                    C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc(dpVar4) { // from class: com.flurry.sdk.dp.3
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                            C3484p.m32358a().f6003e.f5804c = true;
                        }
                    });
                    C3444l.m32473a().m32471b("native");
                    C3444l.m32473a().f5919b.clear();
                }
            }
        }
    };

    /* renamed from: com.flurry.sdk.dp$5 */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/dp$5.class */
    public static final /* synthetic */ class C29975 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f4679a = new int[C3425kq.EnumC3426a.m32518a().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0032 -> B:19:0x0013). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0036 -> B:17:0x001d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003a -> B:15:0x0027). Please submit an issue!!! */
        static {
            try {
                f4679a[C3425kq.EnumC3426a.f5863a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4679a[C3425kq.EnumC3426a.f5865c - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4679a[C3425kq.EnumC3426a.f5866d - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4679a[C3425kq.EnumC3426a.f5867e - 1] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public C2988dp() {
        C3345jm.m32636a().m32632a("com.flurry.android.sdk.FlurrySessionEvent", this.f4674l);
    }

    /* renamed from: a */
    public final C2862bd m33344a(String str) {
        C2862bd bdVar = this.f4673k.get(str);
        C2862bd bdVar2 = bdVar;
        if (bdVar == null) {
            C2862bd bdVar3 = new C2862bd(str);
            bdVar2 = bdVar3;
            if (this.f4673k.size() < 32767) {
                this.f4673k.put(bdVar3.f4161c, bdVar3);
                bdVar2 = bdVar3;
            }
        }
        return bdVar2;
    }

    /* renamed from: a */
    public final void m33346a() {
        synchronized (this) {
            C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.dp.4
                @Override // com.flurry.sdk.AbstractRunnableC3447lc
                /* renamed from: a */
                public final void mo32300a() {
                    C2988dp.this.m33337d();
                }
            });
        }
    }

    /* renamed from: a */
    public final void m33343a(String str, EnumC2874bi biVar, boolean z, Map<String, String> map) {
        synchronized (this) {
            if (biVar != null) {
                String str2 = f4663j;
                C3356jq.m32615a(3, str2, "logAdEvent(" + str + UserProfile.CARD_CATE_SEPARATOR + biVar + UserProfile.CARD_CATE_SEPARATOR + z + UserProfile.CARD_CATE_SEPARATOR + map + ")");
                C2862bd a = m33344a(str);
                String str3 = biVar.f4289an;
                C3294ij.m32755a();
                a.f4162d.add(new C2857bb(str3, z, C3294ij.m32749g(), map));
            }
        }
    }

    /* renamed from: a */
    public final void m33342a(List<C2862bd> list) {
        for (C2862bd bdVar : list) {
            this.f4673k.put(bdVar.f4161c, bdVar);
        }
    }

    /* renamed from: b */
    public final void m33341b() {
        synchronized (this) {
            C3356jq.m32615a(4, f4663j, "Loading AdLog data.");
            List<C2862bd> a = this.f4671h.m32641a();
            if (a != null) {
                m33342a(a);
                return;
            }
            if (this.f4670g.exists()) {
                C3356jq.m32615a(4, f4663j, "Legacy AdLog data found, converting.");
                List<C2862bd> b = C3496r.m32329b(this.f4670g);
                if (b != null) {
                    m33342a(b);
                }
                this.f4670g.delete();
                m33339c();
            }
        }
    }

    /* renamed from: c */
    public final void m33339c() {
        synchronized (this) {
            C3356jq.m32615a(4, f4663j, "Saving AdLog data.");
            this.f4671h.m32640a(new ArrayList(this.f4673k.values()));
        }
    }

    /* renamed from: d */
    public final void m33337d() {
        C2926cw cwVar;
        synchronized (this) {
            List<C2925cv> a = C3010dx.m33315a(new ArrayList(this.f4673k.values()));
            byte[] bArr = null;
            if (a.isEmpty()) {
                C3356jq.m32615a(3, f4663j, "List of adLogs is empty");
                cwVar = null;
            } else {
                String str = C3331jb.m32681a().f5682d;
                List<C2905cb> e = C3010dx.m33311e();
                cwVar = new C2926cw();
                cwVar.f4538a = str;
                cwVar.f4539b = e;
                cwVar.f4540c = a;
                cwVar.f4543f = false;
                cwVar.f4541d = System.currentTimeMillis();
                cwVar.f4542e = Integer.toString(C3332jc.m32672b());
                String str2 = f4663j;
                C3356jq.m32615a(3, str2, "Got ad log request:" + cwVar.toString());
            }
            if (cwVar != null) {
                C2944dd ddVar = C3484p.m32358a().f6002d;
                C3483o a2 = C3483o.m32361a();
                StringBuilder sb = new StringBuilder();
                sb.append(a2.f5996b != null ? a2.f5996b : C3483o.m32359c() ? "https://adlog.flurry.com" : "http://adlog.flurry.com");
                sb.append("/v2/postAdLog.do");
                String sb2 = sb.toString();
                String str3 = C3331jb.m32681a().f5682d;
                StringBuilder sb3 = new StringBuilder();
                sb3.append(C3332jc.m32672b());
                String sb4 = sb3.toString();
                if (TextUtils.isEmpty(sb2) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(sb4)) {
                    C3356jq.m32615a(6, ddVar.f5820b, "Ad log that has to be sent is EMPTY or NULL");
                } else {
                    try {
                        bArr = ddVar.f4570a.m32598a((C3361jv<C2926cw>) cwVar);
                    } catch (Exception e2) {
                        String str4 = ddVar.f5820b;
                        C3356jq.m32615a(5, str4, "Failed to encode sdk log request: " + e2);
                    }
                    if (bArr != null) {
                        ddVar.m32547b(C2944dd.m33429a(bArr, sb2), str3, sb4);
                    }
                }
            }
            this.f4673k.clear();
            this.f4671h.m32639b();
        }
    }
}
