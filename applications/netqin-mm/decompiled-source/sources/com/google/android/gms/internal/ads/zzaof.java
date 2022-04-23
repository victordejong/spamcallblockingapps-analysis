package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.android.gms.ads.zzb;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
import p131c.p161d.p162a.C2455a;
import p131c.p161d.p162a.p163b.AbstractC2457b;
import p131c.p161d.p162a.p163b.AbstractC2460e;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaof.class */
public final class zzaof<NETWORK_EXTRAS extends AbstractC2460e, SERVER_PARAMETERS extends MediationServerParameters> extends zzanf {

    /* renamed from: a */
    public final AbstractC2457b<NETWORK_EXTRAS, SERVER_PARAMETERS> f24225a;

    /* renamed from: b */
    public final NETWORK_EXTRAS f24226b;

    public zzaof(AbstractC2457b<NETWORK_EXTRAS, SERVER_PARAMETERS> bVar, NETWORK_EXTRAS network_extras) {
        this.f24225a = bVar;
        this.f24226b = network_extras;
    }

    /* renamed from: c */
    public static boolean m16542c(zzvg zzvgVar) {
        if (zzvgVar.f29006f) {
            return true;
        }
        zzwm.m11170a();
        return zzbbg.m15912a();
    }

    /* renamed from: C */
    public final SERVER_PARAMETERS m16561C(String str) throws RemoteException {
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
            Class<SERVER_PARAMETERS> serverParametersType = this.f24225a.getServerParametersType();
            SERVER_PARAMETERS server_parameters = null;
            if (serverParametersType != null) {
                server_parameters = serverParametersType.newInstance();
                server_parameters.m18781a(hashMap);
            }
            return server_parameters;
        } catch (Throwable th) {
            zzbbq.m15855b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: C0 */
    public final zzafa mo16560C0() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: F1 */
    public final IObjectWrapper mo16559F1() throws RemoteException {
        AbstractC2457b<NETWORK_EXTRAS, SERVER_PARAMETERS> bVar = this.f24225a;
        if (!(bVar instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(bVar.getClass().getCanonicalName());
            zzbbq.m15852d(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        try {
            return ObjectWrapper.m17020a(((MediationBannerAdapter) bVar).getBannerView());
        } catch (Throwable th) {
            zzbbq.m15855b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: K */
    public final void mo16558K(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: R0 */
    public final boolean mo16557R0() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: V */
    public final zzapv mo16556V() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16555a(IObjectWrapper iObjectWrapper, zzais zzaisVar, List<zzaja> list) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16554a(IObjectWrapper iObjectWrapper, zzaur zzaurVar, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16553a(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, zzanh zzanhVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16552a(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, zzaur zzaurVar, String str2) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16551a(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, String str2, zzanh zzanhVar) throws RemoteException {
        AbstractC2457b<NETWORK_EXTRAS, SERVER_PARAMETERS> bVar = this.f24225a;
        if (!(bVar instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(bVar.getClass().getCanonicalName());
            zzbbq.m15852d(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        zzbbq.m15858a("Requesting interstitial ad from adapter.");
        try {
            ((MediationInterstitialAdapter) this.f24225a).requestInterstitialAd(new zzaoi(zzanhVar), (Activity) ObjectWrapper.m17021Q(iObjectWrapper), m16561C(str), zzaou.m16519a(zzvgVar, m16542c(zzvgVar)), this.f24226b);
        } catch (Throwable th) {
            zzbbq.m15855b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16550a(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, String str2, zzanh zzanhVar, zzadu zzaduVar, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16549a(IObjectWrapper iObjectWrapper, zzvn zzvnVar, zzvg zzvgVar, String str, zzanh zzanhVar) throws RemoteException {
        mo16548a(iObjectWrapper, zzvnVar, zzvgVar, str, null, zzanhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16548a(IObjectWrapper iObjectWrapper, zzvn zzvnVar, zzvg zzvgVar, String str, String str2, zzanh zzanhVar) throws RemoteException {
        C2455a aVar;
        AbstractC2457b<NETWORK_EXTRAS, SERVER_PARAMETERS> bVar = this.f24225a;
        if (!(bVar instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(bVar.getClass().getCanonicalName());
            zzbbq.m15852d(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        zzbbq.m15858a("Requesting banner ad from adapter.");
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.f24225a;
            zzaoi zzaoiVar = new zzaoi(zzanhVar);
            Activity activity = (Activity) ObjectWrapper.m17021Q(iObjectWrapper);
            SERVER_PARAMETERS C = m16561C(str);
            C2455a[] aVarArr = new C2455a[6];
            int i = 0;
            aVarArr[0] = C2455a.f9407b;
            aVarArr[1] = C2455a.f9408c;
            aVarArr[2] = C2455a.f9409d;
            aVarArr[3] = C2455a.f9410e;
            aVarArr[4] = C2455a.f9411f;
            aVarArr[5] = C2455a.f9412g;
            while (true) {
                if (i < 6) {
                    if (aVarArr[i].m29721b() == zzvnVar.f29039e && aVarArr[i].m29722a() == zzvnVar.f29036b) {
                        aVar = aVarArr[i];
                        break;
                    }
                    i++;
                } else {
                    aVar = new C2455a(zzb.m17890a(zzvnVar.f29039e, zzvnVar.f29036b, zzvnVar.f29035a));
                    break;
                }
            }
            mediationBannerAdapter.requestBannerAd(zzaoiVar, activity, C, aVar, zzaou.m16519a(zzvgVar, m16542c(zzvgVar)), this.f24226b);
        } catch (Throwable th) {
            zzbbq.m15855b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16547a(zzvg zzvgVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16546a(zzvg zzvgVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16545a(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: b */
    public final void mo16544b(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, zzanh zzanhVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: c */
    public final void mo16543c(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, zzanh zzanhVar) throws RemoteException {
        mo16551a(iObjectWrapper, zzvgVar, str, (String) null, zzanhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: c2 */
    public final zzanu mo16541c2() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: d0 */
    public final zzapv mo16540d0() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final void destroy() throws RemoteException {
        try {
            this.f24225a.destroy();
        } catch (Throwable th) {
            zzbbq.m15855b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final Bundle getInterstitialAdapterInfo() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final zzyo getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: h1 */
    public final Bundle mo16539h1() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: i1 */
    public final zzanp mo16538i1() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final boolean isInitialized() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final void pause() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: q1 */
    public final zzano mo16537q1() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final void resume() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final void showInterstitial() throws RemoteException {
        AbstractC2457b<NETWORK_EXTRAS, SERVER_PARAMETERS> bVar = this.f24225a;
        if (!(bVar instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(bVar.getClass().getCanonicalName());
            zzbbq.m15852d(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        zzbbq.m15858a("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter) this.f24225a).showInterstitial();
        } catch (Throwable th) {
            zzbbq.m15855b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final void showVideo() {
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: x */
    public final void mo16536x(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final Bundle zztv() {
        return new Bundle();
    }
}
