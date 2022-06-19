package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.internal.ads.apb;
import com.google.android.gms.internal.ads.atf;
import com.google.android.gms.internal.ads.buk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/btx.class */
public final class btx extends AbstractBinderC3530tv {

    /* renamed from: a */
    private static final List<String> f12252a = new ArrayList(Arrays.asList("/aclk", "/pcs/click"));

    /* renamed from: b */
    private static final List<String> f12253b = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));

    /* renamed from: c */
    private static final List<String> f12254c = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion"));

    /* renamed from: d */
    private static final List<String> f12255d = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));

    /* renamed from: e */
    private afh f12256e;

    /* renamed from: f */
    private Context f12257f;

    /* renamed from: g */
    private ctl f12258g;

    /* renamed from: h */
    private C3647yd f12259h;

    /* renamed from: i */
    private chr<bcy> f12260i;

    /* renamed from: j */
    private final crs f12261j;

    /* renamed from: k */
    private final ScheduledExecutorService f12262k;

    /* renamed from: l */
    private C3394ou f12263l;

    /* renamed from: m */
    private Point f12264m = new Point();

    /* renamed from: n */
    private Point f12265n = new Point();

    public btx(afh afhVar, Context context, ctl ctlVar, C3647yd c3647yd, chr<bcy> chrVar, crs crsVar, ScheduledExecutorService scheduledExecutorService) {
        this.f12256e = afhVar;
        this.f12257f = context;
        this.f12258g = ctlVar;
        this.f12259h = c3647yd;
        this.f12260i = chrVar;
        this.f12261j = crsVar;
        this.f12262k = scheduledExecutorService;
    }

    /* renamed from: a */
    public static /* synthetic */ Uri m11624a(Uri uri, String str) {
        Uri uri2 = uri;
        if (!TextUtils.isEmpty(str)) {
            uri2 = m11623a(uri, "nas", str);
        }
        return uri2;
    }

    /* renamed from: a */
    private static Uri m11623a(Uri uri, String str, String str2) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf("&adurl=");
        int i = indexOf;
        if (indexOf == -1) {
            i = uri2.indexOf("?adurl=");
        }
        return i != -1 ? Uri.parse(uri2.substring(0, i + 1) + str + "=" + str2 + "&" + uri2.substring(i + 1)) : uri.buildUpon().appendQueryParameter(str, str2).build();
    }

    /* renamed from: a */
    private final crt<String> m11619a(String str) {
        bcy[] bcyVarArr = new bcy[1];
        crt m10782a = crg.m10782a(this.f12260i.m11296a(), new cqt(this, bcyVarArr, str) { // from class: com.google.android.gms.internal.ads.bue

            /* renamed from: a */
            private final btx f12276a;

            /* renamed from: b */
            private final bcy[] f12277b;

            /* renamed from: c */
            private final String f12278c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12276a = this;
                this.f12277b = bcyVarArr;
                this.f12278c = str;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f12276a.m11613a(this.f12277b, this.f12278c, (bcy) obj);
            }
        }, this.f12261j);
        m10782a.mo6734a(new Runnable(this, bcyVarArr) { // from class: com.google.android.gms.internal.ads.buh

            /* renamed from: a */
            private final btx f12282a;

            /* renamed from: b */
            private final bcy[] f12283b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12282a = this;
                this.f12283b = bcyVarArr;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f12282a.m11614a(this.f12283b);
            }
        }, this.f12261j);
        return crb.m10789c(m10782a).m10793a(((Integer) dyx.m8158e().m7876a(edi.f16507dG)).intValue(), TimeUnit.MILLISECONDS, this.f12262k).m10792a(buc.f12273a, this.f12261j).m10790a(Exception.class, buf.f12279a, this.f12261j);
    }

    /* renamed from: a */
    public static /* synthetic */ ArrayList m11616a(List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (!m11612b(uri) || TextUtils.isEmpty(str)) {
                arrayList.add(uri);
            } else {
                arrayList.add(m11623a(uri, "nas", str));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private final boolean m11627a() {
        return (this.f12263l == null || this.f12263l.f17059b == null || this.f12263l.f17059b.isEmpty()) ? false : true;
    }

    /* renamed from: a */
    private static boolean m11622a(Uri uri, List<String> list, List<String> list2) {
        boolean z;
        String host = uri.getHost();
        String path = uri.getPath();
        if (host == null || path == null) {
            z = false;
        } else {
            Iterator<String> it = list.iterator();
            loop0: while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (path.contains(it.next())) {
                    for (String str : list2) {
                        if (host.endsWith(str)) {
                            z = true;
                            break loop0;
                        }
                    }
                    continue;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public final Uri m11625a(Uri uri, AbstractC2731a abstractC2731a) {
        try {
            uri = this.f12258g.m10667a(uri, this.f12257f, (View) BinderC2734b.m13795a(abstractC2731a), null);
        } catch (zzdw e) {
            C3645yb.m6746d("", e);
        }
        if (uri.getQueryParameter("ms") == null) {
            throw new Exception("Failed to append spam signals to click url.");
        }
        return uri;
    }

    /* renamed from: b */
    private static boolean m11612b(Uri uri) {
        return m11622a(uri, f12254c, f12255d);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3528tt
    /* renamed from: a */
    public final AbstractC2731a mo7127a(AbstractC2731a abstractC2731a, AbstractC2731a abstractC2731a2) {
        return null;
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11626a(Uri uri) {
        return crg.m10783a(m11619a("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new coe(this, uri) { // from class: com.google.android.gms.internal.ads.bud

            /* renamed from: a */
            private final btx f12274a;

            /* renamed from: b */
            private final Uri f12275b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12274a = this;
                this.f12275b = uri;
            }

            @Override // com.google.android.gms.internal.ads.coe
            /* renamed from: a */
            public final Object mo7184a(Object obj) {
                return btx.m11624a(this.f12275b, (String) obj);
            }
        }, this.f12261j);
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11618a(ArrayList arrayList) {
        return crg.m10783a(m11619a("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new coe(this, arrayList) { // from class: com.google.android.gms.internal.ads.bua

            /* renamed from: a */
            private final btx f12270a;

            /* renamed from: b */
            private final List f12271b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12270a = this;
                this.f12271b = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.coe
            /* renamed from: a */
            public final Object mo7184a(Object obj) {
                return btx.m11616a(this.f12271b, (String) obj);
            }
        }, this.f12261j);
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11613a(bcy[] bcyVarArr, String str, bcy bcyVar) {
        bcyVarArr[0] = bcyVar;
        JSONObject m6832a = C3622xf.m6832a(this.f12257f, this.f12263l.f17059b, this.f12263l.f17059b, this.f12263l.f17058a);
        JSONObject m6833a = C3622xf.m6833a(this.f12257f, this.f12263l.f17058a);
        JSONObject m6830a = C3622xf.m6830a(this.f12263l.f17058a);
        JSONObject m6828b = C3622xf.m6828b(this.f12257f, this.f12263l.f17058a);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("asset_view_signal", m6832a);
        jSONObject.put("ad_view_signal", m6833a);
        jSONObject.put("scroll_view_signal", m6830a);
        jSONObject.put("lock_screen_signal", m6828b);
        if (str == "google.afma.nativeAds.getPublisherCustomRenderedClickSignals") {
            jSONObject.put("click_signal", C3622xf.m6829a((String) null, this.f12257f, this.f12265n, this.f12264m));
        }
        return bcyVar.m12086a(str, jSONObject);
    }

    /* renamed from: a */
    public final /* synthetic */ ArrayList m11617a(List list, AbstractC2731a abstractC2731a) {
        String mo11052a = this.f12258g.m10670a() != null ? this.f12258g.m10670a().mo11052a(this.f12257f, (View) BinderC2734b.m13795a(abstractC2731a), (Activity) null) : "";
        if (TextUtils.isEmpty(mo11052a)) {
            throw new Exception("Failed to get view signals.");
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (!m11612b(uri)) {
                String valueOf = String.valueOf(uri);
                C3556uu.m6745e(new StringBuilder(String.valueOf(valueOf).length() + 18).append("Not a Google URL: ").append(valueOf).toString());
                arrayList.add(uri);
            } else {
                arrayList.add(m11623a(uri, "ms", mo11052a));
            }
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        throw new Exception("Empty impression URLs result.");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3528tt
    /* renamed from: a */
    public final void mo7128a(AbstractC2731a abstractC2731a) {
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16506dF)).booleanValue()) {
            return;
        }
        MotionEvent motionEvent = (MotionEvent) BinderC2734b.m13795a(abstractC2731a);
        this.f12264m = C3622xf.m6831a(motionEvent, this.f12263l == null ? null : this.f12263l.f17058a);
        if (motionEvent.getAction() == 0) {
            this.f12265n = this.f12264m;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setLocation(this.f12264m.x, this.f12264m.y);
        this.f12258g.m10665a(obtain);
        obtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3528tt
    /* renamed from: a */
    public final void mo7126a(AbstractC2731a abstractC2731a, C3531tw c3531tw, AbstractC3527ts abstractC3527ts) {
        this.f12257f = (Context) BinderC2734b.m13795a(abstractC2731a);
        Context context = this.f12257f;
        String str = c3531tw.f17388a;
        String str2 = c3531tw.f17389b;
        dyd dydVar = c3531tw.f17390c;
        dya dyaVar = c3531tw.f17391d;
        btu mo13345o = this.f12256e.mo13345o();
        apb.C2790a m12840a = new apb.C2790a().m12840a(context);
        chj chjVar = new chj();
        String str3 = str;
        if (str == null) {
            str3 = "adUnitId";
        }
        crg.m10781a(mo13345o.mo11631a(m12840a.m12836a(chjVar.m11336a(str3).m11342a(dyaVar == null ? new dxz().m8197a() : dyaVar).m11341a(dydVar == null ? new dyd() : dydVar).m11325e()).m12841a()).mo11629a(new buk(new buk.C2845a().m11606a(str2))).mo11630a(new atf.C2797a().m12758a()).mo11632a().mo11628a(), new bug(this, abstractC3527ts), this.f12256e.mo13374a());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3528tt
    /* renamed from: a */
    public final void mo7125a(C3394ou c3394ou) {
        this.f12263l = c3394ou;
        this.f12260i.m11295a(1);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3528tt
    /* renamed from: a */
    public final void mo7124a(List<Uri> list, AbstractC2731a abstractC2731a, AbstractC3389op abstractC3389op) {
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16506dF)).booleanValue()) {
            try {
                abstractC3389op.mo7357a("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e) {
                C3645yb.m6748c("", e);
                return;
            }
        }
        crt mo10767a = this.f12261j.mo10767a(new Callable(this, list, abstractC2731a) { // from class: com.google.android.gms.internal.ads.btw

            /* renamed from: a */
            private final btx f12249a;

            /* renamed from: b */
            private final List f12250b;

            /* renamed from: c */
            private final AbstractC2731a f12251c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12249a = this;
                this.f12250b = list;
                this.f12251c = abstractC2731a;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f12249a.m11617a(this.f12250b, this.f12251c);
            }
        });
        if (m11627a()) {
            mo10767a = crg.m10782a(mo10767a, new cqt(this) { // from class: com.google.android.gms.internal.ads.btz

                /* renamed from: a */
                private final btx f12269a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f12269a = this;
                }

                @Override // com.google.android.gms.internal.ads.cqt
                /* renamed from: a */
                public final crt mo7012a(Object obj) {
                    return this.f12269a.m11618a((ArrayList) obj);
                }
            }, this.f12261j);
        } else {
            C3556uu.m6747d("Asset view map is empty.");
        }
        crg.m10781a(mo10767a, new buj(this, abstractC3389op), this.f12256e.mo13374a());
    }

    /* renamed from: a */
    public final /* synthetic */ void m11614a(bcy[] bcyVarArr) {
        if (bcyVarArr[0] != null) {
            this.f12260i.m11294a(crg.m10778a(bcyVarArr[0]));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3528tt
    /* renamed from: b */
    public final AbstractC2731a mo7123b(AbstractC2731a abstractC2731a) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3528tt
    /* renamed from: b */
    public final void mo7122b(List<Uri> list, AbstractC2731a abstractC2731a, AbstractC3389op abstractC3389op) {
        try {
            if (!((Boolean) dyx.m8158e().m7876a(edi.f16506dF)).booleanValue()) {
                abstractC3389op.mo7357a("The updating URL feature is not enabled.");
            } else if (list.size() != 1) {
                abstractC3389op.mo7357a("There should be only 1 click URL.");
            } else {
                Uri uri = list.get(0);
                if (!m11622a(uri, f12252a, f12253b)) {
                    String valueOf = String.valueOf(uri);
                    C3556uu.m6745e(new StringBuilder(String.valueOf(valueOf).length() + 18).append("Not a Google URL: ").append(valueOf).toString());
                    abstractC3389op.mo7356a(list);
                } else {
                    crt mo10767a = this.f12261j.mo10767a(new Callable(this, uri, abstractC2731a) { // from class: com.google.android.gms.internal.ads.bty

                        /* renamed from: a */
                        private final btx f12266a;

                        /* renamed from: b */
                        private final Uri f12267b;

                        /* renamed from: c */
                        private final AbstractC2731a f12268c;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f12266a = this;
                            this.f12267b = uri;
                            this.f12268c = abstractC2731a;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.f12266a.m11625a(this.f12267b, this.f12268c);
                        }
                    });
                    if (m11627a()) {
                        mo10767a = crg.m10782a(mo10767a, new cqt(this) { // from class: com.google.android.gms.internal.ads.bub

                            /* renamed from: a */
                            private final btx f12272a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f12272a = this;
                            }

                            @Override // com.google.android.gms.internal.ads.cqt
                            /* renamed from: a */
                            public final crt mo7012a(Object obj) {
                                return this.f12272a.m11626a((Uri) obj);
                            }
                        }, this.f12261j);
                    } else {
                        C3556uu.m6747d("Asset view map is empty.");
                    }
                    crg.m10781a(mo10767a, new bui(this, abstractC3389op), this.f12256e.mo13374a());
                }
            }
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
        }
    }
}
