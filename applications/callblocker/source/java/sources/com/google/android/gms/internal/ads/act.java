package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.AbstractC2307i;
import com.google.android.gms.ads.internal.C2299a;
import com.google.android.gms.ads.internal.overlay.BinderC2316c;
import com.google.android.gms.common.util.AbstractC2717n;
import com.google.android.gms.dynamic.AbstractC2731a;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/act.class */
public interface act extends AbstractC2307i, aad, AbstractC2764ads, adv, adz, aea, aec, aed, dtr, AbstractC3187hc, AbstractC3212ia {
    @Override // com.google.android.gms.internal.ads.adv
    /* renamed from: A */
    boolean mo13497A();

    /* renamed from: B */
    boolean mo13593B();

    /* renamed from: C */
    void mo13418C();

    /* renamed from: D */
    boolean mo13496D();

    /* renamed from: E */
    boolean mo13495E();

    /* renamed from: F */
    void mo13494F();

    /* renamed from: G */
    void mo13493G();

    /* renamed from: H */
    AbstractC2833bj mo13492H();

    /* renamed from: I */
    void mo13491I();

    /* renamed from: J */
    void mo13490J();

    /* renamed from: K */
    dva mo13489K();

    /* renamed from: L */
    boolean mo13488L();

    /* renamed from: M */
    dvk mo13487M();

    /* renamed from: N */
    boolean mo13486N();

    /* renamed from: a */
    void mo13478a(int i);

    /* renamed from: a */
    void mo13477a(Context context);

    /* renamed from: a */
    void mo13476a(ViewGroup viewGroup, Activity activity, String str, String str2);

    /* renamed from: a */
    void mo13475a(BinderC2316c binderC2316c);

    /* renamed from: a */
    void mo13473a(AbstractC2731a abstractC2731a);

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: a */
    void mo13472a(adn adnVar);

    /* renamed from: a */
    void mo13471a(aei aeiVar);

    /* renamed from: a */
    void mo13468a(AbstractC2832bi abstractC2832bi);

    /* renamed from: a */
    void mo13467a(AbstractC2833bj abstractC2833bj);

    /* renamed from: a */
    void mo13466a(dva dvaVar);

    /* renamed from: a */
    void mo13464a(String str, AbstractC2717n<AbstractC3131fa<? super act>> abstractC2717n);

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: a */
    void mo13463a(String str, abt abtVar);

    /* renamed from: a */
    void mo13462a(String str, AbstractC3131fa<? super act> abstractC3131fa);

    /* renamed from: a */
    void mo13461a(String str, String str2, String str3);

    /* renamed from: a */
    boolean mo13459a(boolean z, int i);

    /* renamed from: b */
    void mo13454b(BinderC2316c binderC2316c);

    /* renamed from: b */
    void mo13453b(String str, AbstractC3131fa<? super act> abstractC3131fa);

    /* renamed from: b */
    void mo13452b(boolean z);

    /* renamed from: c */
    void mo13449c(boolean z);

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: d */
    adn mo13448d();

    /* renamed from: d */
    void mo13447d(boolean z);

    void destroy();

    /* renamed from: e */
    void mo13445e(boolean z);

    @Override // com.google.android.gms.internal.ads.aad, com.google.android.gms.internal.ads.AbstractC2764ads
    /* renamed from: f */
    Activity mo13444f();

    /* renamed from: f */
    void mo13443f(boolean z);

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: g */
    C2299a mo13442g();

    @Override // com.google.android.gms.internal.ads.aad, com.google.android.gms.internal.ads.AbstractC2764ads
    Context getContext();

    int getHeight();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    ViewParent getParent();

    @Override // com.google.android.gms.internal.ads.aec
    View getView();

    WebView getWebView();

    int getWidth();

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: i */
    C3400p mo13439i();

    @Override // com.google.android.gms.internal.ads.aad, com.google.android.gms.internal.ads.aed
    /* renamed from: j */
    C3647yd mo13438j();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    void measure(int i, int i2);

    /* renamed from: n */
    void mo13434n();

    /* renamed from: o */
    void mo13433o();

    void onPause();

    void onResume();

    /* renamed from: p */
    void mo13432p();

    /* renamed from: q */
    Context mo13431q();

    /* renamed from: r */
    BinderC2316c mo13430r();

    /* renamed from: s */
    BinderC2316c mo13429s();

    @Override // com.google.android.gms.internal.ads.aad
    void setBackgroundColor(int i);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setRequestedOrientation(int i);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    @Override // com.google.android.gms.internal.ads.aeb
    /* renamed from: t */
    aei mo13428t();

    /* renamed from: u */
    String mo13427u();

    /* renamed from: v */
    aef mo13426v();

    /* renamed from: w */
    WebViewClient mo13425w();

    /* renamed from: x */
    boolean mo13424x();

    @Override // com.google.android.gms.internal.ads.aea
    /* renamed from: y */
    ctl mo13423y();

    /* renamed from: z */
    AbstractC2731a mo13422z();
}
