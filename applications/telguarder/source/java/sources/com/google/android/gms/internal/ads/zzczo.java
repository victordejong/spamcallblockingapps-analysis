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
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbqx;
import com.google.android.gms.internal.ads.zzbwg;
import com.google.android.gms.internal.ads.zzdab;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzczo.class */
public final class zzczo extends zzayb {
    private static final List<String> zzgzo = new ArrayList(Arrays.asList("/aclk", "/pcs/click"));
    private static final List<String> zzgzp = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));
    private static final List<String> zzgzq = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion"));
    private static final List<String> zzgzr = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));
    private Context context;
    private zzazn zzboz;
    private final ScheduledExecutorService zzfri;
    private zzei zzfrl;
    private Point zzgcr = new Point();
    private Point zzgcs = new Point();
    private final zzdzv zzghl;
    private zzdof<zzcgk> zzgup;
    private zzbgc zzgzs;
    private zzasq zzgzt;

    public zzczo(zzbgc zzbgcVar, Context context, zzei zzeiVar, zzazn zzaznVar, zzdof<zzcgk> zzdofVar, zzdzv zzdzvVar, ScheduledExecutorService scheduledExecutorService) {
        this.zzgzs = zzbgcVar;
        this.context = context;
        this.zzfrl = zzeiVar;
        this.zzboz = zzaznVar;
        this.zzgup = zzdofVar;
        this.zzghl = zzdzvVar;
        this.zzfri = scheduledExecutorService;
    }

    /* renamed from: zza */
    public final Uri zzb(Uri uri, IObjectWrapper iObjectWrapper) throws Exception {
        try {
            uri = this.zzfrl.zza(uri, this.context, (View) ObjectWrapper.unwrap(iObjectWrapper), null);
        } catch (zzeh e) {
            zzazk.zzd("", e);
        }
        if (uri.getQueryParameter("ms") != null) {
            return uri;
        }
        throw new Exception("Failed to append spam signals to click url.");
    }

    private static Uri zza(Uri uri, String str, String str2) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf("&adurl=");
        int i = indexOf;
        if (indexOf == -1) {
            i = uri2.indexOf("?adurl=");
        }
        if (i != -1) {
            int i2 = i + 1;
            return Uri.parse(uri2.substring(0, i2) + str + SimpleComparison.EQUAL_TO_OPERATION + str2 + "&" + uri2.substring(i2));
        }
        return uri.buildUpon().appendQueryParameter(str, str2).build();
    }

    public static /* synthetic */ ArrayList zza(List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (!zzk(uri) || TextUtils.isEmpty(str)) {
                arrayList.add(uri);
            } else {
                arrayList.add(zza(uri, "nas", str));
            }
        }
        return arrayList;
    }

    private static boolean zza(Uri uri, List<String> list, List<String> list2) {
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

    private final boolean zzasu() {
        zzasq zzasqVar = this.zzgzt;
        return (zzasqVar == null || zzasqVar.zzdto == null || this.zzgzt.zzdto.isEmpty()) ? false : true;
    }

    public static /* synthetic */ Uri zzc(Uri uri, String str) {
        Uri uri2 = uri;
        if (!TextUtils.isEmpty(str)) {
            uri2 = zza(uri, "nas", str);
        }
        return uri2;
    }

    private final zzdzw<String> zzgq(String str) {
        zzcgk[] zzcgkVarArr = new zzcgk[1];
        zzdzw zzb = zzdzk.zzb(this.zzgup.zzavm(), new zzdyu(this, zzcgkVarArr, str) { // from class: com.google.android.gms.internal.ads.zzczv
            private final String zzdlo;
            private final zzczo zzgzl;
            private final zzcgk[] zzgzu;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgzl = this;
                this.zzgzu = zzcgkVarArr;
                this.zzdlo = str;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                return this.zzgzl.zza(this.zzgzu, this.zzdlo, (zzcgk) obj);
            }
        }, this.zzghl);
        zzb.addListener(new Runnable(this, zzcgkVarArr) { // from class: com.google.android.gms.internal.ads.zzczy
            private final zzczo zzgzl;
            private final zzcgk[] zzgzu;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgzl = this;
                this.zzgzu = zzcgkVarArr;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgzl.zza(this.zzgzu);
            }
        }, this.zzghl);
        return zzdzf.zzg(zzb).zza(((Integer) zzwr.zzqr().zzd(zzabp.zzczd)).intValue(), TimeUnit.MILLISECONDS, this.zzfri).zza(zzczt.zzeaj, this.zzghl).zza(Exception.class, zzczw.zzeaj, this.zzghl);
    }

    private static boolean zzk(Uri uri) {
        return zza(uri, zzgzq, zzgzr);
    }

    public final /* synthetic */ zzdzw zza(zzcgk[] zzcgkVarArr, String str, zzcgk zzcgkVar) throws Exception {
        zzcgkVarArr[0] = zzcgkVar;
        JSONObject zza = zzbn.zza(this.context, this.zzgzt.zzdto, this.zzgzt.zzdto, this.zzgzt.zzaat);
        JSONObject zza2 = zzbn.zza(this.context, this.zzgzt.zzaat);
        JSONObject zzt = zzbn.zzt(this.zzgzt.zzaat);
        JSONObject zzb = zzbn.zzb(this.context, this.zzgzt.zzaat);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("asset_view_signal", zza);
        jSONObject.put("ad_view_signal", zza2);
        jSONObject.put("scroll_view_signal", zzt);
        jSONObject.put("lock_screen_signal", zzb);
        if (str == "google.afma.nativeAds.getPublisherCustomRenderedClickSignals") {
            jSONObject.put("click_signal", zzbn.zza((String) null, this.context, this.zzgcs, this.zzgcr));
        }
        return zzcgkVar.zzc(str, jSONObject);
    }

    public final /* synthetic */ ArrayList zza(List list, IObjectWrapper iObjectWrapper) throws Exception {
        String zza = this.zzfrl.zzca() != null ? this.zzfrl.zzca().zza(this.context, (View) ObjectWrapper.unwrap(iObjectWrapper), (Activity) null) : "";
        if (!TextUtils.isEmpty(zza)) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Uri uri = (Uri) it.next();
                if (!zzk(uri)) {
                    String valueOf = String.valueOf(uri);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                    sb.append("Not a Google URL: ");
                    sb.append(valueOf);
                    zzd.zzex(sb.toString());
                    arrayList.add(uri);
                } else {
                    arrayList.add(zza(uri, "ms", zza));
                }
            }
            if (arrayList.isEmpty()) {
                throw new Exception("Empty impression URLs result.");
            }
            return arrayList;
        }
        throw new Exception("Failed to get view signals.");
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final void zza(IObjectWrapper iObjectWrapper, zzaye zzayeVar, zzaxx zzaxxVar) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        this.context = context;
        String str = zzayeVar.zzbut;
        String str2 = zzayeVar.zzbrm;
        zzvs zzvsVar = zzayeVar.zzebq;
        zzvl zzvlVar = zzayeVar.zzebr;
        zzczl zzafr = this.zzgzs.zzafr();
        zzbqx.zza zzcf = new zzbqx.zza().zzcf(context);
        zzdnr zzdnrVar = new zzdnr();
        String str3 = str;
        if (str == null) {
            str3 = "adUnitId";
        }
        zzdnr zzgs = zzdnrVar.zzgs(str3);
        zzvl zzvlVar2 = zzvlVar;
        if (zzvlVar == null) {
            zzvlVar2 = new zzvo().zzqd();
        }
        zzdnr zzh = zzgs.zzh(zzvlVar2);
        zzvs zzvsVar2 = zzvsVar;
        if (zzvsVar == null) {
            zzvsVar2 = new zzvs();
        }
        zzdzk.zza(zzafr.zzg(zzcf.zza(zzh.zzg(zzvsVar2).zzavh()).zzalo()).zza(new zzdab(new zzdab.zza().zzgr(str2))).zzg(new zzbwg.zza().zzaml()).zzaim().zzail(), new zzczx(this, zzaxxVar), this.zzgzs.zzafa());
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final void zza(zzasq zzasqVar) {
        this.zzgzt = zzasqVar;
        this.zzgup.ensureSize(1);
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final void zza(List<Uri> list, IObjectWrapper iObjectWrapper, zzasj zzasjVar) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzczc)).booleanValue()) {
            try {
                zzasjVar.onError("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e) {
                zzazk.zzc("", e);
                return;
            }
        }
        zzdzw zze = this.zzghl.zze(new Callable(this, list, iObjectWrapper) { // from class: com.google.android.gms.internal.ads.zzczn
            private final zzczo zzgzl;
            private final List zzgzm;
            private final IObjectWrapper zzgzn;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgzl = this;
                this.zzgzm = list;
                this.zzgzn = iObjectWrapper;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzgzl.zza(this.zzgzm, this.zzgzn);
            }
        });
        if (zzasu()) {
            zze = zzdzk.zzb(zze, new zzdyu(this) { // from class: com.google.android.gms.internal.ads.zzczq
                private final zzczo zzgzl;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzgzl = this;
                }

                @Override // com.google.android.gms.internal.ads.zzdyu
                public final zzdzw zzf(Object obj) {
                    return this.zzgzl.zzb((ArrayList) obj);
                }
            }, this.zzghl);
        } else {
            zzd.zzew("Asset view map is empty.");
        }
        zzdzk.zza(zze, new zzdaa(this, zzasjVar), this.zzgzs.zzafa());
    }

    public final /* synthetic */ void zza(zzcgk[] zzcgkVarArr) {
        if (zzcgkVarArr[0] != null) {
            this.zzgup.zzd(zzdzk.zzag(zzcgkVarArr[0]));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final void zzan(IObjectWrapper iObjectWrapper) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzczc)).booleanValue()) {
            return;
        }
        MotionEvent motionEvent = (MotionEvent) ObjectWrapper.unwrap(iObjectWrapper);
        zzasq zzasqVar = this.zzgzt;
        this.zzgcr = zzbn.zza(motionEvent, zzasqVar == null ? null : zzasqVar.zzaat);
        if (motionEvent.getAction() == 0) {
            this.zzgcs = this.zzgcr;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setLocation(this.zzgcr.x, this.zzgcr.y);
        this.zzfrl.zza(obtain);
        obtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final IObjectWrapper zzao(IObjectWrapper iObjectWrapper) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final IObjectWrapper zzb(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return null;
    }

    public final /* synthetic */ zzdzw zzb(ArrayList arrayList) throws Exception {
        return zzdzk.zzb(zzgq("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new zzdvz(this, arrayList) { // from class: com.google.android.gms.internal.ads.zzczr
            private final zzczo zzgzl;
            private final List zzgzm;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgzl = this;
                this.zzgzm = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.zzdvz
            public final Object apply(Object obj) {
                return zzczo.zza(this.zzgzm, (String) obj);
            }
        }, this.zzghl);
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final void zzb(List<Uri> list, IObjectWrapper iObjectWrapper, zzasj zzasjVar) {
        try {
            if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzczc)).booleanValue()) {
                zzasjVar.onError("The updating URL feature is not enabled.");
            } else if (list.size() != 1) {
                zzasjVar.onError("There should be only 1 click URL.");
            } else {
                Uri uri = list.get(0);
                if (zza(uri, zzgzo, zzgzp)) {
                    zzdzw zze = this.zzghl.zze(new Callable(this, uri, iObjectWrapper) { // from class: com.google.android.gms.internal.ads.zzczp
                        private final Uri zzgtx;
                        private final zzczo zzgzl;
                        private final IObjectWrapper zzgzn;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.zzgzl = this;
                            this.zzgtx = uri;
                            this.zzgzn = iObjectWrapper;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.zzgzl.zzb(this.zzgtx, this.zzgzn);
                        }
                    });
                    if (zzasu()) {
                        zze = zzdzk.zzb(zze, new zzdyu(this) { // from class: com.google.android.gms.internal.ads.zzczs
                            private final zzczo zzgzl;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.zzgzl = this;
                            }

                            @Override // com.google.android.gms.internal.ads.zzdyu
                            public final zzdzw zzf(Object obj) {
                                return this.zzgzl.zzl((Uri) obj);
                            }
                        }, this.zzghl);
                    } else {
                        zzd.zzew("Asset view map is empty.");
                    }
                    zzdzk.zza(zze, new zzczz(this, zzasjVar), this.zzgzs.zzafa());
                    return;
                }
                String valueOf = String.valueOf(uri);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Not a Google URL: ");
                sb.append(valueOf);
                zzd.zzex(sb.toString());
                zzasjVar.onSuccess(list);
            }
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    public final /* synthetic */ zzdzw zzl(Uri uri) throws Exception {
        return zzdzk.zzb(zzgq("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new zzdvz(this, uri) { // from class: com.google.android.gms.internal.ads.zzczu
            private final Uri zzgtx;
            private final zzczo zzgzl;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgzl = this;
                this.zzgtx = uri;
            }

            @Override // com.google.android.gms.internal.ads.zzdvz
            public final Object apply(Object obj) {
                return zzczo.zzc(this.zzgtx, (String) obj);
            }
        }, this.zzghl);
    }
}
