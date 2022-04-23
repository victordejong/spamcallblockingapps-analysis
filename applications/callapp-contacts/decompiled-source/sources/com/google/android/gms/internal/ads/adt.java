package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzm;
import com.google.android.gms.common.util.o;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adt.class */
public interface adt extends zzm, abb, adh, aen, aeu, aey, aez, afb, afc, eeg, eir, jq, kf {
    String A();

    afe B();

    WebViewClient C();

    boolean D();

    @Override // com.google.android.gms.internal.ads.aez
    die E();

    b F();

    boolean G();

    boolean H();

    void I();

    boolean J();

    boolean K();

    void L();

    void M();

    dg N();

    void O();

    void P();

    efu Q();

    boolean R();

    @Override // com.google.android.gms.internal.ads.aen
    coz S();

    void a(Context context);

    void a(zze zzeVar);

    void a(b bVar);

    @Override // com.google.android.gms.internal.ads.abb
    void a(aem aemVar);

    void a(afh afhVar);

    void a(cov covVar, coz cozVar);

    void a(df dfVar);

    void a(dg dgVar);

    void a(efu efuVar);

    void a(String str, o<hi<? super adt>> oVar);

    @Override // com.google.android.gms.internal.ads.abb
    void a(String str, acu acuVar);

    void a(String str, hi<? super adt> hiVar);

    void a(String str, String str2, String str3);

    boolean a(boolean z, int i);

    @Override // com.google.android.gms.internal.ads.abb
    aem b();

    void b(zze zzeVar);

    void b(String str, hi<? super adt> hiVar);

    void b(boolean z);

    void c(boolean z);

    @Override // com.google.android.gms.internal.ads.abb, com.google.android.gms.internal.ads.aeu
    Activity d();

    void d(int i);

    void d(boolean z);

    void destroy();

    @Override // com.google.android.gms.internal.ads.abb
    zzb e();

    void e(boolean z);

    void f(boolean z);

    void g(boolean z);

    @Override // com.google.android.gms.internal.ads.abb, com.google.android.gms.internal.ads.aeu
    Context getContext();

    int getHeight();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    ViewParent getParent();

    int getWidth();

    @Override // com.google.android.gms.internal.ads.abb
    bf j();

    @Override // com.google.android.gms.internal.ads.abb, com.google.android.gms.internal.ads.afc
    zzbar k();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    void measure(int i, int i2);

    void onPause();

    void onResume();

    @Override // com.google.android.gms.internal.ads.adh
    cov q();

    WebView r();

    @Override // com.google.android.gms.internal.ads.afb
    View s();

    @Override // com.google.android.gms.internal.ads.abb
    void setBackgroundColor(int i);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setRequestedOrientation(int i);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    void t();

    void u();

    void v();

    Context w();

    zze x();

    zze y();

    @Override // com.google.android.gms.internal.ads.afa
    afh z();
}
