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
import com.google.android.gms.ads.internal.C5624a;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.overlay.BinderC5650l;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.util.AbstractC5739u0;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.internal.util.C5688f;
import com.google.android.gms.common.util.AbstractC6238p;
import com.google.android.gms.dynamic.AbstractC6253a;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcna.class */
public final class zzcna extends FrameLayout implements wn0 {

    /* renamed from: d */
    private final wn0 f33918d;

    /* renamed from: e */
    private final yj0 f33919e;

    /* renamed from: f */
    private final AtomicBoolean f33920f = new AtomicBoolean();

    public zzcna(wn0 wn0Var) {
        super(wn0Var.getContext());
        this.f33918d = wn0Var;
        this.f33919e = new yj0(wn0Var.mo7883v0(), this, this);
        addView((View) wn0Var);
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.ep0
    /* renamed from: A */
    public final C7016u mo7966A() {
        return this.f33918d.mo7966A();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: A0 */
    public final void mo7965A0(AbstractC6253a abstractC6253a) {
        this.f33918d.mo7965A0(abstractC6253a);
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.so0
    /* renamed from: B */
    public final jj2 mo7964B() {
        return this.f33918d.mo7964B();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: B0 */
    public final boolean mo7963B0() {
        return this.f33920f.get();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: C */
    public final void mo7962C() {
        TextView textView = new TextView(getContext());
        C5667s.m18160d();
        textView.setText(C5679c2.m18077c());
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

    @Override // com.google.android.gms.internal.ads.bp0
    /* renamed from: C0 */
    public final void mo7961C0(zzc zzcVar, boolean z) {
        this.f33918d.mo7961C0(zzcVar, z);
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.gp0
    /* renamed from: D */
    public final View mo7960D() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.s40
    /* renamed from: D0 */
    public final void mo7959D0(String str, Map<String, ?> map) {
        this.f33918d.mo7959D0(str, map);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: E */
    public final String mo7958E() {
        return this.f33918d.mo7958E();
    }

    @Override // com.google.android.gms.internal.ads.g50
    /* renamed from: E0 */
    public final void mo7957E0(String str, JSONObject jSONObject) {
        ((oo0) this.f33918d).mo7890r(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: F */
    public final WebView mo7956F() {
        return (WebView) this.f33918d;
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: F0 */
    public final WebViewClient mo7955F0() {
        return this.f33918d.mo7955F0();
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.kk0
    /* renamed from: G */
    public final void mo7954G(String str, km0 km0Var) {
        this.f33918d.mo7954G(str, km0Var);
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: H */
    public final int mo7953H() {
        return this.f33918d.mo7953H();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: H0 */
    public final void mo7952H0(BinderC5650l binderC5650l) {
        this.f33918d.mo7952H0(binderC5650l);
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: I */
    public final int mo7951I() {
        return this.f33918d.mo7951I();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: I0 */
    public final void mo7950I0(mp0 mp0Var) {
        this.f33918d.mo7950I0(mp0Var);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: J0 */
    public final void mo7949J0(BinderC5650l binderC5650l) {
        this.f33918d.mo7949J0(binderC5650l);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: K */
    public final void mo7948K() {
        this.f33918d.mo7948K();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: L */
    public final AbstractC7014ty mo7947L() {
        return this.f33918d.mo7947L();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: L0 */
    public final boolean mo7946L0() {
        return this.f33918d.mo7946L0();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: M */
    public final void mo7945M() {
        this.f33918d.mo7945M();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: M0 */
    public final void mo7944M0(boolean z) {
        this.f33918d.mo7944M0(z);
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: N */
    public final void mo7943N(int i) {
        this.f33918d.mo7943N(i);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: N0 */
    public final void mo7942N0(ej2 ej2Var, jj2 jj2Var) {
        this.f33918d.mo7942N0(ej2Var, jj2Var);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: O0 */
    public final void mo7941O0(AbstractC6903qy abstractC6903qy) {
        this.f33918d.mo7941O0(abstractC6903qy);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: P */
    public final void mo7940P() {
        this.f33918d.mo7940P();
    }

    @Override // com.google.android.gms.ads.internal.AbstractC5634k
    /* renamed from: P0 */
    public final void mo7939P0() {
        this.f33918d.mo7939P0();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: Q */
    public final BinderC5650l mo7938Q() {
        return this.f33918d.mo7938Q();
    }

    @Override // com.google.android.gms.internal.ads.bp0
    /* renamed from: Q0 */
    public final void mo7937Q0(boolean z, int i, String str, String str2, boolean z2) {
        this.f33918d.mo7937Q0(z, i, str, str2, z2);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: R */
    public final void mo7936R() {
        setBackgroundColor(0);
        this.f33918d.setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: R0 */
    public final void mo7935R0(AbstractC6445el abstractC6445el) {
        this.f33918d.mo7935R0(abstractC6445el);
    }

    @Override // com.google.android.gms.internal.ads.bp0
    /* renamed from: S */
    public final void mo7934S(AbstractC5739u0 abstractC5739u0, dw1 dw1Var, rn1 rn1Var, jo2 jo2Var, String str, String str2, int i) {
        this.f33918d.mo7934S(abstractC5739u0, dw1Var, rn1Var, jo2Var, str, str2, i);
    }

    @Override // com.google.android.gms.internal.ads.bp0
    /* renamed from: S0 */
    public final void mo7933S0(boolean z, int i, boolean z2) {
        this.f33918d.mo7933S0(z, i, z2);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: T */
    public final boolean mo7932T() {
        return this.f33918d.mo7932T();
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: T0 */
    public final void mo7931T0(int i) {
        this.f33918d.mo7931T0(i);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: U0 */
    public final boolean mo7930U0() {
        return this.f33918d.mo7930U0();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: V0 */
    public final void mo7929V0(boolean z) {
        this.f33918d.mo7929V0(z);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: W */
    public final void mo7928W() {
        this.f33918d.mo7928W();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: W0 */
    public final void mo7927W0() {
        this.f33919e.m8811e();
        this.f33918d.mo7927W0();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: X */
    public final r03<String> mo7926X() {
        return this.f33918d.mo7926X();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: X0 */
    public final void mo7925X0(String str, AbstractC6238p<n20<? super wn0>> abstractC6238p) {
        this.f33918d.mo7925X0(str, abstractC6238p);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6888qj
    /* renamed from: Y */
    public final void mo7924Y(C6851pj c6851pj) {
        this.f33918d.mo7924Y(c6851pj);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: Y0 */
    public final void mo7923Y0(boolean z) {
        this.f33918d.mo7923Y0(z);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: Z */
    public final void mo7922Z(int i) {
        this.f33918d.mo7922Z(i);
    }

    @Override // com.google.android.gms.ads.internal.AbstractC5634k
    /* renamed from: Z0 */
    public final void mo7921Z0() {
        this.f33918d.mo7921Z0();
    }

    @Override // com.google.android.gms.internal.ads.s40, com.google.android.gms.internal.ads.u40
    /* renamed from: a */
    public final void mo7920a(String str, JSONObject jSONObject) {
        this.f33918d.mo7920a(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: a0 */
    public final void mo7919a0(boolean z) {
        this.f33918d.mo7919a0(z);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: a1 */
    public final boolean mo7918a1() {
        return this.f33918d.mo7918a1();
    }

    @Override // com.google.android.gms.internal.ads.qa1
    /* renamed from: b */
    public final void mo7917b() {
        wn0 wn0Var = this.f33918d;
        if (wn0Var != null) {
            wn0Var.mo7917b();
        }
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: b0 */
    public final void mo7916b0(boolean z) {
        this.f33918d.mo7916b0(false);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: b1 */
    public final void mo7915b1(String str, String str2, String str3) {
        this.f33918d.mo7915b1(str, str2, null);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: c0 */
    public final jp0 mo7914c0() {
        return ((oo0) this.f33918d).m12583l1();
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: c1 */
    public final void mo7913c1(boolean z, long j) {
        this.f33918d.mo7913c1(z, j);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    public final boolean canGoBack() {
        return this.f33918d.canGoBack();
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: d */
    public final yj0 mo7912d() {
        return this.f33919e;
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: d0 */
    public final void mo7911d0(int i) {
        this.f33918d.mo7911d0(i);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    public final void destroy() {
        AbstractC6253a mo7886t0 = mo7886t0();
        if (mo7886t0 == null) {
            this.f33918d.destroy();
            return;
        }
        au2 au2Var = C5679c2.f18451a;
        au2Var.post(new Runnable(mo7886t0) { // from class: com.google.android.gms.internal.ads.io0

            /* renamed from: d */
            private final AbstractC6253a f24367d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24367d = mo7886t0;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C5667s.m18145s().mo12113M(this.f24367d);
            }
        });
        wn0 wn0Var = this.f33918d;
        wn0Var.getClass();
        au2Var.postDelayed(jo0.m14092a(wn0Var), ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25818v3)).intValue());
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: e0 */
    public final void mo7910e0(String str, n20<? super wn0> n20Var) {
        this.f33918d.mo7910e0(str, n20Var);
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.kk0
    /* renamed from: f */
    public final ro0 mo7909f() {
        return this.f33918d.mo7909f();
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.xo0, com.google.android.gms.internal.ads.kk0
    /* renamed from: g */
    public final Activity mo7908g() {
        return this.f33918d.mo7908g();
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: g0 */
    public final km0 mo7907g0(String str) {
        return this.f33918d.mo7907g0(str);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    public final void goBack() {
        this.f33918d.goBack();
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.kk0
    /* renamed from: h */
    public final C5624a mo7906h() {
        return this.f33918d.mo7906h();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: h0 */
    public final boolean mo7905h0() {
        return this.f33918d.mo7905h0();
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: i */
    public final void mo7904i() {
        this.f33918d.mo7904i();
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: j */
    public final String mo7903j() {
        return this.f33918d.mo7903j();
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: j0 */
    public final void mo7902j0(int i) {
        this.f33919e.m8810f(i);
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.kk0
    /* renamed from: k */
    public final C7160xw mo7901k() {
        return this.f33918d.mo7901k();
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: l */
    public final int mo7900l() {
        return this.f33918d.mo7900l();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: l0 */
    public final void mo7899l0(String str, n20<? super wn0> n20Var) {
        this.f33918d.mo7899l0(str, n20Var);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    public final void loadData(String str, String str2, String str3) {
        this.f33918d.loadData(str, "text/html", str3);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.f33918d.loadDataWithBaseURL(str, str2, "text/html", "UTF-8", null);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    public final void loadUrl(String str) {
        this.f33918d.loadUrl(str);
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: m */
    public final String mo7898m() {
        return this.f33918d.mo7898m();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: m0 */
    public final void mo7897m0(AbstractC7014ty abstractC7014ty) {
        this.f33918d.mo7897m0(abstractC7014ty);
    }

    @Override // com.google.android.gms.internal.ads.g50, com.google.android.gms.internal.ads.u40
    /* renamed from: n */
    public final void mo7896n(String str) {
        ((oo0) this.f33918d).m12586i1(str);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: n0 */
    public final void mo7895n0(boolean z) {
        this.f33918d.mo7895n0(z);
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.dp0
    /* renamed from: o */
    public final mp0 mo7894o() {
        return this.f33918d.mo7894o();
    }

    @Override // com.google.android.gms.internal.ads.bp0
    /* renamed from: o0 */
    public final void mo7893o0(boolean z, int i, String str, boolean z2) {
        this.f33918d.mo7893o0(z, i, str, z2);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    public final void onPause() {
        this.f33919e.m8812d();
        this.f33918d.onPause();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    public final void onResume() {
        this.f33918d.onResume();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: p0 */
    public final void mo7892p0() {
        wn0 wn0Var = this.f33918d;
        HashMap hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(C5667s.m18155i().m18029d()));
        hashMap.put("app_volume", String.valueOf(C5667s.m18155i().m18031b()));
        oo0 oo0Var = (oo0) wn0Var;
        hashMap.put("device_volume", String.valueOf(C5688f.m18028e(oo0Var.getContext())));
        oo0Var.mo7959D0("volume", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: q */
    public final int mo7891q() {
        return ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25769p2)).booleanValue() ? this.f33918d.getMeasuredWidth() : getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.g50, com.google.android.gms.internal.ads.u40
    /* renamed from: r */
    public final void mo7890r(String str, String str2) {
        this.f33918d.mo7890r("window.inspectorInfo", str2);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: r0 */
    public final void mo7889r0(boolean z) {
        this.f33918d.mo7889r0(z);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: s */
    public final BinderC5650l mo7888s() {
        return this.f33918d.mo7888s();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: s0 */
    public final void mo7887s0(Context context) {
        this.f33918d.mo7887s0(context);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.wn0
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f33918d.setOnClickListener(onClickListener);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.wn0
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f33918d.setOnTouchListener(onTouchListener);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.f33918d.setWebChromeClient(webChromeClient);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    public final void setWebViewClient(WebViewClient webViewClient) {
        this.f33918d.setWebViewClient(webViewClient);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: t0 */
    public final AbstractC6253a mo7886t0() {
        return this.f33918d.mo7886t0();
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: u */
    public final void mo7885u() {
        this.f33918d.mo7885u();
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: v */
    public final int mo7884v() {
        return ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25769p2)).booleanValue() ? this.f33918d.getMeasuredHeight() : getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: v0 */
    public final Context mo7883v0() {
        return this.f33918d.mo7883v0();
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.kk0
    /* renamed from: w */
    public final void mo7882w(ro0 ro0Var) {
        this.f33918d.mo7882w(ro0Var);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: w0 */
    public final boolean mo7881w0(boolean z, int i) {
        if (!this.f33920f.compareAndSet(false, true)) {
            return true;
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25831x0)).booleanValue()) {
            return false;
        }
        if (this.f33918d.getParent() instanceof ViewGroup) {
            ((ViewGroup) this.f33918d.getParent()).removeView((View) this.f33918d);
        }
        this.f33918d.mo7881w0(z, i);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: x */
    public final AbstractC6445el mo7880x() {
        return this.f33918d.mo7880x();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: x0 */
    public final void mo7879x0(int i) {
        this.f33918d.mo7879x0(i);
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.nn0
    /* renamed from: z */
    public final ej2 mo7878z() {
        return this.f33918d.mo7878z();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6673kq
    /* renamed from: z0 */
    public final void mo7877z0() {
        wn0 wn0Var = this.f33918d;
        if (wn0Var != null) {
            wn0Var.mo7877z0();
        }
    }

    @Override // com.google.android.gms.internal.ads.kk0
    public final C7123ww zzi() {
        return this.f33918d.zzi();
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.fp0, com.google.android.gms.internal.ads.kk0
    public final zzcgz zzt() {
        return this.f33918d.zzt();
    }
}
