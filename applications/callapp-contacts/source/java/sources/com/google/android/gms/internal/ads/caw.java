package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzbn;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.internal.ads.aqz;
import com.google.android.gms.internal.ads.awm;
import com.google.android.gms.internal.ads.cbj;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/caw.class */
public final class caw extends AbstractBinderC13051xr {

    /* renamed from: h */
    private static final List<String> f45417h = new ArrayList(Arrays.asList("/aclk", "/pcs/click"));

    /* renamed from: i */
    private static final List<String> f45418i = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));

    /* renamed from: j */
    private static final List<String> f45419j = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion"));

    /* renamed from: k */
    private static final List<String> f45420k = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));

    /* renamed from: a */
    Context f45421a;

    /* renamed from: b */
    die f45422b;

    /* renamed from: c */
    cqd<bgy> f45423c;

    /* renamed from: d */
    final dbs f45424d;

    /* renamed from: e */
    zzatj f45425e;

    /* renamed from: f */
    Point f45426f = new Point();

    /* renamed from: g */
    Point f45427g = new Point();

    /* renamed from: l */
    private afq f45428l;

    /* renamed from: m */
    private zzbar f45429m;

    /* renamed from: n */
    private final ScheduledExecutorService f45430n;

    public caw(afq afqVar, Context context, die dieVar, zzbar zzbarVar, cqd<bgy> cqdVar, dbs dbsVar, ScheduledExecutorService scheduledExecutorService) {
        this.f45428l = afqVar;
        this.f45421a = context;
        this.f45422b = dieVar;
        this.f45429m = zzbarVar;
        this.f45423c = cqdVar;
        this.f45424d = dbsVar;
        this.f45430n = scheduledExecutorService;
    }

    /* renamed from: a */
    public static /* synthetic */ Uri m17515a(Uri uri, String str) {
        Uri uri2 = uri;
        if (!TextUtils.isEmpty(str)) {
            uri2 = m17514a(uri, "nas", str);
        }
        return uri2;
    }

    /* renamed from: a */
    public static Uri m17514a(Uri uri, String str, String str2) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf("&adurl=");
        int i = indexOf;
        if (indexOf == -1) {
            i = uri2.indexOf("?adurl=");
        }
        if (i != -1) {
            int i2 = i + 1;
            return Uri.parse(uri2.substring(0, i2) + str + "=" + str2 + "&" + uri2.substring(i2));
        }
        return uri.buildUpon().appendQueryParameter(str, str2).build();
    }

    /* renamed from: a */
    public static /* synthetic */ ArrayList m17509a(List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            Uri uri = (Uri) it2.next();
            if (!m17517a(uri) || TextUtils.isEmpty(str)) {
                arrayList.add(uri);
            } else {
                arrayList.add(m17514a(uri, "nas", str));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private final boolean m17518a() {
        zzatj zzatjVar = this.f45425e;
        return (zzatjVar == null || zzatjVar.zzdva == null || this.f45425e.zzdva.isEmpty()) ? false : true;
    }

    /* renamed from: a */
    public static boolean m17517a(Uri uri) {
        return m17513a(uri, f45419j, f45420k);
    }

    /* renamed from: a */
    private static boolean m17513a(Uri uri, List<String> list, List<String> list2) {
        String host = uri.getHost();
        String path = uri.getPath();
        if (host == null || path == null) {
            return false;
        }
        for (String str : list) {
            if (path.contains(str)) {
                for (String str2 : list2) {
                    if (host.endsWith(str2)) {
                        return true;
                    }
                }
                continue;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final Uri m17516a(Uri uri, AbstractC12126b abstractC12126b) throws Exception {
        try {
            uri = this.f45422b.m16642a(uri, this.f45421a, (View) BinderC12129d.m18980a(abstractC12126b), null);
        } catch (zzeh e) {
            C13088za.zzd("", e);
        }
        if (uri.getQueryParameter("ms") != null) {
            return uri;
        }
        throw new Exception("Failed to append spam signals to click url.");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13048xo
    /* renamed from: a */
    public final AbstractC12126b mo13998a(AbstractC12126b abstractC12126b, AbstractC12126b abstractC12126b2) {
        return null;
    }

    /* renamed from: a */
    public final dbt<String> m17510a(String str) {
        bgy[] bgyVarArr = new bgy[1];
        dbt m16941a = daj.m16941a(this.f45423c.m17339a(), new daq(this, bgyVarArr, str) { // from class: com.google.android.gms.internal.ads.cbd

            /* renamed from: a */
            private final caw f45441a;

            /* renamed from: b */
            private final bgy[] f45442b;

            /* renamed from: c */
            private final String f45443c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45441a = this;
                this.f45442b = bgyVarArr;
                this.f45443c = str;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                caw cawVar = this.f45441a;
                bgy[] bgyVarArr2 = this.f45442b;
                String str2 = this.f45443c;
                bgy bgyVar = (bgy) obj;
                bgyVarArr2[0] = bgyVar;
                JSONObject zza = zzbn.zza(cawVar.f45421a, cawVar.f45425e.zzdva, cawVar.f45425e.zzdva, cawVar.f45425e.zzaay);
                JSONObject zza2 = zzbn.zza(cawVar.f45421a, cawVar.f45425e.zzaay);
                JSONObject zzt = zzbn.zzt(cawVar.f45425e.zzaay);
                JSONObject zzb = zzbn.zzb(cawVar.f45421a, cawVar.f45425e.zzaay);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("asset_view_signal", zza);
                jSONObject.put("ad_view_signal", zza2);
                jSONObject.put("scroll_view_signal", zzt);
                jSONObject.put("lock_screen_signal", zzb);
                if (str2 == "google.afma.nativeAds.getPublisherCustomRenderedClickSignals") {
                    jSONObject.put("click_signal", zzbn.zza((String) null, cawVar.f45421a, cawVar.f45427g, cawVar.f45426f));
                }
                return bgyVar.m17867a(str2, jSONObject);
            }
        }, this.f45424d);
        m16941a.addListener(new Runnable(this, bgyVarArr) { // from class: com.google.android.gms.internal.ads.cbg

            /* renamed from: a */
            private final caw f45447a;

            /* renamed from: b */
            private final bgy[] f45448b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45447a = this;
                this.f45448b = bgyVarArr;
            }

            @Override // java.lang.Runnable
            public final void run() {
                caw cawVar = this.f45447a;
                bgy[] bgyVarArr2 = this.f45448b;
                if (bgyVarArr2[0] != null) {
                    cawVar.f45423c.m17337a(dbh.m16899a(bgyVarArr2[0]));
                }
            }
        }, this.f45424d);
        return dbc.m16907c(m16941a).m16912a(((Integer) ekb.m14831e().m18571a(C12187aq.f42896eu)).intValue(), TimeUnit.MILLISECONDS, this.f45430n).m16911a(cbb.f45438a, this.f45424d).m16909a(Exception.class, cbe.f45444a, this.f45424d);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13048xo
    /* renamed from: a */
    public final void mo13999a(AbstractC12126b abstractC12126b) {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42895et)).booleanValue()) {
            return;
        }
        MotionEvent motionEvent = (MotionEvent) BinderC12129d.m18980a(abstractC12126b);
        zzatj zzatjVar = this.f45425e;
        this.f45426f = zzbn.zza(motionEvent, zzatjVar == null ? null : zzatjVar.zzaay);
        if (motionEvent.getAction() == 0) {
            this.f45427g = this.f45426f;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setLocation(this.f45426f.x, this.f45426f.y);
        this.f45422b.m16640a(obtain);
        obtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13048xo
    /* renamed from: a */
    public final void mo13997a(AbstractC12126b abstractC12126b, zzazi zzaziVar, AbstractC13047xn abstractC13047xn) {
        Context context = (Context) BinderC12129d.m18980a(abstractC12126b);
        this.f45421a = context;
        String str = zzaziVar.zzbvf;
        String str2 = zzaziVar.zzbrw;
        zzvt zzvtVar = zzaziVar.zzedt;
        zzvq zzvqVar = zzaziVar.zzedu;
        cat mo18700s = this.f45428l.mo18700s();
        aqz.C12188a c12188a = new aqz.C12188a();
        c12188a.f43076a = context;
        cpq cpqVar = new cpq();
        String str3 = str;
        if (str == null) {
            str3 = "adUnitId";
        }
        cpqVar.f46340d = str3;
        zzvq zzvqVar2 = zzvqVar;
        if (zzvqVar == null) {
            zzvqVar2 = new eja().m14864a();
        }
        cpqVar.f46337a = zzvqVar2;
        zzvt zzvtVar2 = zzvtVar;
        if (zzvtVar == null) {
            zzvtVar2 = new zzvt();
        }
        cpqVar.f46338b = zzvtVar2;
        c12188a.f43077b = cpqVar.m17362a();
        cat mo17522a = mo18700s.mo17522a(c12188a.m18450a());
        cbj.C12263a c12263a = new cbj.C12263a();
        c12263a.f45452a = str2;
        dbh.m16901a(mo17522a.mo17520a(new cbj(c12263a)).mo17521a(new awm.C12200a().m18370a()).mo17523a().mo17519a(), new cbf(this, abstractC13047xn), this.f45428l.mo18734b());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13048xo
    /* renamed from: a */
    public final void mo13996a(zzatj zzatjVar) {
        this.f45425e = zzatjVar;
        this.f45423c.m17338a(1);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13048xo
    /* renamed from: a */
    public final void mo13995a(List<Uri> list, AbstractC12126b abstractC12126b, AbstractC12884ro abstractC12884ro) {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42895et)).booleanValue()) {
            try {
                abstractC12884ro.mo14205a("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e) {
                C13088za.zzc("", e);
                return;
            }
        }
        dbt mo16890a = this.f45424d.mo16890a(new Callable(this, list, abstractC12126b) { // from class: com.google.android.gms.internal.ads.cav

            /* renamed from: a */
            private final caw f45414a;

            /* renamed from: b */
            private final List f45415b;

            /* renamed from: c */
            private final AbstractC12126b f45416c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45414a = this;
                this.f45415b = list;
                this.f45416c = abstractC12126b;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                caw cawVar = this.f45414a;
                List<Uri> list2 = this.f45415b;
                String zza = cawVar.f45422b.f47085b != null ? cawVar.f45422b.f47085b.zza(cawVar.f45421a, (View) BinderC12129d.m18980a(this.f45416c), (Activity) null) : "";
                if (!TextUtils.isEmpty(zza)) {
                    ArrayList arrayList = new ArrayList();
                    for (Uri uri : list2) {
                        if (!caw.m17517a(uri)) {
                            String valueOf = String.valueOf(uri);
                            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                            sb.append("Not a Google URL: ");
                            sb.append(valueOf);
                            zzd.zzez(sb.toString());
                            arrayList.add(uri);
                        } else {
                            arrayList.add(caw.m17514a(uri, "ms", zza));
                        }
                    }
                    if (arrayList.isEmpty()) {
                        throw new Exception("Empty impression URLs result.");
                    }
                    return arrayList;
                }
                throw new Exception("Failed to get view signals.");
            }
        });
        if (m17518a()) {
            mo16890a = daj.m16941a(mo16890a, new daq(this) { // from class: com.google.android.gms.internal.ads.cay

                /* renamed from: a */
                private final caw f45434a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f45434a = this;
                }

                @Override // com.google.android.gms.internal.ads.daq
                public final dbt zzf(Object obj) {
                    final caw cawVar = this.f45434a;
                    final List arrayList = (ArrayList) obj;
                    return daj.m16942a(cawVar.m17510a("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new cxu(cawVar, arrayList) { // from class: com.google.android.gms.internal.ads.caz

                        /* renamed from: a */
                        private final caw f45435a;

                        /* renamed from: b */
                        private final List f45436b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f45435a = cawVar;
                            this.f45436b = arrayList;
                        }

                        @Override // com.google.android.gms.internal.ads.cxu
                        /* renamed from: a */
                        public final Object mo14064a(Object obj2) {
                            return caw.m17509a(this.f45436b, (String) obj2);
                        }
                    }, cawVar.f45424d);
                }
            }, this.f45424d);
        } else {
            zzd.zzey("Asset view map is empty.");
        }
        dbh.m16901a(mo16890a, new cbi(this, abstractC12884ro), this.f45428l.mo18734b());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13048xo
    /* renamed from: b */
    public final AbstractC12126b mo13994b(AbstractC12126b abstractC12126b) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13048xo
    /* renamed from: b */
    public final void mo13993b(List<Uri> list, AbstractC12126b abstractC12126b, AbstractC12884ro abstractC12884ro) {
        try {
            if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42895et)).booleanValue()) {
                abstractC12884ro.mo14205a("The updating URL feature is not enabled.");
            } else if (list.size() != 1) {
                abstractC12884ro.mo14205a("There should be only 1 click URL.");
            } else {
                Uri uri = list.get(0);
                if (m17513a(uri, f45417h, f45418i)) {
                    dbt mo16890a = this.f45424d.mo16890a(new Callable(this, uri, abstractC12126b) { // from class: com.google.android.gms.internal.ads.cax

                        /* renamed from: a */
                        private final caw f45431a;

                        /* renamed from: b */
                        private final Uri f45432b;

                        /* renamed from: c */
                        private final AbstractC12126b f45433c;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f45431a = this;
                            this.f45432b = uri;
                            this.f45433c = abstractC12126b;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.f45431a.m17516a(this.f45432b, this.f45433c);
                        }
                    });
                    if (m17518a()) {
                        mo16890a = daj.m16941a(mo16890a, new daq(this) { // from class: com.google.android.gms.internal.ads.cba

                            /* renamed from: a */
                            private final caw f45437a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f45437a = this;
                            }

                            @Override // com.google.android.gms.internal.ads.daq
                            public final dbt zzf(Object obj) {
                                final caw cawVar = this.f45437a;
                                final Uri uri2 = (Uri) obj;
                                return daj.m16942a(cawVar.m17510a("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new cxu(cawVar, uri2) { // from class: com.google.android.gms.internal.ads.cbc

                                    /* renamed from: a */
                                    private final caw f45439a;

                                    /* renamed from: b */
                                    private final Uri f45440b;

                                    /* JADX INFO: Access modifiers changed from: package-private */
                                    {
                                        this.f45439a = cawVar;
                                        this.f45440b = uri2;
                                    }

                                    @Override // com.google.android.gms.internal.ads.cxu
                                    /* renamed from: a */
                                    public final Object mo14064a(Object obj2) {
                                        return caw.m17515a(this.f45440b, (String) obj2);
                                    }
                                }, cawVar.f45424d);
                            }
                        }, this.f45424d);
                    } else {
                        zzd.zzey("Asset view map is empty.");
                    }
                    dbh.m16901a(mo16890a, new cbh(this, abstractC12884ro), this.f45428l.mo18734b());
                    return;
                }
                String valueOf = String.valueOf(uri);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Not a Google URL: ");
                sb.append(valueOf);
                zzd.zzez(sb.toString());
                abstractC12884ro.mo14204a(list);
            }
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }
}
