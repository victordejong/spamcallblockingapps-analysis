package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import androidx.collection.SimpleArrayMap;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzccd.class */
public final class zzccd {
    private Bundle extras;
    private zzaej zzdfv;
    private List<?> zzeuv;
    private double zzeuy;
    private float zzevk;
    private IObjectWrapper zzfvs;
    private int zzgee;
    private zzzc zzgef;
    private View zzgeg;
    private zzzu zzgeh;
    private zzbeb zzgei;
    private zzbeb zzgej;
    private View zzgek;
    private IObjectWrapper zzgel;
    private zzaer zzgem;
    private zzaer zzgen;
    private String zzgeo;
    private String zzger;
    private SimpleArrayMap<String, zzaed> zzgep = new SimpleArrayMap<>();
    private SimpleArrayMap<String, String> zzgeq = new SimpleArrayMap<>();
    private List<zzzu> zzdgj = Collections.emptyList();

    private final void setMediaContentAspectRatio(float f) {
        synchronized (this) {
            this.zzevk = f;
        }
    }

    public static zzccd zza(zzanr zzanrVar) {
        try {
            zzcce zza = zza(zzanrVar.getVideoController(), (zzanx) null);
            zzaej zzto = zzanrVar.zzto();
            View view = (View) zzau(zzanrVar.zzvg());
            String headline = zzanrVar.getHeadline();
            List<?> images = zzanrVar.getImages();
            String body = zzanrVar.getBody();
            Bundle extras = zzanrVar.getExtras();
            String callToAction = zzanrVar.getCallToAction();
            View view2 = (View) zzau(zzanrVar.zzvh());
            IObjectWrapper zztp = zzanrVar.zztp();
            String store = zzanrVar.getStore();
            String price = zzanrVar.getPrice();
            double starRating = zzanrVar.getStarRating();
            zzaer zztn = zzanrVar.zztn();
            zzccd zzccdVar = new zzccd();
            zzccdVar.zzgee = 2;
            zzccdVar.zzgef = zza;
            zzccdVar.zzdfv = zzto;
            zzccdVar.zzgeg = view;
            zzccdVar.zzn("headline", headline);
            zzccdVar.zzeuv = images;
            zzccdVar.zzn(SDKConstants.PARAM_A2U_BODY, body);
            zzccdVar.extras = extras;
            zzccdVar.zzn("call_to_action", callToAction);
            zzccdVar.zzgek = view2;
            zzccdVar.zzgel = zztp;
            zzccdVar.zzn("store", store);
            zzccdVar.zzn(FirebaseAnalytics.Param.PRICE, price);
            zzccdVar.zzeuy = starRating;
            zzccdVar.zzgem = zztn;
            return zzccdVar;
        } catch (RemoteException e) {
            zzd.zzd("Failed to get native ad from app install ad mapper", e);
            return null;
        }
    }

    public static zzccd zza(zzans zzansVar) {
        try {
            zzcce zza = zza(zzansVar.getVideoController(), (zzanx) null);
            zzaej zzto = zzansVar.zzto();
            View view = (View) zzau(zzansVar.zzvg());
            String headline = zzansVar.getHeadline();
            List<?> images = zzansVar.getImages();
            String body = zzansVar.getBody();
            Bundle extras = zzansVar.getExtras();
            String callToAction = zzansVar.getCallToAction();
            View view2 = (View) zzau(zzansVar.zzvh());
            IObjectWrapper zztp = zzansVar.zztp();
            String advertiser = zzansVar.getAdvertiser();
            zzaer zztq = zzansVar.zztq();
            zzccd zzccdVar = new zzccd();
            zzccdVar.zzgee = 1;
            zzccdVar.zzgef = zza;
            zzccdVar.zzdfv = zzto;
            zzccdVar.zzgeg = view;
            zzccdVar.zzn("headline", headline);
            zzccdVar.zzeuv = images;
            zzccdVar.zzn(SDKConstants.PARAM_A2U_BODY, body);
            zzccdVar.extras = extras;
            zzccdVar.zzn("call_to_action", callToAction);
            zzccdVar.zzgek = view2;
            zzccdVar.zzgel = zztp;
            zzccdVar.zzn("advertiser", advertiser);
            zzccdVar.zzgen = zztq;
            return zzccdVar;
        } catch (RemoteException e) {
            zzd.zzd("Failed to get native ad from content ad mapper", e);
            return null;
        }
    }

    private static zzccd zza(zzzc zzzcVar, zzaej zzaejVar, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, IObjectWrapper iObjectWrapper, String str4, String str5, double d, zzaer zzaerVar, String str6, float f) {
        zzccd zzccdVar = new zzccd();
        zzccdVar.zzgee = 6;
        zzccdVar.zzgef = zzzcVar;
        zzccdVar.zzdfv = zzaejVar;
        zzccdVar.zzgeg = view;
        zzccdVar.zzn("headline", str);
        zzccdVar.zzeuv = list;
        zzccdVar.zzn(SDKConstants.PARAM_A2U_BODY, str2);
        zzccdVar.extras = bundle;
        zzccdVar.zzn("call_to_action", str3);
        zzccdVar.zzgek = view2;
        zzccdVar.zzgel = iObjectWrapper;
        zzccdVar.zzn("store", str4);
        zzccdVar.zzn(FirebaseAnalytics.Param.PRICE, str5);
        zzccdVar.zzeuy = d;
        zzccdVar.zzgem = zzaerVar;
        zzccdVar.zzn("advertiser", str6);
        zzccdVar.setMediaContentAspectRatio(f);
        return zzccdVar;
    }

    private static zzcce zza(zzzc zzzcVar, zzanx zzanxVar) {
        if (zzzcVar == null) {
            return null;
        }
        return new zzcce(zzzcVar, zzanxVar);
    }

    private static <T> T zzau(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return null;
        }
        return (T) ObjectWrapper.unwrap(iObjectWrapper);
    }

    public static zzccd zzb(zzanr zzanrVar) {
        try {
            return zza(zza(zzanrVar.getVideoController(), (zzanx) null), zzanrVar.zzto(), (View) zzau(zzanrVar.zzvg()), zzanrVar.getHeadline(), zzanrVar.getImages(), zzanrVar.getBody(), zzanrVar.getExtras(), zzanrVar.getCallToAction(), (View) zzau(zzanrVar.zzvh()), zzanrVar.zztp(), zzanrVar.getStore(), zzanrVar.getPrice(), zzanrVar.getStarRating(), zzanrVar.zztn(), null, 0.0f);
        } catch (RemoteException e) {
            zzd.zzd("Failed to get native ad assets from app install ad mapper", e);
            return null;
        }
    }

    public static zzccd zzb(zzans zzansVar) {
        try {
            return zza(zza(zzansVar.getVideoController(), (zzanx) null), zzansVar.zzto(), (View) zzau(zzansVar.zzvg()), zzansVar.getHeadline(), zzansVar.getImages(), zzansVar.getBody(), zzansVar.getExtras(), zzansVar.getCallToAction(), (View) zzau(zzansVar.zzvh()), zzansVar.zztp(), null, null, -1.0d, zzansVar.zztq(), zzansVar.getAdvertiser(), 0.0f);
        } catch (RemoteException e) {
            zzd.zzd("Failed to get native ad assets from content ad mapper", e);
            return null;
        }
    }

    public static zzccd zzb(zzanx zzanxVar) {
        try {
            return zza(zza(zzanxVar.getVideoController(), zzanxVar), zzanxVar.zzto(), (View) zzau(zzanxVar.zzvg()), zzanxVar.getHeadline(), zzanxVar.getImages(), zzanxVar.getBody(), zzanxVar.getExtras(), zzanxVar.getCallToAction(), (View) zzau(zzanxVar.zzvh()), zzanxVar.zztp(), zzanxVar.getStore(), zzanxVar.getPrice(), zzanxVar.getStarRating(), zzanxVar.zztn(), zzanxVar.getAdvertiser(), zzanxVar.getMediaContentAspectRatio());
        } catch (RemoteException e) {
            zzd.zzd("Failed to get native ad assets from unified ad mapper", e);
            return null;
        }
    }

    private final String zzfz(String str) {
        String str2;
        synchronized (this) {
            str2 = this.zzgeq.get(str);
        }
        return str2;
    }

    public final void destroy() {
        synchronized (this) {
            zzbeb zzbebVar = this.zzgei;
            if (zzbebVar != null) {
                zzbebVar.destroy();
                this.zzgei = null;
            }
            zzbeb zzbebVar2 = this.zzgej;
            if (zzbebVar2 != null) {
                zzbebVar2.destroy();
                this.zzgej = null;
            }
            this.zzfvs = null;
            this.zzgep.clear();
            this.zzgeq.clear();
            this.zzgef = null;
            this.zzdfv = null;
            this.zzgeg = null;
            this.zzeuv = null;
            this.extras = null;
            this.zzgek = null;
            this.zzgel = null;
            this.zzgem = null;
            this.zzgen = null;
            this.zzgeo = null;
        }
    }

    public final String getAdvertiser() {
        String zzfz;
        synchronized (this) {
            zzfz = zzfz("advertiser");
        }
        return zzfz;
    }

    public final String getBody() {
        String zzfz;
        synchronized (this) {
            zzfz = zzfz(SDKConstants.PARAM_A2U_BODY);
        }
        return zzfz;
    }

    public final String getCallToAction() {
        String zzfz;
        synchronized (this) {
            zzfz = zzfz("call_to_action");
        }
        return zzfz;
    }

    public final String getCustomTemplateId() {
        String str;
        synchronized (this) {
            str = this.zzgeo;
        }
        return str;
    }

    public final Bundle getExtras() {
        Bundle bundle;
        synchronized (this) {
            if (this.extras == null) {
                this.extras = new Bundle();
            }
            bundle = this.extras;
        }
        return bundle;
    }

    public final String getHeadline() {
        String zzfz;
        synchronized (this) {
            zzfz = zzfz("headline");
        }
        return zzfz;
    }

    public final List<?> getImages() {
        List<?> list;
        synchronized (this) {
            list = this.zzeuv;
        }
        return list;
    }

    public final float getMediaContentAspectRatio() {
        float f;
        synchronized (this) {
            f = this.zzevk;
        }
        return f;
    }

    public final List<zzzu> getMuteThisAdReasons() {
        List<zzzu> list;
        synchronized (this) {
            list = this.zzdgj;
        }
        return list;
    }

    public final String getPrice() {
        String zzfz;
        synchronized (this) {
            zzfz = zzfz(FirebaseAnalytics.Param.PRICE);
        }
        return zzfz;
    }

    public final double getStarRating() {
        double d;
        synchronized (this) {
            d = this.zzeuy;
        }
        return d;
    }

    public final String getStore() {
        String zzfz;
        synchronized (this) {
            zzfz = zzfz("store");
        }
        return zzfz;
    }

    public final zzzc getVideoController() {
        zzzc zzzcVar;
        synchronized (this) {
            zzzcVar = this.zzgef;
        }
        return zzzcVar;
    }

    public final void setImages(List<zzaed> list) {
        synchronized (this) {
            this.zzeuv = list;
        }
    }

    public final void setStarRating(double d) {
        synchronized (this) {
            this.zzeuy = d;
        }
    }

    public final void zza(zzaej zzaejVar) {
        synchronized (this) {
            this.zzdfv = zzaejVar;
        }
    }

    public final void zza(zzaer zzaerVar) {
        synchronized (this) {
            this.zzgem = zzaerVar;
        }
    }

    public final void zza(zzzu zzzuVar) {
        synchronized (this) {
            this.zzgeh = zzzuVar;
        }
    }

    public final void zza(String str, zzaed zzaedVar) {
        synchronized (this) {
            if (zzaedVar == null) {
                this.zzgep.remove(str);
            } else {
                this.zzgep.put(str, zzaedVar);
            }
        }
    }

    public final void zzac(View view) {
        synchronized (this) {
            this.zzgek = view;
        }
    }

    public final int zzanu() {
        int i;
        synchronized (this) {
            i = this.zzgee;
        }
        return i;
    }

    public final View zzanv() {
        View view;
        synchronized (this) {
            view = this.zzgeg;
        }
        return view;
    }

    public final zzaer zzanw() {
        List<?> list = this.zzeuv;
        if (list == null || list.size() == 0) {
            return null;
        }
        Object obj = this.zzeuv.get(0);
        if (!(obj instanceof IBinder)) {
            return null;
        }
        return zzaeq.zzo((IBinder) obj);
    }

    public final zzzu zzanx() {
        zzzu zzzuVar;
        synchronized (this) {
            zzzuVar = this.zzgeh;
        }
        return zzzuVar;
    }

    public final View zzany() {
        View view;
        synchronized (this) {
            view = this.zzgek;
        }
        return view;
    }

    public final zzbeb zzanz() {
        zzbeb zzbebVar;
        synchronized (this) {
            zzbebVar = this.zzgei;
        }
        return zzbebVar;
    }

    public final zzbeb zzaoa() {
        zzbeb zzbebVar;
        synchronized (this) {
            zzbebVar = this.zzgej;
        }
        return zzbebVar;
    }

    public final IObjectWrapper zzaob() {
        IObjectWrapper iObjectWrapper;
        synchronized (this) {
            iObjectWrapper = this.zzfvs;
        }
        return iObjectWrapper;
    }

    public final SimpleArrayMap<String, zzaed> zzaoc() {
        SimpleArrayMap<String, zzaed> simpleArrayMap;
        synchronized (this) {
            simpleArrayMap = this.zzgep;
        }
        return simpleArrayMap;
    }

    public final String zzaod() {
        String str;
        synchronized (this) {
            str = this.zzger;
        }
        return str;
    }

    public final SimpleArrayMap<String, String> zzaoe() {
        SimpleArrayMap<String, String> simpleArrayMap;
        synchronized (this) {
            simpleArrayMap = this.zzgeq;
        }
        return simpleArrayMap;
    }

    public final void zzat(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            this.zzfvs = iObjectWrapper;
        }
    }

    public final void zzb(zzaer zzaerVar) {
        synchronized (this) {
            this.zzgen = zzaerVar;
        }
    }

    public final void zzb(zzzc zzzcVar) {
        synchronized (this) {
            this.zzgef = zzzcVar;
        }
    }

    public final void zzdz(int i) {
        synchronized (this) {
            this.zzgee = i;
        }
    }

    public final void zzf(zzbeb zzbebVar) {
        synchronized (this) {
            this.zzgei = zzbebVar;
        }
    }

    public final void zzfx(String str) {
        synchronized (this) {
            this.zzgeo = str;
        }
    }

    public final void zzfy(String str) {
        synchronized (this) {
            this.zzger = str;
        }
    }

    public final void zzg(zzbeb zzbebVar) {
        synchronized (this) {
            this.zzgej = zzbebVar;
        }
    }

    public final void zzh(List<zzzu> list) {
        synchronized (this) {
            this.zzdgj = list;
        }
    }

    public final void zzn(String str, String str2) {
        synchronized (this) {
            if (str2 == null) {
                this.zzgeq.remove(str);
            } else {
                this.zzgeq.put(str, str2);
            }
        }
    }

    public final zzaer zztn() {
        zzaer zzaerVar;
        synchronized (this) {
            zzaerVar = this.zzgem;
        }
        return zzaerVar;
    }

    public final zzaej zzto() {
        zzaej zzaejVar;
        synchronized (this) {
            zzaejVar = this.zzdfv;
        }
        return zzaejVar;
    }

    public final IObjectWrapper zztp() {
        IObjectWrapper iObjectWrapper;
        synchronized (this) {
            iObjectWrapper = this.zzgel;
        }
        return iObjectWrapper;
    }

    public final zzaer zztq() {
        zzaer zzaerVar;
        synchronized (this) {
            zzaerVar = this.zzgen;
        }
        return zzaerVar;
    }
}
