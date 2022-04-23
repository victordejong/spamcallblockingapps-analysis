package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.b;
import com.google.ads.mediation.e;
import com.google.android.gms.ads.zza;
import com.google.android.gms.dynamic.d;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ny.class */
public final class ny<NETWORK_EXTRAS extends e, SERVER_PARAMETERS extends MediationServerParameters> extends mq {

    /* renamed from: a  reason: collision with root package name */
    private final b<NETWORK_EXTRAS, SERVER_PARAMETERS> f28245a;

    /* renamed from: b  reason: collision with root package name */
    private final NETWORK_EXTRAS f28246b;

    public ny(b<NETWORK_EXTRAS, SERVER_PARAMETERS> bVar, NETWORK_EXTRAS network_extras) {
        this.f28245a = bVar;
        this.f28246b = network_extras;
    }

    private final SERVER_PARAMETERS a(String str) throws RemoteException {
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
            Class<SERVER_PARAMETERS> serverParametersType = this.f28245a.getServerParametersType();
            SERVER_PARAMETERS server_parameters = null;
            if (serverParametersType != null) {
                server_parameters = serverParametersType.newInstance();
                server_parameters.a(hashMap);
            }
            return server_parameters;
        } catch (Throwable th) {
            za.zzc("", th);
            throw new RemoteException();
        }
    }

    private static boolean a(zzvq zzvqVar) {
        if (zzvqVar.zzcid) {
            return true;
        }
        ekb.a();
        return yq.a();
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final com.google.android.gms.dynamic.b a() throws RemoteException {
        b<NETWORK_EXTRAS, SERVER_PARAMETERS> bVar = this.f28245a;
        if (!(bVar instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(bVar.getClass().getCanonicalName());
            za.zzez(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        try {
            return d.a(((MediationBannerAdapter) bVar).getBannerView());
        } catch (Throwable th) {
            za.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(com.google.android.gms.dynamic.b bVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(com.google.android.gms.dynamic.b bVar, io ioVar, List<zzajw> list) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(com.google.android.gms.dynamic.b bVar, uf ufVar, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(com.google.android.gms.dynamic.b bVar, zzvq zzvqVar, String str, ms msVar) throws RemoteException {
        a(bVar, zzvqVar, str, (String) null, msVar);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(com.google.android.gms.dynamic.b bVar, zzvq zzvqVar, String str, uf ufVar, String str2) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(com.google.android.gms.dynamic.b bVar, zzvq zzvqVar, String str, String str2, ms msVar) throws RemoteException {
        b<NETWORK_EXTRAS, SERVER_PARAMETERS> bVar2 = this.f28245a;
        if (!(bVar2 instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(bVar2.getClass().getCanonicalName());
            za.zzez(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        za.zzdz("Requesting interstitial ad from adapter.");
        try {
            ((MediationInterstitialAdapter) this.f28245a).requestInterstitialAd(new oa(msVar), (Activity) d.a(bVar), a(str), oe.a(zzvqVar, a(zzvqVar)), this.f28246b);
        } catch (Throwable th) {
            za.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(com.google.android.gms.dynamic.b bVar, zzvq zzvqVar, String str, String str2, ms msVar, zzaei zzaeiVar, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(com.google.android.gms.dynamic.b bVar, zzvt zzvtVar, zzvq zzvqVar, String str, ms msVar) throws RemoteException {
        a(bVar, zzvtVar, zzvqVar, str, null, msVar);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(com.google.android.gms.dynamic.b bVar, zzvt zzvtVar, zzvq zzvqVar, String str, String str2, ms msVar) throws RemoteException {
        com.google.ads.b bVar2;
        b<NETWORK_EXTRAS, SERVER_PARAMETERS> bVar3 = this.f28245a;
        if (!(bVar3 instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(bVar3.getClass().getCanonicalName());
            za.zzez(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        za.zzdz("Requesting banner ad from adapter.");
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.f28245a;
            oa oaVar = new oa(msVar);
            Activity activity = (Activity) d.a(bVar);
            SERVER_PARAMETERS a2 = a(str);
            com.google.ads.b[] bVarArr = new com.google.ads.b[6];
            int i = 0;
            bVarArr[0] = com.google.ads.b.f20262b;
            bVarArr[1] = com.google.ads.b.f20263c;
            bVarArr[2] = com.google.ads.b.f20264d;
            bVarArr[3] = com.google.ads.b.e;
            bVarArr[4] = com.google.ads.b.f;
            bVarArr[5] = com.google.ads.b.g;
            while (true) {
                if (i < 6) {
                    if (bVarArr[i].f20265a.getWidth() == zzvtVar.width && bVarArr[i].f20265a.getHeight() == zzvtVar.height) {
                        bVar2 = bVarArr[i];
                        break;
                    }
                    i++;
                } else {
                    bVar2 = new com.google.ads.b(zza.zza(zzvtVar.width, zzvtVar.height, zzvtVar.zzadd));
                    break;
                }
            }
            mediationBannerAdapter.requestBannerAd(oaVar, activity, a2, bVar2, oe.a(zzvqVar, a(zzvqVar)), this.f28246b);
        } catch (Throwable th) {
            za.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(zzvq zzvqVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(zzvq zzvqVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void b() throws RemoteException {
        b<NETWORK_EXTRAS, SERVER_PARAMETERS> bVar = this.f28245a;
        if (!(bVar instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(bVar.getClass().getCanonicalName());
            za.zzez(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        za.zzdz("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter) this.f28245a).showInterstitial();
        } catch (Throwable th) {
            za.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void b(com.google.android.gms.dynamic.b bVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void b(com.google.android.gms.dynamic.b bVar, zzvq zzvqVar, String str, ms msVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void b(com.google.android.gms.dynamic.b bVar, zzvt zzvtVar, zzvq zzvqVar, String str, String str2, ms msVar) {
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void c() throws RemoteException {
        try {
            this.f28245a.destroy();
        } catch (Throwable th) {
            za.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void c(com.google.android.gms.dynamic.b bVar) {
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void c(com.google.android.gms.dynamic.b bVar, zzvq zzvqVar, String str, ms msVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void d() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void e() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void f() {
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final boolean g() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final nb h() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final nc i() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final Bundle j() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final Bundle k() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final Bundle l() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final boolean m() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final eo n() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final emk o() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final nh p() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final zzaqr q() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final zzaqr r() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final mt s() {
        return null;
    }
}
