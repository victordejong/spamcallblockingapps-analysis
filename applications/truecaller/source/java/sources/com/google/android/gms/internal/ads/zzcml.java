package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzl;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
@VisibleForTesting
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcml.class */
public interface zzcml extends zzbcv, zzdio, zzcmc, zzbsi, zzcni, zzcnn, zzbsw, zzawd, zzcnr, zzl, zzcnu, zzcnv, zzcjb, zzcnw {
    boolean canGoBack();

    void destroy();

    @Override // com.google.android.gms.internal.ads.zzcnn, com.google.android.gms.internal.ads.zzcjb
    Context getContext();

    int getHeight();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    int getMeasuredHeight();

    int getMeasuredWidth();

    ViewParent getParent();

    int getWidth();

    void goBack();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    void measure(int i, int i2);

    void onPause();

    void onResume();

    @Override // com.google.android.gms.internal.ads.zzcjb
    void setBackgroundColor(int i);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    @Override // com.google.android.gms.internal.ads.zzcmc
    zzezz zzF();

    WebView zzG();

    @Override // com.google.android.gms.internal.ads.zzcnw
    View zzH();

    void zzI();

    void zzJ(int i);

    void zzK();

    void zzL();

    Context zzM();

    com.google.android.gms.ads.internal.overlay.zzl zzN();

    com.google.android.gms.ads.internal.overlay.zzl zzO();

    @Override // com.google.android.gms.internal.ads.zzcnt
    zzcob zzP();

    String zzQ();

    zzcnz zzR();

    WebViewClient zzS();

    boolean zzT();

    @Override // com.google.android.gms.internal.ads.zzcnu
    zzaas zzU();

    IObjectWrapper zzV();

    boolean zzW();

    boolean zzX();

    void zzY();

    boolean zzZ();

    boolean zzaA();

    @Override // com.google.android.gms.internal.ads.zzcni
    zzfac zzaB();

    void zzaC(zzezz zzezzVar, zzfac zzfacVar);

    void zzaD(boolean z);

    zzfsm<String> zzaE();

    boolean zzaa();

    void zzab(String str, zzbpr<? super zzcml> zzbprVar);

    void zzac(String str, zzbpr<? super zzcml> zzbprVar);

    void zzad(String str, Predicate<zzbpr<? super zzcml>> predicate);

    void zzae(com.google.android.gms.ads.internal.overlay.zzl zzlVar);

    void zzaf(zzcob zzcobVar);

    void zzag(boolean z);

    void zzah();

    void zzai(Context context);

    void zzaj(boolean z);

    void zzak(IObjectWrapper iObjectWrapper);

    void zzal(int i);

    void zzam(com.google.android.gms.ads.internal.overlay.zzl zzlVar);

    void zzan(boolean z);

    void zzao();

    void zzap(zzblt zzbltVar);

    zzblt zzaq();

    void zzar(boolean z);

    void zzas();

    void zzat(String str, String str2, String str3);

    void zzau();

    void zzav(boolean z);

    void zzaw(zzblq zzblqVar);

    void zzax(zzaxq zzaxqVar);

    zzaxq zzay();

    boolean zzaz(boolean z, int i);

    @Override // com.google.android.gms.internal.ads.zzcjb
    zzcnh zzh();

    @Override // com.google.android.gms.internal.ads.zzcnn, com.google.android.gms.internal.ads.zzcjb
    Activity zzj();

    @Override // com.google.android.gms.internal.ads.zzcjb
    zza zzk();

    @Override // com.google.android.gms.internal.ads.zzcjb
    zzbjy zzq();

    @Override // com.google.android.gms.internal.ads.zzcnv, com.google.android.gms.internal.ads.zzcjb
    zzcgz zzt();

    @Override // com.google.android.gms.internal.ads.zzcjb
    void zzu(String str, zzcla zzclaVar);

    @Override // com.google.android.gms.internal.ads.zzcjb
    void zzx(zzcnh zzcnhVar);
}
