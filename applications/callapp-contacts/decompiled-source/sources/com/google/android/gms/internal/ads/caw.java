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
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
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
public final class caw extends xr {
    private static final List<String> h = new ArrayList(Arrays.asList("/aclk", "/pcs/click"));
    private static final List<String> i = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));
    private static final List<String> j = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion"));
    private static final List<String> k = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));

    /* renamed from: a  reason: collision with root package name */
    Context f25509a;

    /* renamed from: b  reason: collision with root package name */
    die f25510b;

    /* renamed from: c  reason: collision with root package name */
    cqd<bgy> f25511c;

    /* renamed from: d  reason: collision with root package name */
    final dbs f25512d;
    zzatj e;
    Point f = new Point();
    Point g = new Point();
    private afq l;
    private zzbar m;
    private final ScheduledExecutorService n;

    public caw(afq afqVar, Context context, die dieVar, zzbar zzbarVar, cqd<bgy> cqdVar, dbs dbsVar, ScheduledExecutorService scheduledExecutorService) {
        this.l = afqVar;
        this.f25509a = context;
        this.f25510b = dieVar;
        this.m = zzbarVar;
        this.f25511c = cqdVar;
        this.f25512d = dbsVar;
        this.n = scheduledExecutorService;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Uri a(Uri uri, String str) {
        Uri uri2 = uri;
        if (!TextUtils.isEmpty(str)) {
            uri2 = a(uri, "nas", str);
        }
        return uri2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Uri a(Uri uri, String str, String str2) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf("&adurl=");
        int i2 = indexOf;
        if (indexOf == -1) {
            i2 = uri2.indexOf("?adurl=");
        }
        if (i2 == -1) {
            return uri.buildUpon().appendQueryParameter(str, str2).build();
        }
        int i3 = i2 + 1;
        return Uri.parse(uri2.substring(0, i3) + str + "=" + str2 + "&" + uri2.substring(i3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ ArrayList a(List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            Uri uri = (Uri) it2.next();
            if (!a(uri) || TextUtils.isEmpty(str)) {
                arrayList.add(uri);
            } else {
                arrayList.add(a(uri, "nas", str));
            }
        }
        return arrayList;
    }

    private final boolean a() {
        zzatj zzatjVar = this.e;
        return (zzatjVar == null || zzatjVar.zzdva == null || this.e.zzdva.isEmpty()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Uri uri) {
        return a(uri, j, k);
    }

    private static boolean a(Uri uri, List<String> list, List<String> list2) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Uri a(Uri uri, b bVar) throws Exception {
        try {
            uri = this.f25510b.a(uri, this.f25509a, (View) d.a(bVar), null);
        } catch (zzeh e) {
            za.zzd("", e);
        }
        if (uri.getQueryParameter("ms") != null) {
            return uri;
        }
        throw new Exception("Failed to append spam signals to click url.");
    }

    @Override // com.google.android.gms.internal.ads.xo
    public final b a(b bVar, b bVar2) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final dbt<String> a(final String str) {
        final bgy[] bgyVarArr = new bgy[1];
        dbt a2 = daj.a(this.f25511c.a(), new daq(this, bgyVarArr, str) { // from class: com.google.android.gms.internal.ads.cbd

            /* renamed from: a  reason: collision with root package name */
            private final caw f25523a;

            /* renamed from: b  reason: collision with root package name */
            private final bgy[] f25524b;

            /* renamed from: c  reason: collision with root package name */
            private final String f25525c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25523a = this;
                this.f25524b = bgyVarArr;
                this.f25525c = str;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                caw cawVar = this.f25523a;
                bgy[] bgyVarArr2 = this.f25524b;
                String str2 = this.f25525c;
                bgy bgyVar = (bgy) obj;
                bgyVarArr2[0] = bgyVar;
                JSONObject zza = zzbn.zza(cawVar.f25509a, cawVar.e.zzdva, cawVar.e.zzdva, cawVar.e.zzaay);
                JSONObject zza2 = zzbn.zza(cawVar.f25509a, cawVar.e.zzaay);
                JSONObject zzt = zzbn.zzt(cawVar.e.zzaay);
                JSONObject zzb = zzbn.zzb(cawVar.f25509a, cawVar.e.zzaay);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("asset_view_signal", zza);
                jSONObject.put("ad_view_signal", zza2);
                jSONObject.put("scroll_view_signal", zzt);
                jSONObject.put("lock_screen_signal", zzb);
                if (str2 == "google.afma.nativeAds.getPublisherCustomRenderedClickSignals") {
                    jSONObject.put("click_signal", zzbn.zza((String) null, cawVar.f25509a, cawVar.g, cawVar.f));
                }
                return bgyVar.a(str2, jSONObject);
            }
        }, this.f25512d);
        a2.addListener(new Runnable(this, bgyVarArr) { // from class: com.google.android.gms.internal.ads.cbg

            /* renamed from: a  reason: collision with root package name */
            private final caw f25529a;

            /* renamed from: b  reason: collision with root package name */
            private final bgy[] f25530b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25529a = this;
                this.f25530b = bgyVarArr;
            }

            @Override // java.lang.Runnable
            public final void run() {
                caw cawVar = this.f25529a;
                bgy[] bgyVarArr2 = this.f25530b;
                if (bgyVarArr2[0] != null) {
                    cawVar.f25511c.a(dbh.a(bgyVarArr2[0]));
                }
            }
        }, this.f25512d);
        return dbc.c(a2).a(((Integer) ekb.e().a(aq.eu)).intValue(), TimeUnit.MILLISECONDS, this.n).a(cbb.f25520a, this.f25512d).a(Exception.class, cbe.f25526a, this.f25512d);
    }

    @Override // com.google.android.gms.internal.ads.xo
    public final void a(b bVar) {
        if (((Boolean) ekb.e().a(aq.et)).booleanValue()) {
            MotionEvent motionEvent = (MotionEvent) d.a(bVar);
            zzatj zzatjVar = this.e;
            this.f = zzbn.zza(motionEvent, zzatjVar == null ? null : zzatjVar.zzaay);
            if (motionEvent.getAction() == 0) {
                this.g = this.f;
            }
            MotionEvent obtain = MotionEvent.obtain(motionEvent);
            obtain.setLocation(this.f.x, this.f.y);
            this.f25510b.a(obtain);
            obtain.recycle();
        }
    }

    @Override // com.google.android.gms.internal.ads.xo
    public final void a(b bVar, zzazi zzaziVar, xn xnVar) {
        Context context = (Context) d.a(bVar);
        this.f25509a = context;
        String str = zzaziVar.zzbvf;
        String str2 = zzaziVar.zzbrw;
        zzvt zzvtVar = zzaziVar.zzedt;
        zzvq zzvqVar = zzaziVar.zzedu;
        cat s = this.l.s();
        aqz.a aVar = new aqz.a();
        aVar.f23803a = context;
        cpq cpqVar = new cpq();
        String str3 = str;
        if (str == null) {
            str3 = "adUnitId";
        }
        cpqVar.f26231d = str3;
        zzvq zzvqVar2 = zzvqVar;
        if (zzvqVar == null) {
            zzvqVar2 = new eja().a();
        }
        cpqVar.f26228a = zzvqVar2;
        zzvt zzvtVar2 = zzvtVar;
        if (zzvtVar == null) {
            zzvtVar2 = new zzvt();
        }
        cpqVar.f26229b = zzvtVar2;
        aVar.f23804b = cpqVar.a();
        cat a2 = s.a(aVar.a());
        cbj.a aVar2 = new cbj.a();
        aVar2.f25534a = str2;
        dbh.a(a2.a(new cbj(aVar2)).a(new awm.a().a()).a().a(), new cbf(this, xnVar), this.l.b());
    }

    @Override // com.google.android.gms.internal.ads.xo
    public final void a(zzatj zzatjVar) {
        this.e = zzatjVar;
        this.f25511c.a(1);
    }

    @Override // com.google.android.gms.internal.ads.xo
    public final void a(final List<Uri> list, final b bVar, ro roVar) {
        if (!((Boolean) ekb.e().a(aq.et)).booleanValue()) {
            try {
                roVar.a("The updating URL feature is not enabled.");
            } catch (RemoteException e) {
                za.zzc("", e);
            }
        } else {
            dbt a2 = this.f25512d.a(new Callable(this, list, bVar) { // from class: com.google.android.gms.internal.ads.cav

                /* renamed from: a  reason: collision with root package name */
                private final caw f25506a;

                /* renamed from: b  reason: collision with root package name */
                private final List f25507b;

                /* renamed from: c  reason: collision with root package name */
                private final b f25508c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f25506a = this;
                    this.f25507b = list;
                    this.f25508c = bVar;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    caw cawVar = this.f25506a;
                    List<Uri> list2 = this.f25507b;
                    String zza = cawVar.f25510b.f26844b != null ? cawVar.f25510b.f26844b.zza(cawVar.f25509a, (View) d.a(this.f25508c), (Activity) null) : "";
                    if (!TextUtils.isEmpty(zza)) {
                        ArrayList arrayList = new ArrayList();
                        for (Uri uri : list2) {
                            if (!caw.a(uri)) {
                                String valueOf = String.valueOf(uri);
                                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                                sb.append("Not a Google URL: ");
                                sb.append(valueOf);
                                zzd.zzez(sb.toString());
                                arrayList.add(uri);
                            } else {
                                arrayList.add(caw.a(uri, "ms", zza));
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            return arrayList;
                        }
                        throw new Exception("Empty impression URLs result.");
                    }
                    throw new Exception("Failed to get view signals.");
                }
            });
            if (a()) {
                a2 = daj.a(a2, new daq(this) { // from class: com.google.android.gms.internal.ads.cay

                    /* renamed from: a  reason: collision with root package name */
                    private final caw f25516a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25516a = this;
                    }

                    @Override // com.google.android.gms.internal.ads.daq
                    public final dbt zzf(Object obj) {
                        final caw cawVar = this.f25516a;
                        final ArrayList arrayList = (ArrayList) obj;
                        return daj.a(cawVar.a("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new cxu(cawVar, arrayList) { // from class: com.google.android.gms.internal.ads.caz

                            /* renamed from: a  reason: collision with root package name */
                            private final caw f25517a;

                            /* renamed from: b  reason: collision with root package name */
                            private final List f25518b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f25517a = cawVar;
                                this.f25518b = arrayList;
                            }

                            @Override // com.google.android.gms.internal.ads.cxu
                            public final Object a(Object obj2) {
                                return caw.a(this.f25518b, (String) obj2);
                            }
                        }, cawVar.f25512d);
                    }
                }, this.f25512d);
            } else {
                zzd.zzey("Asset view map is empty.");
            }
            dbh.a(a2, new cbi(this, roVar), this.l.b());
        }
    }

    @Override // com.google.android.gms.internal.ads.xo
    public final b b(b bVar) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.xo
    public final void b(List<Uri> list, final b bVar, ro roVar) {
        try {
            if (!((Boolean) ekb.e().a(aq.et)).booleanValue()) {
                roVar.a("The updating URL feature is not enabled.");
            } else if (list.size() != 1) {
                roVar.a("There should be only 1 click URL.");
            } else {
                final Uri uri = list.get(0);
                if (!a(uri, h, i)) {
                    String valueOf = String.valueOf(uri);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                    sb.append("Not a Google URL: ");
                    sb.append(valueOf);
                    zzd.zzez(sb.toString());
                    roVar.a(list);
                    return;
                }
                dbt a2 = this.f25512d.a(new Callable(this, uri, bVar) { // from class: com.google.android.gms.internal.ads.cax

                    /* renamed from: a  reason: collision with root package name */
                    private final caw f25513a;

                    /* renamed from: b  reason: collision with root package name */
                    private final Uri f25514b;

                    /* renamed from: c  reason: collision with root package name */
                    private final b f25515c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25513a = this;
                        this.f25514b = uri;
                        this.f25515c = bVar;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f25513a.a(this.f25514b, this.f25515c);
                    }
                });
                if (a()) {
                    a2 = daj.a(a2, new daq(this) { // from class: com.google.android.gms.internal.ads.cba

                        /* renamed from: a  reason: collision with root package name */
                        private final caw f25519a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f25519a = this;
                        }

                        @Override // com.google.android.gms.internal.ads.daq
                        public final dbt zzf(Object obj) {
                            final caw cawVar = this.f25519a;
                            final Uri uri2 = (Uri) obj;
                            return daj.a(cawVar.a("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new cxu(cawVar, uri2) { // from class: com.google.android.gms.internal.ads.cbc

                                /* renamed from: a  reason: collision with root package name */
                                private final caw f25521a;

                                /* renamed from: b  reason: collision with root package name */
                                private final Uri f25522b;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f25521a = cawVar;
                                    this.f25522b = uri2;
                                }

                                @Override // com.google.android.gms.internal.ads.cxu
                                public final Object a(Object obj2) {
                                    return caw.a(this.f25522b, (String) obj2);
                                }
                            }, cawVar.f25512d);
                        }
                    }, this.f25512d);
                } else {
                    zzd.zzey("Asset view map is empty.");
                }
                dbh.a(a2, new cbh(this, roVar), this.l.b());
            }
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }
}
