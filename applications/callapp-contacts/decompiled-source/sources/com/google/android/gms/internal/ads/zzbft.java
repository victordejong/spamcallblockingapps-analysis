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
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.b;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzbft.class */
public final class zzbft extends FrameLayout implements adt {

    /* renamed from: a  reason: collision with root package name */
    private final adt f28613a;

    /* renamed from: b  reason: collision with root package name */
    private final aaq f28614b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f28615c = new AtomicBoolean();

    public zzbft(adt adtVar) {
        super(adtVar.getContext());
        this.f28613a = adtVar;
        this.f28614b = new aaq(adtVar.w(), this, this);
        addView(adtVar.s());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void b(b bVar) {
        qt zzlk = zzr.zzlk();
        synchronized (qt.f28344a) {
            if (((Boolean) ekb.e().a(aq.cT)).booleanValue() && qt.f28345b) {
                try {
                    zzlk.f28347c.c(bVar);
                } catch (RemoteException | NullPointerException e) {
                    za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final String A() {
        return this.f28613a.A();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final afe B() {
        return this.f28613a.B();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final WebViewClient C() {
        return this.f28613a.C();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final boolean D() {
        return this.f28613a.D();
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.aez
    public final die E() {
        return this.f28613a.E();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final b F() {
        return this.f28613a.F();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final boolean G() {
        return this.f28613a.G();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final boolean H() {
        return this.f28613a.H();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void I() {
        aaq aaqVar = this.f28614b;
        o.b("onDestroy must be called from the UI thread.");
        if (aaqVar.f23016d != null) {
            zzbcb zzbcbVar = aaqVar.f23016d;
            zzbcbVar.f28607a.a();
            if (zzbcbVar.f28608b != null) {
                zzbcbVar.f28608b.b();
            }
            zzbcbVar.n();
            aaqVar.f23015c.removeView(aaqVar.f23016d);
            aaqVar.f23016d = null;
        }
        this.f28613a.I();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final boolean J() {
        return this.f28613a.J();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final boolean K() {
        return this.f28613a.K();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void L() {
        this.f28613a.L();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void M() {
        this.f28613a.M();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final dg N() {
        return this.f28613a.N();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void O() {
        setBackgroundColor(0);
        this.f28613a.setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void P() {
        TextView textView = new TextView(getContext());
        Resources c2 = zzr.zzkz().c();
        textView.setText(c2 != null ? c2.getString(R.string.s7) : "Test Ad");
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
    public final efu Q() {
        return this.f28613a.Q();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final boolean R() {
        return this.f28615c.get();
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.aen
    public final coz S() {
        return this.f28613a.S();
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final aaq a() {
        return this.f28614b;
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final void a(int i) {
        this.f28613a.a(i);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(Context context) {
        this.f28613a.a(context);
    }

    @Override // com.google.android.gms.internal.ads.aey
    public final void a(zzb zzbVar) {
        this.f28613a.a(zzbVar);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(zze zzeVar) {
        this.f28613a.a(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.aey
    public final void a(zzbg zzbgVar, brs brsVar, bli bliVar, cty ctyVar, String str, String str2, int i) {
        this.f28613a.a(zzbgVar, brsVar, bliVar, ctyVar, str, str2, i);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(b bVar) {
        this.f28613a.a(bVar);
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb
    public final void a(aem aemVar) {
        this.f28613a.a(aemVar);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(afh afhVar) {
        this.f28613a.a(afhVar);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(cov covVar, coz cozVar) {
        this.f28613a.a(covVar, cozVar);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(df dfVar) {
        this.f28613a.a(dfVar);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(dg dgVar) {
        this.f28613a.a(dgVar);
    }

    @Override // com.google.android.gms.internal.ads.eeg
    public final void a(eeh eehVar) {
        this.f28613a.a(eehVar);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(efu efuVar) {
        this.f28613a.a(efuVar);
    }

    @Override // com.google.android.gms.internal.ads.kf
    public final void a(String str) {
        this.f28613a.a(str);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(String str, com.google.android.gms.common.util.o<hi<? super adt>> oVar) {
        this.f28613a.a(str, oVar);
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb
    public final void a(String str, acu acuVar) {
        this.f28613a.a(str, acuVar);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(String str, hi<? super adt> hiVar) {
        this.f28613a.a(str, hiVar);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(String str, String str2, String str3) {
        this.f28613a.a(str, str2, str3);
    }

    @Override // com.google.android.gms.internal.ads.jq
    public final void a(String str, Map<String, ?> map) {
        this.f28613a.a(str, map);
    }

    @Override // com.google.android.gms.internal.ads.jq
    public final void a(String str, JSONObject jSONObject) {
        this.f28613a.a(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final void a(boolean z) {
        this.f28613a.a(z);
    }

    @Override // com.google.android.gms.internal.ads.aey
    public final void a(boolean z, int i, String str) {
        this.f28613a.a(z, i, str);
    }

    @Override // com.google.android.gms.internal.ads.aey
    public final void a(boolean z, int i, String str, String str2) {
        this.f28613a.a(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final void a(boolean z, long j) {
        this.f28613a.a(z, j);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final boolean a(boolean z, int i) {
        if (!this.f28615c.compareAndSet(false, true)) {
            return true;
        }
        if (((Boolean) ekb.e().a(aq.au)).booleanValue()) {
            return false;
        }
        if (this.f28613a.getParent() instanceof ViewGroup) {
            ((ViewGroup) this.f28613a.getParent()).removeView(this.f28613a.s());
        }
        return this.f28613a.a(z, i);
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final acu b(String str) {
        return this.f28613a.b(str);
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb
    public final aem b() {
        return this.f28613a.b();
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final void b(int i) {
        this.f28613a.b(i);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void b(zze zzeVar) {
        this.f28613a.b(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void b(String str, hi<? super adt> hiVar) {
        this.f28613a.b(str, hiVar);
    }

    @Override // com.google.android.gms.internal.ads.kf
    public final void b(String str, JSONObject jSONObject) {
        this.f28613a.b(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void b(boolean z) {
        this.f28613a.b(z);
    }

    @Override // com.google.android.gms.internal.ads.aey
    public final void b(boolean z, int i) {
        this.f28613a.b(z, i);
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final bg c() {
        return this.f28613a.c();
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final void c(int i) {
        this.f28613a.c(i);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void c(boolean z) {
        this.f28613a.c(z);
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb, com.google.android.gms.internal.ads.aeu
    public final Activity d() {
        return this.f28613a.d();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void d(int i) {
        this.f28613a.d(i);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void d(boolean z) {
        this.f28613a.d(z);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void destroy() {
        final b F = F();
        if (F != null) {
            zzj.zzegq.post(new Runnable(F) { // from class: com.google.android.gms.internal.ads.aef

                /* renamed from: a  reason: collision with root package name */
                private final b f23186a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23186a = F;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbft.b(this.f23186a);
                }
            });
            zzj.zzegq.postDelayed(new aee(this), ((Integer) ekb.e().a(aq.cU)).intValue());
            return;
        }
        this.f28613a.destroy();
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb
    public final com.google.android.gms.ads.internal.zzb e() {
        return this.f28613a.e();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void e(boolean z) {
        this.f28613a.e(z);
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final void f() {
        this.f28613a.f();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void f(boolean z) {
        this.f28613a.f(z);
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final String g() {
        return this.f28613a.g();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void g(boolean z) {
        this.f28613a.g(z);
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final String h() {
        return this.f28613a.h();
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final int i() {
        return this.f28613a.i();
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb
    public final bf j() {
        return this.f28613a.j();
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb, com.google.android.gms.internal.ads.afc
    public final zzbar k() {
        return this.f28613a.k();
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final int l() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void loadData(String str, String str2, String str3) {
        this.f28613a.loadData(str, str2, str3);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.f28613a.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void loadUrl(String str) {
        this.f28613a.loadUrl(str);
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final int m() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final void n() {
        this.f28613a.n();
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final int o() {
        return this.f28613a.o();
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        adt adtVar = this.f28613a;
        if (adtVar != null) {
            adtVar.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void onPause() {
        aaq aaqVar = this.f28614b;
        o.b("onPause must be called from the UI thread.");
        if (aaqVar.f23016d != null) {
            aaqVar.f23016d.i();
        }
        this.f28613a.onPause();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void onResume() {
        this.f28613a.onResume();
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final int p() {
        return this.f28613a.p();
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.adh
    public final cov q() {
        return this.f28613a.q();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final WebView r() {
        return this.f28613a.r();
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.afb
    public final View s() {
        return this;
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.adt
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f28613a.setOnClickListener(onClickListener);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.adt
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f28613a.setOnTouchListener(onTouchListener);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void setRequestedOrientation(int i) {
        this.f28613a.setRequestedOrientation(i);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.f28613a.setWebChromeClient(webChromeClient);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void setWebViewClient(WebViewClient webViewClient) {
        this.f28613a.setWebViewClient(webViewClient);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void t() {
        this.f28613a.t();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void u() {
        this.f28613a.u();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void v() {
        this.f28613a.v();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final Context w() {
        return this.f28613a.w();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final zze x() {
        return this.f28613a.x();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final zze y() {
        return this.f28613a.y();
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.afa
    public final afh z() {
        return this.f28613a.z();
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final void zzkr() {
        this.f28613a.zzkr();
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final void zzks() {
        this.f28613a.zzks();
    }
}
