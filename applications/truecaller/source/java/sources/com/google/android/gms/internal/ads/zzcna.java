package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.util.zzae;
import com.google.android.gms.ads.internal.util.zzbu;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.tenor.android.core.constant.StringConstant;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcna.class */
public final class zzcna extends FrameLayout implements zzcml {
    private final zzcml zza;
    private final zzciq zzb;
    private final AtomicBoolean zzc = new AtomicBoolean();

    public zzcna(zzcml zzcmlVar) {
        super(zzcmlVar.getContext());
        this.zza = zzcmlVar;
        this.zzb = new zzciq(zzcmlVar.zzM(), this, this);
        addView((View) zzcmlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final boolean canGoBack() {
        return this.zza.canGoBack();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void destroy() {
        IObjectWrapper zzV = zzV();
        if (zzV == null) {
            this.zza.destroy();
            return;
        }
        zzfla zzflaVar = zzs.zza;
        zzflaVar.post(new Runnable(zzV) { // from class: com.google.android.gms.internal.ads.zzcmy
            private final IObjectWrapper zza;

            {
                this.zza = zzV;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzt.zzr().zzg(this.zza);
            }
        });
        zzcml zzcmlVar = this.zza;
        zzcmlVar.getClass();
        zzflaVar.postDelayed(zzcmz.zza(zzcmlVar), ((Integer) zzbet.zzc().zzc(zzbjl.zzdv)).intValue());
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void goBack() {
        this.zza.goBack();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void loadData(String str, String str2, String str3) {
        this.zza.loadData(str, "text/html", str3);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.zza.loadDataWithBaseURL(str, str2, "text/html", StringConstant.UTF8, null);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void loadUrl(String str) {
        this.zza.loadUrl(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbcv
    public final void onAdClicked() {
        zzcml zzcmlVar = this.zza;
        if (zzcmlVar != null) {
            zzcmlVar.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void onPause() {
        this.zzb.zzd();
        this.zza.onPause();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void onResume() {
        this.zza.onResume();
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzcml
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.zza.setOnClickListener(onClickListener);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzcml
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.zza.setOnTouchListener(onTouchListener);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.zza.setWebChromeClient(webChromeClient);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void setWebViewClient(WebViewClient webViewClient) {
        this.zza.setWebViewClient(webViewClient);
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final void zzA() {
        this.zza.zzA();
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final void zzB(int i) {
        this.zza.zzB(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final void zzC(int i) {
        this.zza.zzC(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final int zzD() {
        return this.zza.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final int zzE() {
        return this.zza.zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcmc
    public final zzezz zzF() {
        return this.zza.zzF();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final WebView zzG() {
        return (WebView) this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcnw
    public final View zzH() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzI() {
        this.zza.zzI();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzJ(int i) {
        this.zza.zzJ(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzK() {
        this.zza.zzK();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzL() {
        zzcml zzcmlVar = this.zza;
        HashMap hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(zzt.zzh().zzd()));
        hashMap.put("app_volume", String.valueOf(zzt.zzh().zzb()));
        zzcne zzcneVar = (zzcne) zzcmlVar;
        hashMap.put("device_volume", String.valueOf(zzae.zze(zzcneVar.getContext())));
        zzcneVar.zze("volume", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final Context zzM() {
        return this.zza.zzM();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final zzl zzN() {
        return this.zza.zzN();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final zzl zzO() {
        return this.zza.zzO();
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcnt
    public final zzcob zzP() {
        return this.zza.zzP();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final String zzQ() {
        return this.zza.zzQ();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final zzcnz zzR() {
        return ((zzcne) this.zza).zzaS();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final WebViewClient zzS() {
        return this.zza.zzS();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final boolean zzT() {
        return this.zza.zzT();
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcnu
    public final zzaas zzU() {
        return this.zza.zzU();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final IObjectWrapper zzV() {
        return this.zza.zzV();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final boolean zzW() {
        return this.zza.zzW();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final boolean zzX() {
        return this.zza.zzX();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzY() {
        this.zzb.zze();
        this.zza.zzY();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final boolean zzZ() {
        return this.zza.zzZ();
    }

    @Override // com.google.android.gms.internal.ads.zzbsw
    public final void zza(String str) {
        ((zzcne) this.zza).zzaP(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final boolean zzaA() {
        return this.zzc.get();
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcni
    public final zzfac zzaB() {
        return this.zza.zzaB();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzaC(zzezz zzezzVar, zzfac zzfacVar) {
        this.zza.zzaC(zzezzVar, zzfacVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzaD(boolean z) {
        this.zza.zzaD(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final zzfsm<String> zzaE() {
        return this.zza.zzaE();
    }

    @Override // com.google.android.gms.internal.ads.zzcnr
    public final void zzaF(zzc zzcVar, boolean z) {
        this.zza.zzaF(zzcVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzcnr
    public final void zzaG(boolean z, int i, boolean z2) {
        this.zza.zzaG(z, i, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcnr
    public final void zzaH(boolean z, int i, String str, boolean z2) {
        this.zza.zzaH(z, i, str, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcnr
    public final void zzaI(boolean z, int i, String str, String str2, boolean z2) {
        this.zza.zzaI(z, i, str, str2, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcnr
    public final void zzaJ(zzbu zzbuVar, zzedq zzedqVar, zzdvi zzdviVar, zzffc zzffcVar, String str, String str2, int i) {
        this.zza.zzaJ(zzbuVar, zzedqVar, zzdviVar, zzffcVar, str, str2, i);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final boolean zzaa() {
        return this.zza.zzaa();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzab(String str, zzbpr<? super zzcml> zzbprVar) {
        this.zza.zzab(str, zzbprVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzac(String str, zzbpr<? super zzcml> zzbprVar) {
        this.zza.zzac(str, zzbprVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzad(String str, Predicate<zzbpr<? super zzcml>> predicate) {
        this.zza.zzad(str, predicate);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzae(zzl zzlVar) {
        this.zza.zzae(zzlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzaf(zzcob zzcobVar) {
        this.zza.zzaf(zzcobVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzag(boolean z) {
        this.zza.zzag(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzah() {
        this.zza.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzai(Context context) {
        this.zza.zzai(context);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzaj(boolean z) {
        this.zza.zzaj(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzak(IObjectWrapper iObjectWrapper) {
        this.zza.zzak(iObjectWrapper);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzal(int i) {
        this.zza.zzal(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzam(zzl zzlVar) {
        this.zza.zzam(zzlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzan(boolean z) {
        this.zza.zzan(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzao() {
        this.zza.zzao();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzap(zzblt zzbltVar) {
        this.zza.zzap(zzbltVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final zzblt zzaq() {
        return this.zza.zzaq();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzar(boolean z) {
        this.zza.zzar(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzas() {
        setBackgroundColor(0);
        this.zza.setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzat(String str, String str2, String str3) {
        this.zza.zzat(str, str2, null);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzau() {
        TextView textView = new TextView(getContext());
        zzt.zzc();
        textView.setText(zzs.zzC());
        textView.setTextSize(15.0f);
        textView.setTextColor(-1);
        textView.setPadding(5, 0, 5, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-12303292);
        gradientDrawable.setCornerRadius(8.0f);
        textView.setBackground(gradientDrawable);
        addView(textView, new FrameLayout.LayoutParams(-2, -2, 49));
        bringChildToFront(textView);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzav(boolean z) {
        this.zza.zzav(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzaw(zzblq zzblqVar) {
        this.zza.zzaw(zzblqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final void zzax(zzaxq zzaxqVar) {
        this.zza.zzax(zzaxqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final zzaxq zzay() {
        return this.zza.zzay();
    }

    @Override // com.google.android.gms.internal.ads.zzcml
    public final boolean zzaz(boolean z, int i) {
        if (!this.zzc.compareAndSet(false, true)) {
            return true;
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzax)).booleanValue()) {
            return false;
        }
        if (this.zza.getParent() instanceof ViewGroup) {
            ((ViewGroup) this.zza.getParent()).removeView((View) this.zza);
        }
        this.zza.zzaz(z, i);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdio
    public final void zzb() {
        zzcml zzcmlVar = this.zza;
        if (zzcmlVar != null) {
            zzcmlVar.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsw
    public final void zzbl(String str, String str2) {
        this.zza.zzbl("window.inspectorInfo", str2);
    }

    @Override // com.google.android.gms.ads.internal.zzl
    public final void zzbm() {
        this.zza.zzbm();
    }

    @Override // com.google.android.gms.ads.internal.zzl
    public final void zzbn() {
        this.zza.zzbn();
    }

    @Override // com.google.android.gms.internal.ads.zzawd
    public final void zzc(zzawc zzawcVar) {
        this.zza.zzc(zzawcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbsi
    public final void zzd(String str, JSONObject jSONObject) {
        this.zza.zzd(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbsi
    public final void zze(String str, Map<String, ?> map) {
        this.zza.zze(str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final zzciq zzf() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final void zzg(boolean z) {
        this.zza.zzg(false);
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcjb
    public final zzcnh zzh() {
        return this.zza.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final zzbjx zzi() {
        return this.zza.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcnn, com.google.android.gms.internal.ads.zzcjb
    public final Activity zzj() {
        return this.zza.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcjb
    public final zza zzk() {
        return this.zza.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final void zzl() {
        this.zza.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final String zzm() {
        return this.zza.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final String zzn() {
        return this.zza.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final void zzo(int i) {
        this.zza.zzo(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final int zzp() {
        return this.zza.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcjb
    public final zzbjy zzq() {
        return this.zza.zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzbsw
    public final void zzr(String str, JSONObject jSONObject) {
        ((zzcne) this.zza).zzbl(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final zzcla zzs(String str) {
        return this.zza.zzs(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcnv, com.google.android.gms.internal.ads.zzcjb
    public final zzcgz zzt() {
        return this.zza.zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcjb
    public final void zzu(String str, zzcla zzclaVar) {
        this.zza.zzu(str, zzclaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final void zzv(boolean z, long j) {
        this.zza.zzv(z, j);
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final void zzw(int i) {
        this.zzb.zzf(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcml, com.google.android.gms.internal.ads.zzcjb
    public final void zzx(zzcnh zzcnhVar) {
        this.zza.zzx(zzcnhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final int zzy() {
        return ((Boolean) zzbet.zzc().zzc(zzbjl.zzcp)).booleanValue() ? this.zza.getMeasuredHeight() : getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzcjb
    public final int zzz() {
        return ((Boolean) zzbet.zzc().zzc(zzbjl.zzcp)).booleanValue() ? this.zza.getMeasuredWidth() : getMeasuredWidth();
    }
}
