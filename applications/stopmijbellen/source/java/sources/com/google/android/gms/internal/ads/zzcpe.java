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
import com.google.android.gms.ads.internal.util.zzaf;
import com.google.android.gms.ads.internal.util.zzbv;
import com.google.android.gms.ads.internal.util.zzt;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpe.class */
public final class zzcpe extends FrameLayout implements zzcop {
    private final zzcop zza;
    private final zzckw zzb;
    private final AtomicBoolean zzc = new AtomicBoolean();

    public zzcpe(zzcop zzcopVar) {
        super(zzcopVar.getContext());
        this.zza = zzcopVar;
        this.zzb = new zzckw(zzcopVar.zzG(), this, this);
        addView((View) zzcopVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final boolean canGoBack() {
        return this.zza.canGoBack();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void destroy() {
        final IObjectWrapper zzS = zzS();
        if (zzS == null) {
            this.zza.destroy();
            return;
        }
        zzfpj zzfpjVar = zzt.zza;
        zzfpjVar.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcpd
            @Override // java.lang.Runnable
            public final void run() {
                com.google.android.gms.ads.internal.zzt.zzh().zze(IObjectWrapper.this);
            }
        });
        final zzcop zzcopVar = this.zza;
        Objects.requireNonNull(zzcopVar);
        zzfpjVar.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcpc
            @Override // java.lang.Runnable
            public final void run() {
                zzcop.this.destroy();
            }
        }, ((Integer) zzbgq.zzc().zzb(zzblj.zzdC)).intValue());
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void goBack() {
        this.zza.goBack();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void loadData(String str, String str2, String str3) {
        this.zza.loadData(str, "text/html", str3);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.zza.loadDataWithBaseURL(str, str2, "text/html", "UTF-8", null);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void loadUrl(String str) {
        this.zza.loadUrl(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbes
    public final void onAdClicked() {
        zzcop zzcopVar = this.zza;
        if (zzcopVar != null) {
            zzcopVar.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void onPause() {
        this.zzb.zze();
        this.zza.onPause();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void onResume() {
        this.zza.onResume();
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzcop
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.zza.setOnClickListener(onClickListener);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzcop
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.zza.setOnTouchListener(onTouchListener);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.zza.setWebChromeClient(webChromeClient);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void setWebViewClient(WebViewClient webViewClient) {
        this.zza.setWebViewClient(webViewClient);
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final void zzA(int i) {
        this.zza.zzA(i);
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final void zzB(boolean z) {
        this.zza.zzB(false);
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final void zzC(int i) {
        this.zza.zzC(i);
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final void zzD(int i) {
        this.zzb.zzf(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzclh
    public final void zzE(zzcpl zzcplVar) {
        this.zza.zzE(zzcplVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzcog
    public final zzfdn zzF() {
        return this.zza.zzF();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final Context zzG() {
        return this.zza.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzcpz
    public final View zzH() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final WebView zzI() {
        return (WebView) this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final WebViewClient zzJ() {
        return this.zza.zzJ();
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzcpx
    public final zzalt zzK() {
        return this.zza.zzK();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final zzazn zzL() {
        return this.zza.zzL();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final zzbnv zzM() {
        return this.zza.zzM();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final zzl zzN() {
        return this.zza.zzN();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final zzl zzO() {
        return this.zza.zzO();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final zzcqc zzP() {
        return ((zzcpi) this.zza).zzaL();
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzcpw
    public final zzcqe zzQ() {
        return this.zza.zzQ();
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzcpm
    public final zzfdq zzR() {
        return this.zza.zzR();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final IObjectWrapper zzS() {
        return this.zza.zzS();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final zzfxa<String> zzT() {
        return this.zza.zzT();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final String zzU() {
        return this.zza.zzU();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzV(zzfdn zzfdnVar, zzfdq zzfdqVar) {
        this.zza.zzV(zzfdnVar, zzfdqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzW() {
        this.zzb.zzd();
        this.zza.zzW();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzX() {
        this.zza.zzX();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzY(int i) {
        this.zza.zzY(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzZ() {
        this.zza.zzZ();
    }

    @Override // com.google.android.gms.internal.ads.zzbux
    public final void zza(String str) {
        ((zzcpi) this.zza).zzaQ(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final boolean zzaA(boolean z, int i) {
        if (!this.zzc.compareAndSet(false, true)) {
            return true;
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzaA)).booleanValue()) {
            return false;
        }
        if (this.zza.getParent() instanceof ViewGroup) {
            ((ViewGroup) this.zza.getParent()).removeView((View) this.zza);
        }
        this.zza.zzaA(z, i);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final boolean zzaB() {
        return this.zza.zzaB();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final boolean zzaC() {
        return this.zza.zzaC();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final boolean zzaD() {
        return this.zzc.get();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final boolean zzaE() {
        return this.zza.zzaE();
    }

    @Override // com.google.android.gms.internal.ads.zzcpu
    public final void zzaF(zzc zzcVar, boolean z) {
        this.zza.zzaF(zzcVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzcpu
    public final void zzaG(zzbv zzbvVar, zzehh zzehhVar, zzdyz zzdyzVar, zzfio zzfioVar, String str, String str2, int i) {
        this.zza.zzaG(zzbvVar, zzehhVar, zzdyzVar, zzfioVar, str, str2, i);
    }

    @Override // com.google.android.gms.internal.ads.zzcpu
    public final void zzaH(boolean z, int i, boolean z2) {
        this.zza.zzaH(z, i, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcpu
    public final void zzaI(boolean z, int i, String str, boolean z2) {
        this.zza.zzaI(z, i, str, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcpu
    public final void zzaJ(boolean z, int i, String str, String str2, boolean z2) {
        this.zza.zzaJ(z, i, str, str2, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzaa() {
        zzcop zzcopVar = this.zza;
        HashMap hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(com.google.android.gms.ads.internal.zzt.zzr().zze()));
        hashMap.put("app_volume", String.valueOf(com.google.android.gms.ads.internal.zzt.zzr().zza()));
        zzcpi zzcpiVar = (zzcpi) zzcopVar;
        hashMap.put("device_volume", String.valueOf(zzaf.zzb(zzcpiVar.getContext())));
        zzcpiVar.zzd("volume", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzab(boolean z) {
        this.zza.zzab(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzac() {
        this.zza.zzac();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzad(String str, String str2, String str3) {
        this.zza.zzad(str, str2, null);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzae() {
        this.zza.zzae();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzaf(String str, zzbrt<? super zzcop> zzbrtVar) {
        this.zza.zzaf(str, zzbrtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzag() {
        TextView textView = new TextView(getContext());
        com.google.android.gms.ads.internal.zzt.zzp();
        textView.setText(zzt.zzD());
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

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzah(zzl zzlVar) {
        this.zza.zzah(zzlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzai(zzcqe zzcqeVar) {
        this.zza.zzai(zzcqeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzaj(zzazn zzaznVar) {
        this.zza.zzaj(zzaznVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzak(boolean z) {
        this.zza.zzak(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzal() {
        setBackgroundColor(0);
        this.zza.setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzam(Context context) {
        this.zza.zzam(context);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzan(boolean z) {
        this.zza.zzan(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzao(zzbnt zzbntVar) {
        this.zza.zzao(zzbntVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzap(boolean z) {
        this.zza.zzap(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzaq(zzbnv zzbnvVar) {
        this.zza.zzaq(zzbnvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzar(IObjectWrapper iObjectWrapper) {
        this.zza.zzar(iObjectWrapper);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzas(int i) {
        this.zza.zzas(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzat(zzl zzlVar) {
        this.zza.zzat(zzlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzau(boolean z) {
        this.zza.zzau(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzav(boolean z) {
        this.zza.zzav(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzaw(String str, zzbrt<? super zzcop> zzbrtVar) {
        this.zza.zzaw(str, zzbrtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzax(String str, Predicate<zzbrt<? super zzcop>> predicate) {
        this.zza.zzax(str, predicate);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final boolean zzay() {
        return this.zza.zzay();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final boolean zzaz() {
        return this.zza.zzaz();
    }

    @Override // com.google.android.gms.internal.ads.zzbux
    public final void zzb(String str, String str2) {
        this.zza.zzb("window.inspectorInfo", str2);
    }

    @Override // com.google.android.gms.ads.internal.zzl
    public final void zzbv() {
        this.zza.zzbv();
    }

    @Override // com.google.android.gms.ads.internal.zzl
    public final void zzbw() {
        this.zza.zzbw();
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final zzckw zzbx() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void zzc(zzaxz zzaxzVar) {
        this.zza.zzc(zzaxzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbuk
    public final void zzd(String str, Map<String, ?> map) {
        this.zza.zzd(str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzbuk
    public final void zze(String str, JSONObject jSONObject) {
        this.zza.zze(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final int zzf() {
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final int zzg() {
        return this.zza.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final int zzh() {
        return this.zza.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final int zzi() {
        return ((Boolean) zzbgq.zzc().zzb(zzblj.zzcw)).booleanValue() ? this.zza.getMeasuredHeight() : getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final int zzj() {
        return ((Boolean) zzbgq.zzc().zzb(zzblj.zzcw)).booleanValue() ? this.zza.getMeasuredWidth() : getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzcpq, com.google.android.gms.internal.ads.zzclh
    public final Activity zzk() {
        return this.zza.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzbux
    public final void zzl(String str, JSONObject jSONObject) {
        ((zzcpi) this.zza).zzb(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzclh
    public final zza zzm() {
        return this.zza.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final zzblv zzn() {
        return this.zza.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzclh
    public final zzblw zzo() {
        return this.zza.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzcpy, com.google.android.gms.internal.ads.zzclh
    public final zzcjf zzp() {
        return this.zza.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzdmd
    public final void zzq() {
        zzcop zzcopVar = this.zza;
        if (zzcopVar != null) {
            zzcopVar.zzq();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final zzcnf zzr(String str) {
        return this.zza.zzr(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzclh
    public final zzcpl zzs() {
        return this.zza.zzs();
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final String zzt() {
        return this.zza.zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final String zzu() {
        return this.zza.zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzclh
    public final void zzv(String str, zzcnf zzcnfVar) {
        this.zza.zzv(str, zzcnfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final void zzw() {
        this.zza.zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final void zzx(boolean z, long j) {
        this.zza.zzx(z, j);
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final void zzy() {
        this.zza.zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final void zzz(int i) {
        this.zza.zzz(i);
    }
}
