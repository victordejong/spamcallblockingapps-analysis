package com.google.android.gms.ads.nonagon.signalgeneration;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.RemoteException;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.util.zzcb;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzalt;
import com.google.android.gms.internal.ads.zzalu;
import com.google.android.gms.internal.ads.zzbfd;
import com.google.android.gms.internal.ads.zzbfe;
import com.google.android.gms.internal.ads.zzbfi;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzcch;
import com.google.android.gms.internal.ads.zzcco;
import com.google.android.gms.internal.ads.zzchq;
import com.google.android.gms.internal.ads.zzchs;
import com.google.android.gms.internal.ads.zzchx;
import com.google.android.gms.internal.ads.zzciz;
import com.google.android.gms.internal.ads.zzcjf;
import com.google.android.gms.internal.ads.zzcqm;
import com.google.android.gms.internal.ads.zzdeb;
import com.google.android.gms.internal.ads.zzdkc;
import com.google.android.gms.internal.ads.zzduy;
import com.google.android.gms.internal.ads.zzdyy;
import com.google.android.gms.internal.ads.zzdyz;
import com.google.android.gms.internal.ads.zzfed;
import com.google.android.gms.internal.ads.zzfew;
import com.google.android.gms.internal.ads.zzfin;
import com.google.android.gms.internal.ads.zzfio;
import com.google.android.gms.internal.ads.zzfjs;
import com.google.android.gms.internal.ads.zzfpv;
import com.google.android.gms.internal.ads.zzfvx;
import com.google.android.gms.internal.ads.zzfwh;
import com.google.android.gms.internal.ads.zzfwq;
import com.google.android.gms.internal.ads.zzfxa;
import com.google.android.gms.internal.ads.zzfxb;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzv.class */
public final class zzv extends zzchs {
    public static final List<String> zza = new ArrayList(Arrays.asList("/aclk", "/pcs/click"));
    public static final List<String> zzb = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));
    public static final List<String> zzc = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion"));
    public static final List<String> zzd = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));
    public static final /* synthetic */ int zze = 0;
    private final zzcjf zzA;
    private String zzB;
    private final zzcqm zzf;
    private Context zzg;
    private final zzalt zzh;
    private final zzfew<zzduy> zzi;
    private final zzfxb zzj;
    private final ScheduledExecutorService zzk;
    private zzcco zzl;
    private final zzb zzp;
    private final zzdyz zzq;
    private final zzfio zzr;
    private final zzfjs zzs;
    private Point zzm = new Point();
    private Point zzn = new Point();
    private final Set<WebView> zzo = Collections.newSetFromMap(new WeakHashMap());
    private final AtomicInteger zzz = new AtomicInteger(0);
    private final boolean zzt = ((Boolean) zzbgq.zzc().zzb(zzblj.zzfy)).booleanValue();
    private final boolean zzu = ((Boolean) zzbgq.zzc().zzb(zzblj.zzfx)).booleanValue();
    private final boolean zzv = ((Boolean) zzbgq.zzc().zzb(zzblj.zzfz)).booleanValue();
    private final boolean zzw = ((Boolean) zzbgq.zzc().zzb(zzblj.zzfB)).booleanValue();
    private final String zzx = (String) zzbgq.zzc().zzb(zzblj.zzfA);
    private final String zzy = (String) zzbgq.zzc().zzb(zzblj.zzfC);
    private final String zzC = (String) zzbgq.zzc().zzb(zzblj.zzfD);

    public zzv(zzcqm zzcqmVar, Context context, zzalt zzaltVar, zzfew<zzduy> zzfewVar, zzfxb zzfxbVar, ScheduledExecutorService scheduledExecutorService, zzdyz zzdyzVar, zzfio zzfioVar, zzfjs zzfjsVar, zzcjf zzcjfVar) {
        this.zzf = zzcqmVar;
        this.zzg = context;
        this.zzh = zzaltVar;
        this.zzi = zzfewVar;
        this.zzj = zzfxbVar;
        this.zzk = scheduledExecutorService;
        this.zzp = zzcqmVar.zzp();
        this.zzq = zzdyzVar;
        this.zzr = zzfioVar;
        this.zzs = zzfjsVar;
        this.zzA = zzcjfVar;
    }

    public static boolean zzE(Uri uri) {
        return zzJ(uri, zzc, zzd);
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
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            Uri uri = (Uri) it2.next();
            if (!zzE(uri) || TextUtils.isEmpty(str)) {
                arrayList.add(uri);
            } else {
                arrayList.add(zzL(uri, "nas", str));
            }
        }
        return arrayList;
    }

    private final zzg zzH(Context context, String str, String str2, zzbfi zzbfiVar, zzbfd zzbfdVar) {
        zzf zzq = this.zzf.zzq();
        zzdeb zzdebVar = new zzdeb();
        zzdebVar.zzc(context);
        zzfed zzfedVar = new zzfed();
        String str3 = str;
        if (str == null) {
            str3 = "adUnitId";
        }
        zzfedVar.zzs(str3);
        zzbfd zzbfdVar2 = zzbfdVar;
        if (zzbfdVar == null) {
            zzbfdVar2 = new zzbfe().zza();
        }
        zzfedVar.zzD(zzbfdVar2);
        zzbfi zzbfiVar2 = zzbfiVar;
        if (zzbfiVar == null) {
            zzbfiVar2 = new zzbfi();
        }
        zzfedVar.zzr(zzbfiVar2);
        zzdebVar.zzf(zzfedVar.zzF());
        zzq.zza(zzdebVar.zzg());
        zzx zzxVar = new zzx();
        zzxVar.zza(str2);
        zzq.zzb(new zzz(zzxVar, null));
        new zzdkc();
        return zzq.zzc();
    }

    private final zzfxa<String> zzI(final String str) {
        final zzduy[] zzduyVarArr = new zzduy[1];
        zzfxa zzn = zzfwq.zzn(this.zzi.zza(), new zzfvx() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzn
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzv.this.zzo(zzduyVarArr, str, (zzduy) obj);
            }
        }, this.zzj);
        zzn.zzc(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzo
            @Override // java.lang.Runnable
            public final void run() {
                zzv.this.zzz(zzduyVarArr);
            }
        }, this.zzj);
        return zzfwq.zzf(zzfwq.zzm((zzfwh) zzfwq.zzo(zzfwh.zzw(zzn), ((Integer) zzbgq.zzc().zzb(zzblj.zzfF)).intValue(), TimeUnit.MILLISECONDS, this.zzk), zzk.zza, this.zzj), Exception.class, zzj.zza, this.zzj);
    }

    private static boolean zzJ(Uri uri, List<String> list, List<String> list2) {
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

    private final boolean zzK() {
        Map<String, WeakReference<View>> map;
        zzcco zzccoVar = this.zzl;
        return (zzccoVar == null || (map = zzccoVar.zzb) == null || map.isEmpty()) ? false : true;
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
            C0082b.m8749m(sb, str, "=", str2, "&");
            sb.append(uri2.substring(i2));
            return Uri.parse(sb.toString());
        }
        return uri.buildUpon().appendQueryParameter(str, str2).build();
    }

    public static /* bridge */ /* synthetic */ void zzy(zzv zzvVar, String str, String str2, String str3) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfs)).booleanValue()) {
            return;
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgq)).booleanValue()) {
            zzfio zzfioVar = zzvVar.zzr;
            zzfin zzb2 = zzfin.zzb(str);
            zzb2.zza(str2, str3);
            zzfioVar.zzb(zzb2);
            return;
        }
        zzdyy zza2 = zzvVar.zzq.zza();
        zza2.zzb("action", str);
        zza2.zzb(str2, str3);
        zza2.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzcht
    public final void zze(IObjectWrapper iObjectWrapper, zzchx zzchxVar, zzchq zzchqVar) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        this.zzg = context;
        zzfwq.zzr(zzH(context, zzchxVar.zza, zzchxVar.zzb, zzchxVar.zzc, zzchxVar.zzd).zza(), new zzr(this, zzchqVar), this.zzf.zzC());
    }

    @Override // com.google.android.gms.internal.ads.zzcht
    public final void zzf(zzcco zzccoVar) {
        this.zzl = zzccoVar;
        this.zzi.zzc(1);
    }

    @Override // com.google.android.gms.internal.ads.zzcht
    @SuppressLint({"AddJavascriptInterface"})
    public final void zzg(IObjectWrapper iObjectWrapper) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzgS)).booleanValue()) {
            return;
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgT)).booleanValue()) {
            zzfwq.zzr(zzH(this.zzg, null, AdFormat.BANNER.name(), null, null).zza(), new zzu(this), this.zzf.zzC());
        }
        WebView webView = (WebView) ObjectWrapper.unwrap(iObjectWrapper);
        if (webView == null) {
            zzciz.zzg("The webView cannot be null.");
        } else if (this.zzo.contains(webView)) {
            zzciz.zzi("This webview has already been registered.");
        } else {
            this.zzo.add(webView);
            webView.addJavascriptInterface(new TaggingLibraryJsInterface(webView, this.zzh), "gmaSdk");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcht
    public final void zzh(IObjectWrapper iObjectWrapper) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfE)).booleanValue()) {
            return;
        }
        MotionEvent motionEvent = (MotionEvent) ObjectWrapper.unwrap(iObjectWrapper);
        zzcco zzccoVar = this.zzl;
        this.zzm = zzcb.zza(motionEvent, zzccoVar == null ? null : zzccoVar.zza);
        if (motionEvent.getAction() == 0) {
            this.zzn = this.zzm;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        Point point = this.zzm;
        obtain.setLocation(point.x, point.y);
        this.zzh.zzd(obtain);
        obtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzcht
    public final void zzi(List<Uri> list, final IObjectWrapper iObjectWrapper, zzcch zzcchVar) {
        try {
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfE)).booleanValue()) {
                zzcchVar.zze("The updating URL feature is not enabled.");
            } else if (list.size() != 1) {
                zzcchVar.zze("There should be only 1 click URL.");
            } else {
                final Uri uri = list.get(0);
                if (zzJ(uri, zza, zzb)) {
                    zzfxa zzb2 = this.zzj.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzp
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return zzv.this.zzk(uri, iObjectWrapper);
                        }
                    });
                    if (zzK()) {
                        zzb2 = zzfwq.zzn(zzb2, new zzfvx() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzl
                            @Override // com.google.android.gms.internal.ads.zzfvx
                            public final zzfxa zza(Object obj) {
                                return zzv.this.zzp((Uri) obj);
                            }
                        }, this.zzj);
                    } else {
                        zzciz.zzi("Asset view map is empty.");
                    }
                    zzfwq.zzr(zzb2, new zzt(this, zzcchVar), this.zzf.zzC());
                    return;
                }
                String valueOf = String.valueOf(uri);
                StringBuilder sb = new StringBuilder(valueOf.length() + 18);
                sb.append("Not a Google URL: ");
                sb.append(valueOf);
                zzciz.zzj(sb.toString());
                zzcchVar.zzf(list);
            }
        } catch (RemoteException e) {
            zzciz.zzh("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcht
    public final void zzj(final List<Uri> list, final IObjectWrapper iObjectWrapper, zzcch zzcchVar) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfE)).booleanValue()) {
            try {
                zzcchVar.zze("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e) {
                zzciz.zzh("", e);
                return;
            }
        }
        zzfxa zzb2 = this.zzj.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzq
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzv.this.zzv(list, iObjectWrapper);
            }
        });
        if (zzK()) {
            zzb2 = zzfwq.zzn(zzb2, new zzfvx() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzm
                @Override // com.google.android.gms.internal.ads.zzfvx
                public final zzfxa zza(Object obj) {
                    return zzv.this.zzq((ArrayList) obj);
                }
            }, this.zzj);
        } else {
            zzciz.zzi("Asset view map is empty.");
        }
        zzfwq.zzr(zzb2, new zzs(this, zzcchVar), this.zzf.zzC());
    }

    public final /* synthetic */ Uri zzk(Uri uri, IObjectWrapper iObjectWrapper) throws Exception {
        try {
            uri = this.zzh.zza(uri, this.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null);
        } catch (zzalu e) {
            zzciz.zzk("", e);
        }
        if (uri.getQueryParameter("ms") != null) {
            return uri;
        }
        throw new Exception("Failed to append spam signals to click url.");
    }

    public final /* synthetic */ zzfxa zzo(zzduy[] zzduyVarArr, String str, zzduy zzduyVar) throws Exception {
        zzduyVarArr[0] = zzduyVar;
        Context context = this.zzg;
        zzcco zzccoVar = this.zzl;
        Map<String, WeakReference<View>> map = zzccoVar.zzb;
        JSONObject zzd2 = zzcb.zzd(context, map, map, zzccoVar.zza);
        JSONObject zzg = zzcb.zzg(this.zzg, this.zzl.zza);
        JSONObject zzf = zzcb.zzf(this.zzl.zza);
        JSONObject zze2 = zzcb.zze(this.zzg, this.zzl.zza);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("asset_view_signal", zzd2);
        jSONObject.put("ad_view_signal", zzg);
        jSONObject.put("scroll_view_signal", zzf);
        jSONObject.put("lock_screen_signal", zze2);
        if (str == "google.afma.nativeAds.getPublisherCustomRenderedClickSignals") {
            jSONObject.put("click_signal", zzcb.zzc(null, this.zzg, this.zzn, this.zzm));
        }
        return zzduyVar.zzd(str, jSONObject);
    }

    public final /* synthetic */ zzfxa zzp(final Uri uri) throws Exception {
        return zzfwq.zzm(zzI("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new zzfpv() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzh
            @Override // com.google.android.gms.internal.ads.zzfpv
            public final Object apply(Object obj) {
                return zzv.zzF(uri, (String) obj);
            }
        }, this.zzj);
    }

    public final /* synthetic */ zzfxa zzq(final ArrayList arrayList) throws Exception {
        return zzfwq.zzm(zzI("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new zzfpv() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzi
            @Override // com.google.android.gms.internal.ads.zzfpv
            public final Object apply(Object obj) {
                return zzv.zzG(arrayList, (String) obj);
            }
        }, this.zzj);
    }

    public final /* synthetic */ ArrayList zzv(List list, IObjectWrapper iObjectWrapper) throws Exception {
        String zzh = this.zzh.zzc() != null ? this.zzh.zzc().zzh(this.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null) : "";
        if (!TextUtils.isEmpty(zzh)) {
            ArrayList arrayList = new ArrayList();
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                Uri uri = (Uri) it2.next();
                if (!zzE(uri)) {
                    zzciz.zzj("Not a Google URL: ".concat(String.valueOf(uri)));
                    arrayList.add(uri);
                } else {
                    arrayList.add(zzL(uri, "ms", zzh));
                }
            }
            if (arrayList.isEmpty()) {
                throw new Exception("Empty impression URLs result.");
            }
            return arrayList;
        }
        throw new Exception("Failed to get view signals.");
    }

    public final /* synthetic */ void zzz(zzduy[] zzduyVarArr) {
        zzduy zzduyVar = zzduyVarArr[0];
        if (zzduyVar != null) {
            this.zzi.zzb(zzfwq.zzi(zzduyVar));
        }
    }
}
