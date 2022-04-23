package p081h.p203i.p204a.p224e.p259j.p260a;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.zzc;
import com.google.android.gms.internal.ads.zzjk;
import com.google.android.gms.internal.ads.zzjo;
import com.google.android.gms.internal.ads.zzpy;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.za */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/za.class */
public final class BinderC7485za<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> extends AbstractBinderC7278ia {

    /* renamed from: a */
    public final MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> f17581a;

    /* renamed from: b */
    public final NETWORK_EXTRAS f17582b;

    public BinderC7485za(MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter, NETWORK_EXTRAS network_extras) {
        this.f17581a = mediationAdapter;
        this.f17582b = network_extras;
    }

    /* renamed from: c */
    public static boolean m20431c(zzjk zzjkVar) {
        if (zzjkVar.f6755f) {
            return true;
        }
        C7430v3.m20640a();
        return C7343o1.m20780a();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: B0 */
    public final AbstractC7328ma mo20445B0() {
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: F0 */
    public final AbstractC7106b mo20444F0() throws RemoteException {
        MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter = this.f17581a;
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
        return null;
    }

    /* renamed from: a */
    public final SERVER_PARAMETERS m20433a(String str, int i, String str2) throws RemoteException {
        HashMap hashMap;
        try {
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                HashMap hashMap2 = new HashMap(jSONObject.length());
                Iterator<String> keys = jSONObject.keys();
                while (true) {
                    hashMap = hashMap2;
                    if (!keys.hasNext()) {
                        break;
                    }
                    String next = keys.next();
                    hashMap2.put(next, jSONObject.getString(next));
                }
            } else {
                hashMap = new HashMap(0);
            }
            Class<SERVER_PARAMETERS> serverParametersType = this.f17581a.getServerParametersType();
            SERVER_PARAMETERS server_parameters = null;
            if (serverParametersType != null) {
                server_parameters = serverParametersType.newInstance();
                server_parameters.load(hashMap);
            }
            return server_parameters;
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: a */
    public final void mo20442a(zzjk zzjkVar, String str) {
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: a */
    public final void mo20441a(zzjk zzjkVar, String str, String str2) {
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: a */
    public final void mo20440a(AbstractC7106b bVar, zzjk zzjkVar, String str, AbstractC7256h1 h1Var, String str2) throws RemoteException {
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: a */
    public final void mo20439a(AbstractC7106b bVar, zzjk zzjkVar, String str, AbstractC7291ja jaVar) throws RemoteException {
        mo20438a(bVar, zzjkVar, str, (String) null, jaVar);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: a */
    public final void mo20438a(AbstractC7106b bVar, zzjk zzjkVar, String str, String str2, AbstractC7291ja jaVar) throws RemoteException {
        MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter = this.f17581a;
        if (!(mediationAdapter instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            C7452x1.m20568d(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        C7452x1.m20572b("Requesting interstitial ad from adapter.");
        try {
            ((MediationInterstitialAdapter) this.f17581a).requestInterstitialAd(new C7175ab(jaVar), (Activity) BinderC7110d.m21059A(bVar), m20433a(str, zzjkVar.f6756g, str2), C7189c.m20972a(zzjkVar, m20431c(zzjkVar)), this.f17582b);
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: a */
    public final void mo20437a(AbstractC7106b bVar, zzjk zzjkVar, String str, String str2, AbstractC7291ja jaVar, zzpy zzpyVar, List<String> list) {
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: a */
    public final void mo20436a(AbstractC7106b bVar, zzjo zzjoVar, zzjk zzjkVar, String str, AbstractC7291ja jaVar) throws RemoteException {
        mo20435a(bVar, zzjoVar, zzjkVar, str, null, jaVar);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: a */
    public final void mo20435a(AbstractC7106b bVar, zzjo zzjoVar, zzjk zzjkVar, String str, String str2, AbstractC7291ja jaVar) throws RemoteException {
        AdSize adSize;
        MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter = this.f17581a;
        if (!(mediationAdapter instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            C7452x1.m20568d(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        C7452x1.m20572b("Requesting banner ad from adapter.");
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.f17581a;
            C7175ab abVar = new C7175ab(jaVar);
            Activity activity = (Activity) BinderC7110d.m21059A(bVar);
            SERVER_PARAMETERS a = m20433a(str, zzjkVar.f6756g, str2);
            AdSize[] adSizeArr = new AdSize[6];
            int i = 0;
            adSizeArr[0] = AdSize.SMART_BANNER;
            adSizeArr[1] = AdSize.BANNER;
            adSizeArr[2] = AdSize.IAB_MRECT;
            adSizeArr[3] = AdSize.IAB_BANNER;
            adSizeArr[4] = AdSize.IAB_LEADERBOARD;
            adSizeArr[5] = AdSize.IAB_WIDE_SKYSCRAPER;
            while (true) {
                if (i < 6) {
                    if (adSizeArr[i].getWidth() == zzjoVar.f6775e && adSizeArr[i].getHeight() == zzjoVar.f6772b) {
                        adSize = adSizeArr[i];
                        break;
                    }
                    i++;
                } else {
                    adSize = new AdSize(zzc.zza(zzjoVar.f6775e, zzjoVar.f6772b, zzjoVar.f6771a));
                    break;
                }
            }
            mediationBannerAdapter.requestBannerAd(abVar, activity, a, adSize, C7189c.m20972a(zzjkVar, m20431c(zzjkVar)), this.f17582b);
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: a */
    public final void mo20434a(AbstractC7106b bVar, AbstractC7256h1 h1Var, List<String> list) {
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: b0 */
    public final AbstractC7326m8 mo20432b0() {
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    public final void destroy() throws RemoteException {
        try {
            this.f17581a.destroy();
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    public final Bundle getInterstitialAdapterInfo() {
        return new Bundle();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    public final AbstractC7359p5 getVideoController() {
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: i0 */
    public final boolean mo20430i0() {
        return false;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    public final boolean isInitialized() {
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: j0 */
    public final Bundle mo20429j0() {
        return new Bundle();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    public final void pause() throws RemoteException {
        throw new RemoteException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    public final void resume() throws RemoteException {
        throw new RemoteException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    public final void setImmersiveMode(boolean z) {
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    public final void showInterstitial() throws RemoteException {
        MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter = this.f17581a;
        if (!(mediationAdapter instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            C7452x1.m20568d(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        C7452x1.m20572b("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter) this.f17581a).showInterstitial();
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    public final void showVideo() {
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: w0 */
    public final AbstractC7352oa mo20428w0() {
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    /* renamed from: z */
    public final void mo20427z(AbstractC7106b bVar) throws RemoteException {
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7265ha
    public final Bundle zzoa() {
        return new Bundle();
    }
}
