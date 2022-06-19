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
import javax.annotation.ParametersAreNonnullByDefault;
@VisibleForTesting
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcop.class */
public interface zzcop extends zzbes, zzdmd, zzcog, zzbuk, zzcpm, zzcpq, zzbux, zzaya, zzcpu, zzl, zzcpx, zzcpy, zzclh, zzcpz {
    boolean canGoBack();

    void destroy();

    @Override // com.google.android.gms.internal.ads.zzcpq, com.google.android.gms.internal.ads.zzclh
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

    @Override // com.google.android.gms.internal.ads.zzclh
    void setBackgroundColor(int i);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    @Override // com.google.android.gms.internal.ads.zzclh
    void zzE(zzcpl zzcplVar);

    @Override // com.google.android.gms.internal.ads.zzcog
    zzfdn zzF();

    Context zzG();

    @Override // com.google.android.gms.internal.ads.zzcpz
    View zzH();

    WebView zzI();

    WebViewClient zzJ();

    @Override // com.google.android.gms.internal.ads.zzcpx
    zzalt zzK();

    zzazn zzL();

    zzbnv zzM();

    com.google.android.gms.ads.internal.overlay.zzl zzN();

    com.google.android.gms.ads.internal.overlay.zzl zzO();

    zzcqc zzP();

    @Override // com.google.android.gms.internal.ads.zzcpw
    zzcqe zzQ();

    @Override // com.google.android.gms.internal.ads.zzcpm
    zzfdq zzR();

    IObjectWrapper zzS();

    zzfxa<String> zzT();

    String zzU();

    void zzV(zzfdn zzfdnVar, zzfdq zzfdqVar);

    void zzW();

    void zzX();

    void zzY(int i);

    void zzZ();

    boolean zzaA(boolean z, int i);

    boolean zzaB();

    boolean zzaC();

    boolean zzaD();

    boolean zzaE();

    void zzaa();

    void zzab(boolean z);

    void zzac();

    void zzad(String str, String str2, String str3);

    void zzae();

    void zzaf(String str, zzbrt<? super zzcop> zzbrtVar);

    void zzag();

    void zzah(com.google.android.gms.ads.internal.overlay.zzl zzlVar);

    void zzai(zzcqe zzcqeVar);

    void zzaj(zzazn zzaznVar);

    void zzak(boolean z);

    void zzal();

    void zzam(Context context);

    void zzan(boolean z);

    void zzao(zzbnt zzbntVar);

    void zzap(boolean z);

    void zzaq(zzbnv zzbnvVar);

    void zzar(IObjectWrapper iObjectWrapper);

    void zzas(int i);

    void zzat(com.google.android.gms.ads.internal.overlay.zzl zzlVar);

    void zzau(boolean z);

    void zzav(boolean z);

    void zzaw(String str, zzbrt<? super zzcop> zzbrtVar);

    void zzax(String str, Predicate<zzbrt<? super zzcop>> predicate);

    boolean zzay();

    boolean zzaz();

    @Override // com.google.android.gms.internal.ads.zzcpq, com.google.android.gms.internal.ads.zzclh
    Activity zzk();

    @Override // com.google.android.gms.internal.ads.zzclh
    zza zzm();

    @Override // com.google.android.gms.internal.ads.zzclh
    zzblw zzo();

    @Override // com.google.android.gms.internal.ads.zzcpy, com.google.android.gms.internal.ads.zzclh
    zzcjf zzp();

    @Override // com.google.android.gms.internal.ads.zzclh
    zzcpl zzs();

    @Override // com.google.android.gms.internal.ads.zzclh
    void zzv(String str, zzcnf zzcnfVar);
}
