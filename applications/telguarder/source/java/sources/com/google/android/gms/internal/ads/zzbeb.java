package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzm;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.dynamic.IObjectWrapper;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbeb.class */
public interface zzbeb extends zzm, zzaki, zzakw, zzbbo, zzbdu, zzbfa, zzbfd, zzbfh, zzbfl, zzbfm, zzbfo, zzqw, zzvc {
    void destroy();

    @Override // com.google.android.gms.internal.ads.zzbbo, com.google.android.gms.internal.ads.zzbfd
    Context getContext();

    int getHeight();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    ViewParent getParent();

    @Override // com.google.android.gms.internal.ads.zzbfo
    View getView();

    WebView getWebView();

    int getWidth();

    boolean isDestroyed();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    void measure(int i, int i2);

    void onPause();

    void onResume();

    @Override // com.google.android.gms.internal.ads.zzbbo
    void setBackgroundColor(int i);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setRequestedOrientation(int i);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    void zza(zzc zzcVar);

    void zza(zzaea zzaeaVar);

    void zza(zzaef zzaefVar);

    @Override // com.google.android.gms.internal.ads.zzbbo
    void zza(zzbev zzbevVar);

    void zza(zzbft zzbftVar);

    void zza(zzdmw zzdmwVar, zzdnb zzdnbVar);

    void zza(zzsh zzshVar);

    void zza(String str, Predicate<zzaif<? super zzbeb>> predicate);

    void zza(String str, zzaif<? super zzbeb> zzaifVar);

    @Override // com.google.android.gms.internal.ads.zzbbo
    void zza(String str, zzbdd zzbddVar);

    @Override // com.google.android.gms.internal.ads.zzbbo
    zzbev zzabc();

    @Override // com.google.android.gms.internal.ads.zzbbo, com.google.android.gms.internal.ads.zzbfd
    Activity zzabe();

    @Override // com.google.android.gms.internal.ads.zzbbo
    zzb zzabf();

    @Override // com.google.android.gms.internal.ads.zzbbo
    zzacd zzabi();

    @Override // com.google.android.gms.internal.ads.zzbbo, com.google.android.gms.internal.ads.zzbfl
    zzazn zzabj();

    @Override // com.google.android.gms.internal.ads.zzbdu
    zzdmw zzacp();

    void zzacq();

    void zzacr();

    Context zzacs();

    zzc zzact();

    zzc zzacu();

    @Override // com.google.android.gms.internal.ads.zzbfj
    zzbft zzacv();

    String zzacw();

    zzbfn zzacx();

    WebViewClient zzacy();

    boolean zzacz();

    @Override // com.google.android.gms.internal.ads.zzbfm
    zzei zzada();

    IObjectWrapper zzadb();

    boolean zzadc();

    void zzadd();

    boolean zzade();

    boolean zzadf();

    void zzadg();

    void zzadh();

    zzaef zzadi();

    void zzadj();

    void zzadk();

    zzsh zzadl();

    boolean zzadm();

    @Override // com.google.android.gms.internal.ads.zzbfa
    zzdnb zzadn();

    void zzam(boolean z);

    void zzaq(IObjectWrapper iObjectWrapper);

    void zzay(boolean z);

    void zzaz(boolean z);

    void zzb(zzc zzcVar);

    void zzb(String str, zzaif<? super zzbeb> zzaifVar);

    void zzb(String str, String str2, String str3);

    boolean zzb(boolean z, int i);

    void zzba(boolean z);

    void zzbb(boolean z);

    void zzbv(Context context);

    void zzdu(int i);

    void zzwb();
}
