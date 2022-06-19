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
import com.google.android.gms.common.util.AbstractC12111o;
import com.google.android.gms.dynamic.AbstractC12126b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adt.class */
public interface adt extends zzm, abb, adh, aen, aeu, aey, aez, afb, afc, eeg, eir, AbstractC12669jq, AbstractC12685kf {
    /* renamed from: A */
    String mo13809A();

    /* renamed from: B */
    afe mo13808B();

    /* renamed from: C */
    WebViewClient mo13807C();

    /* renamed from: D */
    boolean mo13806D();

    @Override // com.google.android.gms.internal.ads.aez
    /* renamed from: E */
    die mo13805E();

    /* renamed from: F */
    AbstractC12126b mo13804F();

    /* renamed from: G */
    boolean mo13803G();

    /* renamed from: H */
    boolean mo13802H();

    /* renamed from: I */
    void mo13801I();

    /* renamed from: J */
    boolean mo13800J();

    /* renamed from: K */
    boolean mo13799K();

    /* renamed from: L */
    void mo13798L();

    /* renamed from: M */
    void mo13797M();

    /* renamed from: N */
    AbstractC12330dg mo13796N();

    /* renamed from: O */
    void mo13795O();

    /* renamed from: P */
    void mo13794P();

    /* renamed from: Q */
    efu mo13793Q();

    /* renamed from: R */
    boolean mo13792R();

    @Override // com.google.android.gms.internal.ads.aen
    /* renamed from: S */
    coz mo13791S();

    /* renamed from: a */
    void mo13788a(Context context);

    /* renamed from: a */
    void mo13786a(zze zzeVar);

    /* renamed from: a */
    void mo13784a(AbstractC12126b abstractC12126b);

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: a */
    void mo13783a(aem aemVar);

    /* renamed from: a */
    void mo13782a(afh afhVar);

    /* renamed from: a */
    void mo13781a(cov covVar, coz cozVar);

    /* renamed from: a */
    void mo13780a(AbstractC12326df abstractC12326df);

    /* renamed from: a */
    void mo13779a(AbstractC12330dg abstractC12330dg);

    /* renamed from: a */
    void mo13777a(efu efuVar);

    /* renamed from: a */
    void mo13774a(String str, AbstractC12111o<AbstractC12607hi<? super adt>> abstractC12111o);

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: a */
    void mo13773a(String str, acu acuVar);

    /* renamed from: a */
    void mo13772a(String str, AbstractC12607hi<? super adt> abstractC12607hi);

    /* renamed from: a */
    void mo13771a(String str, String str2, String str3);

    /* renamed from: a */
    boolean mo13767a(boolean z, int i);

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: b */
    aem mo13763b();

    /* renamed from: b */
    void mo13761b(zze zzeVar);

    /* renamed from: b */
    void mo13758b(String str, AbstractC12607hi<? super adt> abstractC12607hi);

    /* renamed from: b */
    void mo13756b(boolean z);

    /* renamed from: c */
    void mo13752c(boolean z);

    @Override // com.google.android.gms.internal.ads.abb, com.google.android.gms.internal.ads.aeu
    /* renamed from: d */
    Activity mo13751d();

    /* renamed from: d */
    void mo13750d(int i);

    /* renamed from: d */
    void mo13749d(boolean z);

    void destroy();

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: e */
    zzb mo13748e();

    /* renamed from: e */
    void mo13747e(boolean z);

    /* renamed from: f */
    void mo13745f(boolean z);

    /* renamed from: g */
    void mo13743g(boolean z);

    @Override // com.google.android.gms.internal.ads.abb, com.google.android.gms.internal.ads.aeu
    Context getContext();

    int getHeight();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    ViewParent getParent();

    int getWidth();

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: j */
    C12238bf mo13740j();

    @Override // com.google.android.gms.internal.ads.abb, com.google.android.gms.internal.ads.afc
    /* renamed from: k */
    zzbar mo13739k();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    void measure(int i, int i2);

    void onPause();

    void onResume();

    @Override // com.google.android.gms.internal.ads.adh
    /* renamed from: q */
    cov mo13733q();

    /* renamed from: r */
    WebView mo13732r();

    @Override // com.google.android.gms.internal.ads.afb
    /* renamed from: s */
    View mo13731s();

    @Override // com.google.android.gms.internal.ads.abb
    void setBackgroundColor(int i);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setRequestedOrientation(int i);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    /* renamed from: t */
    void mo13730t();

    /* renamed from: u */
    void mo13729u();

    /* renamed from: v */
    void mo13728v();

    /* renamed from: w */
    Context mo13727w();

    /* renamed from: x */
    zze mo13726x();

    /* renamed from: y */
    zze mo13725y();

    @Override // com.google.android.gms.internal.ads.afa
    /* renamed from: z */
    afh mo13724z();
}
