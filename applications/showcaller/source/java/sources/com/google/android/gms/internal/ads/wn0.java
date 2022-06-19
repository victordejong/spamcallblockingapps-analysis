package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.AbstractC5634k;
import com.google.android.gms.ads.internal.C5624a;
import com.google.android.gms.ads.internal.overlay.BinderC5650l;
import com.google.android.gms.common.util.AbstractC6238p;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wn0.class */
public interface wn0 extends AbstractC6673kq, qa1, nn0, s40, so0, xo0, g50, AbstractC6888qj, bp0, AbstractC5634k, ep0, fp0, kk0, gp0 {
    /* renamed from: A */
    C7016u mo7966A();

    /* renamed from: A0 */
    void mo7965A0(AbstractC6253a abstractC6253a);

    /* renamed from: B */
    jj2 mo7964B();

    /* renamed from: B0 */
    boolean mo7963B0();

    /* renamed from: C */
    void mo7962C();

    /* renamed from: D */
    View mo7960D();

    /* renamed from: E */
    String mo7958E();

    /* renamed from: F */
    WebView mo7956F();

    /* renamed from: F0 */
    WebViewClient mo7955F0();

    /* renamed from: G */
    void mo7954G(String str, km0 km0Var);

    /* renamed from: H0 */
    void mo7952H0(BinderC5650l binderC5650l);

    /* renamed from: I0 */
    void mo7950I0(mp0 mp0Var);

    /* renamed from: J0 */
    void mo7949J0(BinderC5650l binderC5650l);

    /* renamed from: K */
    void mo7948K();

    /* renamed from: L */
    AbstractC7014ty mo7947L();

    /* renamed from: L0 */
    boolean mo7946L0();

    /* renamed from: M */
    void mo7945M();

    /* renamed from: M0 */
    void mo7944M0(boolean z);

    /* renamed from: N0 */
    void mo7942N0(ej2 ej2Var, jj2 jj2Var);

    /* renamed from: O0 */
    void mo7941O0(AbstractC6903qy abstractC6903qy);

    /* renamed from: P */
    void mo7940P();

    /* renamed from: Q */
    BinderC5650l mo7938Q();

    /* renamed from: R */
    void mo7936R();

    /* renamed from: R0 */
    void mo7935R0(AbstractC6445el abstractC6445el);

    /* renamed from: T */
    boolean mo7932T();

    /* renamed from: U0 */
    boolean mo7930U0();

    /* renamed from: V0 */
    void mo7929V0(boolean z);

    /* renamed from: W */
    void mo7928W();

    /* renamed from: W0 */
    void mo7927W0();

    /* renamed from: X */
    r03<String> mo7926X();

    /* renamed from: X0 */
    void mo7925X0(String str, AbstractC6238p<n20<? super wn0>> abstractC6238p);

    /* renamed from: Y0 */
    void mo7923Y0(boolean z);

    /* renamed from: Z */
    void mo7922Z(int i);

    /* renamed from: a0 */
    void mo7919a0(boolean z);

    /* renamed from: a1 */
    boolean mo7918a1();

    /* renamed from: b1 */
    void mo7915b1(String str, String str2, String str3);

    /* renamed from: c0 */
    jp0 mo7914c0();

    boolean canGoBack();

    void destroy();

    /* renamed from: e0 */
    void mo7910e0(String str, n20<? super wn0> n20Var);

    /* renamed from: f */
    ro0 mo7909f();

    /* renamed from: g */
    Activity mo7908g();

    @Override // com.google.android.gms.internal.ads.xo0, com.google.android.gms.internal.ads.kk0
    Context getContext();

    int getHeight();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    int getMeasuredHeight();

    int getMeasuredWidth();

    ViewParent getParent();

    int getWidth();

    void goBack();

    /* renamed from: h */
    C5624a mo7906h();

    /* renamed from: h0 */
    boolean mo7905h0();

    /* renamed from: k */
    C7160xw mo7901k();

    /* renamed from: l0 */
    void mo7899l0(String str, n20<? super wn0> n20Var);

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    /* renamed from: m0 */
    void mo7897m0(AbstractC7014ty abstractC7014ty);

    void measure(int i, int i2);

    /* renamed from: n0 */
    void mo7895n0(boolean z);

    /* renamed from: o */
    mp0 mo7894o();

    void onPause();

    void onResume();

    /* renamed from: p0 */
    void mo7892p0();

    /* renamed from: r0 */
    void mo7889r0(boolean z);

    /* renamed from: s */
    BinderC5650l mo7888s();

    /* renamed from: s0 */
    void mo7887s0(Context context);

    @Override // com.google.android.gms.internal.ads.kk0
    void setBackgroundColor(int i);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    /* renamed from: t0 */
    AbstractC6253a mo7886t0();

    /* renamed from: v0 */
    Context mo7883v0();

    /* renamed from: w */
    void mo7882w(ro0 ro0Var);

    /* renamed from: w0 */
    boolean mo7881w0(boolean z, int i);

    /* renamed from: x */
    AbstractC6445el mo7880x();

    /* renamed from: x0 */
    void mo7879x0(int i);

    /* renamed from: z */
    ej2 mo7878z();

    zzcgz zzt();
}
