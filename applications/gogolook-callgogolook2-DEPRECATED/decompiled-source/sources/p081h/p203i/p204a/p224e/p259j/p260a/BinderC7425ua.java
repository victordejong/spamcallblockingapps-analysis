package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.ads.mediation.OnContextChangedListener;
import com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.mediation.zzb;
import com.google.android.gms.ads.reward.mediation.InitializableMediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.zzc;
import com.google.android.gms.internal.ads.zzaux;
import com.google.android.gms.internal.ads.zzauy;
import com.google.android.gms.internal.ads.zzjk;
import com.google.android.gms.internal.ads.zzjo;
import com.google.android.gms.internal.ads.zzpy;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.ua */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/ua.class */
public final class BinderC7425ua extends AbstractBinderC7278ia {

    /* renamed from: a */
    public final MediationAdapter f17485a;

    /* renamed from: b */
    public C7437va f17486b;

    public BinderC7425ua(@NonNull MediationAdapter mediationAdapter) {
        this.f17485a = mediationAdapter;
    }

    /* renamed from: c */
    public static boolean m20643c(zzjk zzjkVar) {
        if (zzjkVar.f6755f) {
            return true;
        }
        C7430v3.m20640a();
        return C7343o1.m20780a();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: B0 */
    public final AbstractC7328ma mo20445B0() {
        NativeAdMapper a = this.f17486b.m20630a();
        if (a instanceof NativeAppInstallAdMapper) {
            return new BinderC7449wa((NativeAppInstallAdMapper) a);
        }
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: F0 */
    public final AbstractC7106b mo20444F0() throws RemoteException {
        MediationAdapter mediationAdapter = this.f17485a;
        if (!(mediationAdapter instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            C7452x1.m20568d(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        try {
            return BinderC7110d.m21058a(((MediationBannerAdapter) mediationAdapter).getBannerView());
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: W */
    public final AbstractC7377qa mo20443W() {
        UnifiedNativeAdMapper b = this.f17486b.m20628b();
        if (b != null) {
            return new BinderC7215e(b);
        }
        return null;
    }

    /* renamed from: a */
    public final Bundle m20644a(String str, zzjk zzjkVar, String str2) throws RemoteException {
        String valueOf = String.valueOf(str);
        C7452x1.m20568d(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle2 = new Bundle();
                Iterator<String> keys = jSONObject.keys();
                while (true) {
                    bundle = bundle2;
                    if (!keys.hasNext()) {
                        break;
                    }
                    String next = keys.next();
                    bundle2.putString(next, jSONObject.getString(next));
                }
            }
            if (this.f17485a instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (zzjkVar != null) {
                    bundle.putInt("tagForChildDirectedTreatment", zzjkVar.f6756g);
                }
            }
            return bundle;
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: a */
    public final void mo20442a(zzjk zzjkVar, String str) throws RemoteException {
        mo20441a(zzjkVar, str, (String) null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: a */
    public final void mo20441a(zzjk zzjkVar, String str, String str2) throws RemoteException {
        MediationAdapter mediationAdapter = this.f17485a;
        if (!(mediationAdapter instanceof MediationRewardedVideoAdAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            C7452x1.m20568d(valueOf.length() != 0 ? "Not a MediationRewardedVideoAdAdapter: ".concat(valueOf) : new String("Not a MediationRewardedVideoAdAdapter: "));
            throw new RemoteException();
        }
        C7452x1.m20572b("Requesting rewarded video ad from adapter.");
        try {
            MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.f17485a;
            Bundle bundle = null;
            C7413ta taVar = new C7413ta(zzjkVar.f6751b == -1 ? null : new Date(zzjkVar.f6751b), zzjkVar.f6753d, zzjkVar.f6754e != null ? new HashSet(zzjkVar.f6754e) : null, zzjkVar.f6760k, m20643c(zzjkVar), zzjkVar.f6756g, zzjkVar.f6767r);
            if (zzjkVar.f6762m != null) {
                bundle = zzjkVar.f6762m.getBundle(mediationRewardedVideoAdAdapter.getClass().getName());
            }
            mediationRewardedVideoAdAdapter.loadAd(taVar, m20644a(str, zzjkVar, str2), bundle);
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: a */
    public final void mo20440a(AbstractC7106b bVar, zzjk zzjkVar, String str, AbstractC7256h1 h1Var, String str2) throws RemoteException {
        C7413ta taVar;
        Bundle bundle;
        MediationAdapter mediationAdapter = this.f17485a;
        if (!(mediationAdapter instanceof MediationRewardedVideoAdAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            C7452x1.m20568d(valueOf.length() != 0 ? "Not a MediationRewardedVideoAdAdapter: ".concat(valueOf) : new String("Not a MediationRewardedVideoAdAdapter: "));
            throw new RemoteException();
        }
        C7452x1.m20572b("Initialize rewarded video adapter.");
        try {
            MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.f17485a;
            Bundle a = m20644a(str2, zzjkVar, (String) null);
            if (zzjkVar != null) {
                taVar = new C7413ta(zzjkVar.f6751b == -1 ? null : new Date(zzjkVar.f6751b), zzjkVar.f6753d, zzjkVar.f6754e != null ? new HashSet(zzjkVar.f6754e) : null, zzjkVar.f6760k, m20643c(zzjkVar), zzjkVar.f6756g, zzjkVar.f6767r);
                bundle = zzjkVar.f6762m != null ? zzjkVar.f6762m.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null;
            } else {
                taVar = null;
                bundle = null;
            }
            mediationRewardedVideoAdAdapter.initialize((Context) BinderC7110d.m21059A(bVar), taVar, str, new C7295k1(h1Var), a, bundle);
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: a */
    public final void mo20439a(AbstractC7106b bVar, zzjk zzjkVar, String str, AbstractC7291ja jaVar) throws RemoteException {
        mo20438a(bVar, zzjkVar, str, (String) null, jaVar);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: a */
    public final void mo20438a(AbstractC7106b bVar, zzjk zzjkVar, String str, String str2, AbstractC7291ja jaVar) throws RemoteException {
        MediationAdapter mediationAdapter = this.f17485a;
        if (!(mediationAdapter instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            C7452x1.m20568d(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        C7452x1.m20572b("Requesting interstitial ad from adapter.");
        try {
            MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) this.f17485a;
            Bundle bundle = null;
            C7413ta taVar = new C7413ta(zzjkVar.f6751b == -1 ? null : new Date(zzjkVar.f6751b), zzjkVar.f6753d, zzjkVar.f6754e != null ? new HashSet(zzjkVar.f6754e) : null, zzjkVar.f6760k, m20643c(zzjkVar), zzjkVar.f6756g, zzjkVar.f6767r);
            if (zzjkVar.f6762m != null) {
                bundle = zzjkVar.f6762m.getBundle(mediationInterstitialAdapter.getClass().getName());
            }
            mediationInterstitialAdapter.requestInterstitialAd((Context) BinderC7110d.m21059A(bVar), new C7437va(jaVar), m20644a(str, zzjkVar, str2), taVar, bundle);
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: a */
    public final void mo20437a(AbstractC7106b bVar, zzjk zzjkVar, String str, String str2, AbstractC7291ja jaVar, zzpy zzpyVar, List<String> list) throws RemoteException {
        MediationAdapter mediationAdapter = this.f17485a;
        if (!(mediationAdapter instanceof MediationNativeAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            C7452x1.m20568d(valueOf.length() != 0 ? "Not a MediationNativeAdapter: ".concat(valueOf) : new String("Not a MediationNativeAdapter: "));
            throw new RemoteException();
        }
        try {
            MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) mediationAdapter;
            Bundle bundle = null;
            C7473ya yaVar = new C7473ya(zzjkVar.f6751b == -1 ? null : new Date(zzjkVar.f6751b), zzjkVar.f6753d, zzjkVar.f6754e != null ? new HashSet(zzjkVar.f6754e) : null, zzjkVar.f6760k, m20643c(zzjkVar), zzjkVar.f6756g, zzpyVar, list, zzjkVar.f6767r);
            if (zzjkVar.f6762m != null) {
                bundle = zzjkVar.f6762m.getBundle(mediationNativeAdapter.getClass().getName());
            }
            this.f17486b = new C7437va(jaVar);
            mediationNativeAdapter.requestNativeAd((Context) BinderC7110d.m21059A(bVar), this.f17486b, m20644a(str, zzjkVar, str2), yaVar, bundle);
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: a */
    public final void mo20436a(AbstractC7106b bVar, zzjo zzjoVar, zzjk zzjkVar, String str, AbstractC7291ja jaVar) throws RemoteException {
        mo20435a(bVar, zzjoVar, zzjkVar, str, null, jaVar);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: a */
    public final void mo20435a(AbstractC7106b bVar, zzjo zzjoVar, zzjk zzjkVar, String str, String str2, AbstractC7291ja jaVar) throws RemoteException {
        MediationAdapter mediationAdapter = this.f17485a;
        if (!(mediationAdapter instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            C7452x1.m20568d(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        C7452x1.m20572b("Requesting banner ad from adapter.");
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.f17485a;
            Bundle bundle = null;
            C7413ta taVar = new C7413ta(zzjkVar.f6751b == -1 ? null : new Date(zzjkVar.f6751b), zzjkVar.f6753d, zzjkVar.f6754e != null ? new HashSet(zzjkVar.f6754e) : null, zzjkVar.f6760k, m20643c(zzjkVar), zzjkVar.f6756g, zzjkVar.f6767r);
            if (zzjkVar.f6762m != null) {
                bundle = zzjkVar.f6762m.getBundle(mediationBannerAdapter.getClass().getName());
            }
            mediationBannerAdapter.requestBannerAd((Context) BinderC7110d.m21059A(bVar), new C7437va(jaVar), m20644a(str, zzjkVar, str2), zzc.zza(zzjoVar.f6775e, zzjoVar.f6772b, zzjoVar.f6771a), taVar, bundle);
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: a */
    public final void mo20434a(AbstractC7106b bVar, AbstractC7256h1 h1Var, List<String> list) throws RemoteException {
        MediationAdapter mediationAdapter = this.f17485a;
        if (!(mediationAdapter instanceof InitializableMediationRewardedVideoAdAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            C7452x1.m20568d(valueOf.length() != 0 ? "Not an InitializableMediationRewardedVideoAdAdapter: ".concat(valueOf) : new String("Not an InitializableMediationRewardedVideoAdAdapter: "));
            throw new RemoteException();
        }
        C7452x1.m20572b("Initialize rewarded video adapter.");
        try {
            InitializableMediationRewardedVideoAdAdapter initializableMediationRewardedVideoAdAdapter = (InitializableMediationRewardedVideoAdAdapter) this.f17485a;
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                arrayList.add(m20644a(str, (zzjk) null, (String) null));
            }
            initializableMediationRewardedVideoAdAdapter.initialize((Context) BinderC7110d.m21059A(bVar), new C7295k1(h1Var), arrayList);
        } catch (Throwable th) {
            C7452x1.m20569c("Could not initialize rewarded video adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: b0 */
    public final AbstractC7326m8 mo20432b0() {
        NativeCustomTemplateAd c = this.f17486b.m20627c();
        if (c instanceof C7350o8) {
            return ((C7350o8) c).m20740a();
        }
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    public final void destroy() throws RemoteException {
        try {
            this.f17485a.onDestroy();
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    public final Bundle getInterstitialAdapterInfo() {
        MediationAdapter mediationAdapter = this.f17485a;
        if (mediationAdapter instanceof zzauy) {
            return ((zzauy) mediationAdapter).getInterstitialAdapterInfo();
        }
        String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
        C7452x1.m20568d(valueOf.length() != 0 ? "Not a v2 MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a v2 MediationInterstitialAdapter: "));
        return new Bundle();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    public final AbstractC7359p5 getVideoController() {
        MediationAdapter mediationAdapter = this.f17485a;
        if (!(mediationAdapter instanceof zzb)) {
            return null;
        }
        try {
            return ((zzb) mediationAdapter).getVideoController();
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            return null;
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: i0 */
    public final boolean mo20430i0() {
        return this.f17485a instanceof InitializableMediationRewardedVideoAdAdapter;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    public final boolean isInitialized() throws RemoteException {
        MediationAdapter mediationAdapter = this.f17485a;
        if (!(mediationAdapter instanceof MediationRewardedVideoAdAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            C7452x1.m20568d(valueOf.length() != 0 ? "Not a MediationRewardedVideoAdAdapter: ".concat(valueOf) : new String("Not a MediationRewardedVideoAdAdapter: "));
            throw new RemoteException();
        }
        C7452x1.m20572b("Check if adapter is initialized.");
        try {
            return ((MediationRewardedVideoAdAdapter) this.f17485a).isInitialized();
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: j0 */
    public final Bundle mo20429j0() {
        return new Bundle();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    public final void pause() throws RemoteException {
        try {
            this.f17485a.onPause();
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    public final void resume() throws RemoteException {
        try {
            this.f17485a.onResume();
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    public final void setImmersiveMode(boolean z) throws RemoteException {
        MediationAdapter mediationAdapter = this.f17485a;
        if (!(mediationAdapter instanceof OnImmersiveModeUpdatedListener)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            C7452x1.m20570c(valueOf.length() != 0 ? "Not an OnImmersiveModeUpdatedListener: ".concat(valueOf) : new String("Not an OnImmersiveModeUpdatedListener: "));
            return;
        }
        try {
            ((OnImmersiveModeUpdatedListener) mediationAdapter).onImmersiveModeUpdated(z);
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    public final void showInterstitial() throws RemoteException {
        MediationAdapter mediationAdapter = this.f17485a;
        if (!(mediationAdapter instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            C7452x1.m20568d(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        C7452x1.m20572b("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter) this.f17485a).showInterstitial();
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    public final void showVideo() throws RemoteException {
        MediationAdapter mediationAdapter = this.f17485a;
        if (!(mediationAdapter instanceof MediationRewardedVideoAdAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            C7452x1.m20568d(valueOf.length() != 0 ? "Not a MediationRewardedVideoAdAdapter: ".concat(valueOf) : new String("Not a MediationRewardedVideoAdAdapter: "));
            throw new RemoteException();
        }
        C7452x1.m20572b("Show rewarded video ad from adapter.");
        try {
            ((MediationRewardedVideoAdAdapter) this.f17485a).showVideo();
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: w0 */
    public final AbstractC7352oa mo20428w0() {
        NativeAdMapper a = this.f17486b.m20630a();
        if (a instanceof NativeContentAdMapper) {
            return new BinderC7461xa((NativeContentAdMapper) a);
        }
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: z */
    public final void mo20427z(AbstractC7106b bVar) throws RemoteException {
        Context context = (Context) BinderC7110d.m21059A(bVar);
        MediationAdapter mediationAdapter = this.f17485a;
        if (mediationAdapter instanceof OnContextChangedListener) {
            ((OnContextChangedListener) mediationAdapter).onContextChanged(context);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    public final Bundle zzoa() {
        MediationAdapter mediationAdapter = this.f17485a;
        if (mediationAdapter instanceof zzaux) {
            return ((zzaux) mediationAdapter).zzoa();
        }
        String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
        C7452x1.m20568d(valueOf.length() != 0 ? "Not a v2 MediationBannerAdapter: ".concat(valueOf) : new String("Not a v2 MediationBannerAdapter: "));
        return new Bundle();
    }
}
