package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.util.zzca;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzaas;
import com.google.android.gms.internal.ads.zzaat;
import com.google.android.gms.internal.ads.zzbdg;
import com.google.android.gms.internal.ads.zzbdh;
import com.google.android.gms.internal.ads.zzbdl;
import com.google.android.gms.internal.ads.zzbet;
import com.google.android.gms.internal.ads.zzbjl;
import com.google.android.gms.internal.ads.zzcaf;
import com.google.android.gms.internal.ads.zzcam;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzcfm;
import com.google.android.gms.internal.ads.zzcfr;
import com.google.android.gms.internal.ads.zzcgt;
import com.google.android.gms.internal.ads.zzcgz;
import com.google.android.gms.internal.ads.zzcoj;
import com.google.android.gms.internal.ads.zzdam;
import com.google.android.gms.internal.ads.zzdgn;
import com.google.android.gms.internal.ads.zzdrh;
import com.google.android.gms.internal.ads.zzdvh;
import com.google.android.gms.internal.ads.zzdvi;
import com.google.android.gms.internal.ads.zzfap;
import com.google.android.gms.internal.ads.zzfbj;
import com.google.android.gms.internal.ads.zzffb;
import com.google.android.gms.internal.ads.zzffc;
import com.google.android.gms.internal.ads.zzffu;
import com.google.android.gms.internal.ads.zzfln;
import com.google.android.gms.internal.ads.zzfrk;
import com.google.android.gms.internal.ads.zzfru;
import com.google.android.gms.internal.ads.zzfsd;
import com.google.android.gms.internal.ads.zzfsm;
import com.google.android.gms.internal.ads.zzfsn;
import com.huawei.hms.framework.common.ContainerUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzv.class */
public final class zzv extends zzcfm {
    public static final List<String> zza = new ArrayList(Arrays.asList("/aclk", "/pcs/click"));
    public static final List<String> zzb = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));
    public static final List<String> zzc = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion"));
    public static final List<String> zzd = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));
    public static final /* synthetic */ int zze = 0;
    private final zzcgz zzA;
    private String zzB;
    private final zzcoj zzf;
    private Context zzg;
    private final zzaas zzh;
    private final zzfbj<zzdrh> zzi;
    private final zzfsn zzj;
    private final ScheduledExecutorService zzk;
    private zzcam zzl;
    private final zzb zzp;
    private final zzdvi zzq;
    private final zzffc zzr;
    private final zzffu zzs;
    private Point zzm = new Point();
    private Point zzn = new Point();
    private final Set<WebView> zzo = Collections.newSetFromMap(new WeakHashMap());
    private final AtomicInteger zzz = new AtomicInteger(0);
    private final boolean zzt = ((Boolean) zzbet.zzc().zzc(zzbjl.zzfr)).booleanValue();
    private final boolean zzu = ((Boolean) zzbet.zzc().zzc(zzbjl.zzfq)).booleanValue();
    private final boolean zzv = ((Boolean) zzbet.zzc().zzc(zzbjl.zzfs)).booleanValue();
    private final boolean zzw = ((Boolean) zzbet.zzc().zzc(zzbjl.zzfu)).booleanValue();
    private final String zzx = (String) zzbet.zzc().zzc(zzbjl.zzft);
    private final String zzy = (String) zzbet.zzc().zzc(zzbjl.zzfv);
    private final String zzC = (String) zzbet.zzc().zzc(zzbjl.zzfw);

    public zzv(zzcoj zzcojVar, Context context, zzaas zzaasVar, zzfbj<zzdrh> zzfbjVar, zzfsn zzfsnVar, ScheduledExecutorService scheduledExecutorService, zzdvi zzdviVar, zzffc zzffcVar, zzffu zzffuVar, zzcgz zzcgzVar) {
        this.zzf = zzcojVar;
        this.zzg = context;
        this.zzh = zzaasVar;
        this.zzi = zzfbjVar;
        this.zzj = zzfsnVar;
        this.zzk = scheduledExecutorService;
        this.zzp = zzcojVar.zzw();
        this.zzq = zzdviVar;
        this.zzr = zzffcVar;
        this.zzs = zzffuVar;
        this.zzA = zzcgzVar;
    }

    public static final /* synthetic */ Uri zzF(Uri uri, String str) {
        Uri uri2 = uri;
        if (!TextUtils.isEmpty(str)) {
            uri2 = zzL(uri, "nas", str);
        }
        return uri2;
    }

    public static final /* synthetic */ ArrayList zzG(List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (!zzw(uri) || TextUtils.isEmpty(str)) {
                arrayList.add(uri);
            } else {
                arrayList.add(zzL(uri, "nas", str));
            }
        }
        return arrayList;
    }

    private static boolean zzH(Uri uri, List<String> list, List<String> list2) {
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

    private final zzg zzI(Context context, String str, String str2, zzbdl zzbdlVar, zzbdg zzbdgVar) {
        zzf zzu = this.zzf.zzu();
        zzdam zzdamVar = new zzdam();
        zzdamVar.zze(context);
        zzfap zzfapVar = new zzfap();
        String str3 = str;
        if (str == null) {
            str3 = "adUnitId";
        }
        zzfapVar.zzw(str3);
        zzbdg zzbdgVar2 = zzbdgVar;
        if (zzbdgVar == null) {
            zzbdgVar2 = new zzbdh().zza();
        }
        zzfapVar.zzr(zzbdgVar2);
        zzbdl zzbdlVar2 = zzbdlVar;
        if (zzbdlVar == null) {
            zzbdlVar2 = new zzbdl();
        }
        zzfapVar.zzt(zzbdlVar2);
        zzdamVar.zzf(zzfapVar.zzL());
        zzu.zzc(zzdamVar.zzh());
        zzx zzxVar = new zzx();
        zzxVar.zzb(str2);
        zzu.zzb(new zzz(zzxVar, null));
        new zzdgn();
        return zzu.zza();
    }

    private final zzfsm<String> zzJ(String str) {
        zzdrh[] zzdrhVarArr = new zzdrh[1];
        zzfsm zzi = zzfsd.zzi(this.zzi.zzb(), new zzfrk(this, zzdrhVarArr, str) { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzp
            private final zzv zza;
            private final zzdrh[] zzb;
            private final String zzc;

            {
                this.zza = this;
                this.zzb = zzdrhVarArr;
                this.zzc = str;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zzA(this.zzb, this.zzc, (zzdrh) obj);
            }
        }, this.zzj);
        zzi.zze(new Runnable(this, zzdrhVarArr) { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzq
            private final zzv zza;
            private final zzdrh[] zzb;

            {
                this.zza = this;
                this.zzb = zzdrhVarArr;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzz(this.zzb);
            }
        }, this.zzj);
        return zzfsd.zzf(zzfsd.zzj((zzfru) zzfsd.zzh(zzfru.zzw(zzi), ((Integer) zzbet.zzc().zzc(zzbjl.zzfy)).intValue(), TimeUnit.MILLISECONDS, this.zzk), zzn.zza, this.zzj), Exception.class, zzo.zza, this.zzj);
    }

    private final boolean zzK() {
        Map<String, WeakReference<View>> map;
        zzcam zzcamVar = this.zzl;
        return (zzcamVar == null || (map = zzcamVar.zzb) == null || map.isEmpty()) ? false : true;
    }

    public static final Uri zzL(Uri uri, String str, String str2) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf("&adurl=");
        int i = indexOf;
        if (indexOf == -1) {
            i = uri2.indexOf("?adurl=");
        }
        if (i != -1) {
            int i2 = i + 1;
            StringBuilder sb = new StringBuilder(uri2.substring(0, i2));
            C22128a.m8666T0(sb, str, ContainerUtils.KEY_VALUE_DELIMITER, str2, ContainerUtils.FIELD_DELIMITER);
            sb.append(uri2.substring(i2));
            return Uri.parse(sb.toString());
        }
        return uri.buildUpon().appendQueryParameter(str, str2).build();
    }

    public static boolean zzw(Uri uri) {
        return zzH(uri, zzc, zzd);
    }

    public static /* synthetic */ void zzy(zzv zzvVar, String str, String str2, String str3) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfl)).booleanValue()) {
            return;
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgi)).booleanValue()) {
            zzffc zzffcVar = zzvVar.zzr;
            zzffb zza2 = zzffb.zza(str);
            zza2.zzc(str2, str3);
            zzffcVar.zza(zza2);
            return;
        }
        zzdvh zzd2 = zzvVar.zzq.zzd();
        zzd2.zzd("action", str);
        zzd2.zzd(str2, str3);
        zzd2.zze();
    }

    public final /* synthetic */ zzfsm zzA(zzdrh[] zzdrhVarArr, String str, zzdrh zzdrhVar) throws Exception {
        zzdrhVarArr[0] = zzdrhVar;
        Context context = this.zzg;
        zzcam zzcamVar = this.zzl;
        Map<String, WeakReference<View>> map = zzcamVar.zzb;
        JSONObject zze2 = zzca.zze(context, map, map, zzcamVar.zza);
        JSONObject zzb2 = zzca.zzb(this.zzg, this.zzl.zza);
        JSONObject zzc2 = zzca.zzc(this.zzl.zza);
        JSONObject zzd2 = zzca.zzd(this.zzg, this.zzl.zza);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("asset_view_signal", zze2);
        jSONObject.put("ad_view_signal", zzb2);
        jSONObject.put("scroll_view_signal", zzc2);
        jSONObject.put("lock_screen_signal", zzd2);
        if (str == "google.afma.nativeAds.getPublisherCustomRenderedClickSignals") {
            jSONObject.put("click_signal", zzca.zzf(null, this.zzg, this.zzn, this.zzm));
        }
        return zzdrhVar.zzd(str, jSONObject);
    }

    public final /* synthetic */ zzfsm zzB(Uri uri) throws Exception {
        return zzfsd.zzj(zzJ("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new zzfln(this, uri) { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzm
            private final zzv zza;
            private final Uri zzb;

            {
                this.zza = this;
                this.zzb = uri;
            }

            @Override // com.google.android.gms.internal.ads.zzfln
            public final Object apply(Object obj) {
                return zzv.zzF(this.zzb, (String) obj);
            }
        }, this.zzj);
    }

    public final /* synthetic */ Uri zzC(Uri uri, IObjectWrapper iObjectWrapper) throws Exception {
        try {
            uri = this.zzh.zze(uri, this.zzg, (View) ObjectWrapper.m38746B1(iObjectWrapper), null);
        } catch (zzaat e) {
            zzcgt.zzj("", e);
        }
        if (uri.getQueryParameter("ms") != null) {
            return uri;
        }
        throw new Exception("Failed to append spam signals to click url.");
    }

    public final /* synthetic */ zzfsm zzD(ArrayList arrayList) throws Exception {
        return zzfsd.zzj(zzJ("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new zzfln(this, arrayList) { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzl
            private final zzv zza;
            private final List zzb;

            {
                this.zza = this;
                this.zzb = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.zzfln
            public final Object apply(Object obj) {
                return zzv.zzG(this.zzb, (String) obj);
            }
        }, this.zzj);
    }

    public final /* synthetic */ ArrayList zzE(List list, IObjectWrapper iObjectWrapper) throws Exception {
        String zzo = this.zzh.zzb() != null ? this.zzh.zzb().zzo(this.zzg, (View) ObjectWrapper.m38746B1(iObjectWrapper), null) : "";
        if (!TextUtils.isEmpty(zzo)) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Uri uri = (Uri) it.next();
                if (!zzw(uri)) {
                    String valueOf = String.valueOf(uri);
                    valueOf.length();
                    zzcgt.zzi("Not a Google URL: ".concat(valueOf));
                    arrayList.add(uri);
                } else {
                    arrayList.add(zzL(uri, "ms", zzo));
                }
            }
            if (arrayList.isEmpty()) {
                throw new Exception("Empty impression URLs result.");
            }
            return arrayList;
        }
        throw new Exception("Failed to get view signals.");
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void zze(IObjectWrapper iObjectWrapper, zzcfr zzcfrVar, zzcfk zzcfkVar) {
        Context context = (Context) ObjectWrapper.m38746B1(iObjectWrapper);
        this.zzg = context;
        zzfsd.zzp(zzI(context, zzcfrVar.zza, zzcfrVar.zzb, zzcfrVar.zzc, zzcfrVar.zzd).zza(), new zzr(this, zzcfkVar), this.zzf.zze());
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void zzf(IObjectWrapper iObjectWrapper) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfx)).booleanValue()) {
            return;
        }
        MotionEvent motionEvent = (MotionEvent) ObjectWrapper.m38746B1(iObjectWrapper);
        zzcam zzcamVar = this.zzl;
        this.zzm = zzca.zzh(motionEvent, zzcamVar == null ? null : zzcamVar.zza);
        if (motionEvent.getAction() == 0) {
            this.zzn = this.zzm;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        Point point = this.zzm;
        obtain.setLocation(point.x, point.y);
        this.zzh.zzd(obtain);
        obtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void zzg(List<Uri> list, IObjectWrapper iObjectWrapper, zzcaf zzcafVar) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfx)).booleanValue()) {
            try {
                zzcafVar.zzf("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e) {
                zzcgt.zzg("", e);
                return;
            }
        }
        zzfsm zzb2 = this.zzj.zzb(new Callable(this, list, iObjectWrapper) { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzh
            private final zzv zza;
            private final List zzb;
            private final IObjectWrapper zzc;

            {
                this.zza = this;
                this.zzb = list;
                this.zzc = iObjectWrapper;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzE(this.zzb, this.zzc);
            }
        });
        if (zzK()) {
            zzb2 = zzfsd.zzi(zzb2, new zzfrk(this) { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzi
                private final zzv zza;

                {
                    this.zza = this;
                }

                @Override // com.google.android.gms.internal.ads.zzfrk
                public final zzfsm zza(Object obj) {
                    return this.zza.zzD((ArrayList) obj);
                }
            }, this.zzj);
        } else {
            zzcgt.zzh("Asset view map is empty.");
        }
        zzfsd.zzp(zzb2, new zzs(this, zzcafVar), this.zzf.zze());
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void zzh(List<Uri> list, IObjectWrapper iObjectWrapper, zzcaf zzcafVar) {
        try {
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfx)).booleanValue()) {
                zzcafVar.zzf("The updating URL feature is not enabled.");
            } else if (list.size() != 1) {
                zzcafVar.zzf("There should be only 1 click URL.");
            } else {
                Uri uri = list.get(0);
                if (zzH(uri, zza, zzb)) {
                    zzfsm zzb2 = this.zzj.zzb(new Callable(this, uri, iObjectWrapper) { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzj
                        private final zzv zza;
                        private final Uri zzb;
                        private final IObjectWrapper zzc;

                        {
                            this.zza = this;
                            this.zzb = uri;
                            this.zzc = iObjectWrapper;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.zza.zzC(this.zzb, this.zzc);
                        }
                    });
                    if (zzK()) {
                        zzb2 = zzfsd.zzi(zzb2, new zzfrk(this) { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzk
                            private final zzv zza;

                            {
                                this.zza = this;
                            }

                            @Override // com.google.android.gms.internal.ads.zzfrk
                            public final zzfsm zza(Object obj) {
                                return this.zza.zzB((Uri) obj);
                            }
                        }, this.zzj);
                    } else {
                        zzcgt.zzh("Asset view map is empty.");
                    }
                    zzfsd.zzp(zzb2, new zzt(this, zzcafVar), this.zzf.zze());
                    return;
                }
                String valueOf = String.valueOf(uri);
                StringBuilder sb = new StringBuilder(valueOf.length() + 18);
                sb.append("Not a Google URL: ");
                sb.append(valueOf);
                zzcgt.zzi(sb.toString());
                zzcafVar.zze(list);
            }
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void zzi(zzcam zzcamVar) {
        this.zzl = zzcamVar;
        this.zzi.zza(1);
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void zzj(IObjectWrapper iObjectWrapper) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzgH)).booleanValue()) {
            return;
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgI)).booleanValue()) {
            zzfsd.zzp(zzI(this.zzg, null, AdFormat.BANNER.name(), null, null).zza(), new zzu(this), this.zzf.zze());
        }
        WebView webView = (WebView) ObjectWrapper.m38746B1(iObjectWrapper);
        if (webView == null) {
            zzcgt.zzf("The webView cannot be null.");
        } else if (this.zzo.contains(webView)) {
            zzcgt.zzh("This webview has already been registered.");
        } else {
            this.zzo.add(webView);
            webView.addJavascriptInterface(new TaggingLibraryJsInterface(webView, this.zzh), "gmaSdk");
        }
    }

    public final /* synthetic */ void zzz(zzdrh[] zzdrhVarArr) {
        zzdrh zzdrhVar = zzdrhVarArr[0];
        if (zzdrhVar != null) {
            this.zzi.zzc(zzfsd.zza(zzdrhVar));
        }
    }
}
