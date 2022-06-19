package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.ads.impl.C11679R;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.util.AbstractC12111o;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzbft.class */
public final class zzbft extends FrameLayout implements adt {

    /* renamed from: a */
    private final adt f50208a;

    /* renamed from: b */
    private final aaq f50209b;

    /* renamed from: c */
    private final AtomicBoolean f50210c = new AtomicBoolean();

    public zzbft(adt adtVar) {
        super(adtVar.getContext());
        this.f50208a = adtVar;
        this.f50209b = new aaq(adtVar.mo13727w(), this, this);
        addView(adtVar.mo13731s());
    }

    /* renamed from: b */
    public static final /* synthetic */ void m13760b(AbstractC12126b abstractC12126b) {
        C12862qt zzlk = zzr.zzlk();
        synchronized (C12862qt.f49750a) {
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42763cT)).booleanValue() && C12862qt.f49751b) {
                try {
                    zzlk.f49753c.mo17197c(abstractC12126b);
                } catch (RemoteException | NullPointerException e) {
                    C13088za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: A */
    public final String mo13809A() {
        return this.f50208a.mo13809A();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: B */
    public final afe mo13808B() {
        return this.f50208a.mo13808B();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: C */
    public final WebViewClient mo13807C() {
        return this.f50208a.mo13807C();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: D */
    public final boolean mo13806D() {
        return this.f50208a.mo13806D();
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.aez
    /* renamed from: E */
    public final die mo13805E() {
        return this.f50208a.mo13805E();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: F */
    public final AbstractC12126b mo13804F() {
        return this.f50208a.mo13804F();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: G */
    public final boolean mo13803G() {
        return this.f50208a.mo13803G();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: H */
    public final boolean mo13802H() {
        return this.f50208a.mo13802H();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: I */
    public final void mo13801I() {
        aaq aaqVar = this.f50209b;
        C12045o.m19155b("onDestroy must be called from the UI thread.");
        if (aaqVar.f39719d != null) {
            zzbcb zzbcbVar = aaqVar.f39719d;
            zzbcbVar.f50171a.m18913a();
            if (zzbcbVar.f50172b != null) {
                zzbcbVar.f50172b.mo13839b();
            }
            zzbcbVar.m13851n();
            aaqVar.f39718c.removeView(aaqVar.f39719d);
            aaqVar.f39719d = null;
        }
        this.f50208a.mo13801I();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: J */
    public final boolean mo13800J() {
        return this.f50208a.mo13800J();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: K */
    public final boolean mo13799K() {
        return this.f50208a.mo13799K();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: L */
    public final void mo13798L() {
        this.f50208a.mo13798L();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: M */
    public final void mo13797M() {
        this.f50208a.mo13797M();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: N */
    public final AbstractC12330dg mo13796N() {
        return this.f50208a.mo13796N();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: O */
    public final void mo13795O() {
        setBackgroundColor(0);
        this.f50208a.setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: P */
    public final void mo13794P() {
        TextView textView = new TextView(getContext());
        Resources m13976c = zzr.zzkz().m13976c();
        textView.setText(m13976c != null ? m13976c.getString(C11679R.C11680string.f38973s7) : "Test Ad");
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

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: Q */
    public final efu mo13793Q() {
        return this.f50208a.mo13793Q();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: R */
    public final boolean mo13792R() {
        return this.f50210c.get();
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.aen
    /* renamed from: S */
    public final coz mo13791S() {
        return this.f50208a.mo13791S();
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: a */
    public final aaq mo13790a() {
        return this.f50209b;
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: a */
    public final void mo13789a(int i) {
        this.f50208a.mo13789a(i);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13788a(Context context) {
        this.f50208a.mo13788a(context);
    }

    @Override // com.google.android.gms.internal.ads.aey
    /* renamed from: a */
    public final void mo13787a(zzb zzbVar) {
        this.f50208a.mo13787a(zzbVar);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13786a(zze zzeVar) {
        this.f50208a.mo13786a(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.aey
    /* renamed from: a */
    public final void mo13785a(zzbg zzbgVar, brs brsVar, bli bliVar, cty ctyVar, String str, String str2, int i) {
        this.f50208a.mo13785a(zzbgVar, brsVar, bliVar, ctyVar, str, str2, i);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13784a(AbstractC12126b abstractC12126b) {
        this.f50208a.mo13784a(abstractC12126b);
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb
    /* renamed from: a */
    public final void mo13783a(aem aemVar) {
        this.f50208a.mo13783a(aemVar);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13782a(afh afhVar) {
        this.f50208a.mo13782a(afhVar);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13781a(cov covVar, coz cozVar) {
        this.f50208a.mo13781a(covVar, cozVar);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13780a(AbstractC12326df abstractC12326df) {
        this.f50208a.mo13780a(abstractC12326df);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13779a(AbstractC12330dg abstractC12330dg) {
        this.f50208a.mo13779a(abstractC12330dg);
    }

    @Override // com.google.android.gms.internal.ads.eeg
    /* renamed from: a */
    public final void mo13778a(eeh eehVar) {
        this.f50208a.mo13778a(eehVar);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13777a(efu efuVar) {
        this.f50208a.mo13777a(efuVar);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12685kf
    /* renamed from: a */
    public final void mo13775a(String str) {
        this.f50208a.mo13775a(str);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13774a(String str, AbstractC12111o<AbstractC12607hi<? super adt>> abstractC12111o) {
        this.f50208a.mo13774a(str, abstractC12111o);
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb
    /* renamed from: a */
    public final void mo13773a(String str, acu acuVar) {
        this.f50208a.mo13773a(str, acuVar);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13772a(String str, AbstractC12607hi<? super adt> abstractC12607hi) {
        this.f50208a.mo13772a(str, abstractC12607hi);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13771a(String str, String str2, String str3) {
        this.f50208a.mo13771a(str, str2, str3);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12669jq
    /* renamed from: a */
    public final void mo13770a(String str, Map<String, ?> map) {
        this.f50208a.mo13770a(str, map);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12669jq
    /* renamed from: a */
    public final void mo13769a(String str, JSONObject jSONObject) {
        this.f50208a.mo13769a(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: a */
    public final void mo13768a(boolean z) {
        this.f50208a.mo13768a(z);
    }

    @Override // com.google.android.gms.internal.ads.aey
    /* renamed from: a */
    public final void mo13766a(boolean z, int i, String str) {
        this.f50208a.mo13766a(z, i, str);
    }

    @Override // com.google.android.gms.internal.ads.aey
    /* renamed from: a */
    public final void mo13765a(boolean z, int i, String str, String str2) {
        this.f50208a.mo13765a(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: a */
    public final void mo13764a(boolean z, long j) {
        this.f50208a.mo13764a(z, j);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final boolean mo13767a(boolean z, int i) {
        if (!this.f50210c.compareAndSet(false, true)) {
            return true;
        }
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42684au)).booleanValue()) {
            return false;
        }
        if (this.f50208a.getParent() instanceof ViewGroup) {
            ((ViewGroup) this.f50208a.getParent()).removeView(this.f50208a.mo13731s());
        }
        return this.f50208a.mo13767a(z, i);
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: b */
    public final acu mo13759b(String str) {
        return this.f50208a.mo13759b(str);
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb
    /* renamed from: b */
    public final aem mo13763b() {
        return this.f50208a.mo13763b();
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: b */
    public final void mo13762b(int i) {
        this.f50208a.mo13762b(i);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: b */
    public final void mo13761b(zze zzeVar) {
        this.f50208a.mo13761b(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: b */
    public final void mo13758b(String str, AbstractC12607hi<? super adt> abstractC12607hi) {
        this.f50208a.mo13758b(str, abstractC12607hi);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12685kf
    /* renamed from: b */
    public final void mo13757b(String str, JSONObject jSONObject) {
        this.f50208a.mo13757b(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: b */
    public final void mo13756b(boolean z) {
        this.f50208a.mo13756b(z);
    }

    @Override // com.google.android.gms.internal.ads.aey
    /* renamed from: b */
    public final void mo13755b(boolean z, int i) {
        this.f50208a.mo13755b(z, i);
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: c */
    public final C12239bg mo13754c() {
        return this.f50208a.mo13754c();
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: c */
    public final void mo13753c(int i) {
        this.f50208a.mo13753c(i);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: c */
    public final void mo13752c(boolean z) {
        this.f50208a.mo13752c(z);
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb, com.google.android.gms.internal.ads.aeu
    /* renamed from: d */
    public final Activity mo13751d() {
        return this.f50208a.mo13751d();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: d */
    public final void mo13750d(int i) {
        this.f50208a.mo13750d(i);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: d */
    public final void mo13749d(boolean z) {
        this.f50208a.mo13749d(z);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void destroy() {
        AbstractC12126b mo13804F = mo13804F();
        if (mo13804F == null) {
            this.f50208a.destroy();
            return;
        }
        zzj.zzegq.post(new Runnable(mo13804F) { // from class: com.google.android.gms.internal.ads.aef

            /* renamed from: a */
            private final AbstractC12126b f40057a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f40057a = mo13804F;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbft.m13760b(this.f40057a);
            }
        });
        zzj.zzegq.postDelayed(new aee(this), ((Integer) ekb.m14831e().m18571a(C12187aq.f42764cU)).intValue());
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb
    /* renamed from: e */
    public final com.google.android.gms.ads.internal.zzb mo13748e() {
        return this.f50208a.mo13748e();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: e */
    public final void mo13747e(boolean z) {
        this.f50208a.mo13747e(z);
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: f */
    public final void mo13746f() {
        this.f50208a.mo13746f();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: f */
    public final void mo13745f(boolean z) {
        this.f50208a.mo13745f(z);
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: g */
    public final String mo13744g() {
        return this.f50208a.mo13744g();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: g */
    public final void mo13743g(boolean z) {
        this.f50208a.mo13743g(z);
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: h */
    public final String mo13742h() {
        return this.f50208a.mo13742h();
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: i */
    public final int mo13741i() {
        return this.f50208a.mo13741i();
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb
    /* renamed from: j */
    public final C12238bf mo13740j() {
        return this.f50208a.mo13740j();
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb, com.google.android.gms.internal.ads.afc
    /* renamed from: k */
    public final zzbar mo13739k() {
        return this.f50208a.mo13739k();
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: l */
    public final int mo13738l() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void loadData(String str, String str2, String str3) {
        this.f50208a.loadData(str, str2, str3);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.f50208a.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void loadUrl(String str) {
        this.f50208a.loadUrl(str);
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: m */
    public final int mo13737m() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: n */
    public final void mo13736n() {
        this.f50208a.mo13736n();
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: o */
    public final int mo13735o() {
        return this.f50208a.mo13735o();
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        adt adtVar = this.f50208a;
        if (adtVar != null) {
            adtVar.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void onPause() {
        aaq aaqVar = this.f50209b;
        C12045o.m19155b("onPause must be called from the UI thread.");
        if (aaqVar.f39719d != null) {
            aaqVar.f39719d.m13856i();
        }
        this.f50208a.onPause();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void onResume() {
        this.f50208a.onResume();
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: p */
    public final int mo13734p() {
        return this.f50208a.mo13734p();
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.adh
    /* renamed from: q */
    public final cov mo13733q() {
        return this.f50208a.mo13733q();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: r */
    public final WebView mo13732r() {
        return this.f50208a.mo13732r();
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.afb
    /* renamed from: s */
    public final View mo13731s() {
        return this;
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.adt
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f50208a.setOnClickListener(onClickListener);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.adt
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f50208a.setOnTouchListener(onTouchListener);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void setRequestedOrientation(int i) {
        this.f50208a.setRequestedOrientation(i);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.f50208a.setWebChromeClient(webChromeClient);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void setWebViewClient(WebViewClient webViewClient) {
        this.f50208a.setWebViewClient(webViewClient);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: t */
    public final void mo13730t() {
        this.f50208a.mo13730t();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: u */
    public final void mo13729u() {
        this.f50208a.mo13729u();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: v */
    public final void mo13728v() {
        this.f50208a.mo13728v();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: w */
    public final Context mo13727w() {
        return this.f50208a.mo13727w();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: x */
    public final zze mo13726x() {
        return this.f50208a.mo13726x();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: y */
    public final zze mo13725y() {
        return this.f50208a.mo13725y();
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.afa
    /* renamed from: z */
    public final afh mo13724z() {
        return this.f50208a.mo13724z();
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final void zzkr() {
        this.f50208a.zzkr();
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final void zzks() {
        this.f50208a.zzks();
    }
}
