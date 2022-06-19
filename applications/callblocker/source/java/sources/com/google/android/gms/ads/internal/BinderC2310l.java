package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.internal.ads.AbstractC3382oi;
import com.google.android.gms.internal.ads.AbstractC3388oo;
import com.google.android.gms.internal.ads.AbstractC3456rb;
import com.google.android.gms.internal.ads.AbstractC3535u;
import com.google.android.gms.internal.ads.C2768ag;
import com.google.android.gms.internal.ads.C3556uu;
import com.google.android.gms.internal.ads.C3634xr;
import com.google.android.gms.internal.ads.C3647yd;
import com.google.android.gms.internal.ads.C3650yg;
import com.google.android.gms.internal.ads.ctl;
import com.google.android.gms.internal.ads.dve;
import com.google.android.gms.internal.ads.dya;
import com.google.android.gms.internal.ads.dyd;
import com.google.android.gms.internal.ads.dyk;
import com.google.android.gms.internal.ads.dyx;
import com.google.android.gms.internal.ads.dyz;
import com.google.android.gms.internal.ads.dza;
import com.google.android.gms.internal.ads.dzm;
import com.google.android.gms.internal.ads.dzr;
import com.google.android.gms.internal.ads.dzw;
import com.google.android.gms.internal.ads.eac;
import com.google.android.gms.internal.ads.eau;
import com.google.android.gms.internal.ads.eav;
import com.google.android.gms.internal.ads.eba;
import com.google.android.gms.internal.ads.ebg;
import com.google.android.gms.internal.ads.ecn;
import com.google.android.gms.internal.ads.zzdw;
import java.util.Map;
import java.util.concurrent.Future;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.ads.internal.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/l.class */
public final class BinderC2310l extends dzm {

    /* renamed from: a */
    private final C3647yd f6657a;

    /* renamed from: b */
    private final dyd f6658b;

    /* renamed from: c */
    private final Future<ctl> f6659c = C3650yg.f17642a.mo10767a(new CallableC2311m(this));

    /* renamed from: d */
    private final Context f6660d;

    /* renamed from: e */
    private final C2313o f6661e;

    /* renamed from: f */
    private WebView f6662f;

    /* renamed from: g */
    private dza f6663g;

    /* renamed from: h */
    private ctl f6664h;

    /* renamed from: i */
    private AsyncTask<Void, Void, String> f6665i;

    public BinderC2310l(Context context, dyd dydVar, String str, C3647yd c3647yd) {
        this.f6660d = context;
        this.f6657a = c3647yd;
        this.f6658b = dydVar;
        this.f6662f = new WebView(this.f6660d);
        this.f6661e = new C2313o(context, str);
        m14791a(0);
        this.f6662f.setVerticalScrollBarEnabled(false);
        this.f6662f.getSettings().setJavaScriptEnabled(true);
        this.f6662f.setWebViewClient(new C2309k(this));
        this.f6662f.setOnTouchListener(new View$OnTouchListenerC2312n(this));
    }

    /* renamed from: d */
    public final String m14782d(String str) {
        if (this.f6664h != null) {
            Uri parse = Uri.parse(str);
            try {
                parse = this.f6664h.m10667a(parse, this.f6660d, null, null);
            } catch (zzdw e) {
                C3556uu.m6746d("Unable to process ad data", e);
            }
            str = parse.toString();
        }
        return str;
    }

    /* renamed from: e */
    public final void m14780e(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        this.f6660d.startActivity(intent);
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final AbstractC2731a mo7967a() {
        C2662s.m13974b("getAdFrame must be called on the main UI thread.");
        return BinderC2734b.m13794a(this.f6662f);
    }

    /* renamed from: a */
    public final void m14791a(int i) {
        if (this.f6662f == null) {
            return;
        }
        this.f6662f.setLayoutParams(new ViewGroup.LayoutParams(-1, i));
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7966a(dve dveVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7964a(dyd dydVar) {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7963a(dyk dykVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7962a(dyz dyzVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7961a(dza dzaVar) {
        this.f6663g = dzaVar;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7960a(dzr dzrVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7959a(dzw dzwVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7958a(eac eacVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7957a(eau eauVar) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7956a(ebg ebgVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7954a(ecn ecnVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7953a(AbstractC3382oi abstractC3382oi) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7952a(AbstractC3388oo abstractC3388oo, String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7951a(AbstractC3456rb abstractC3456rb) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7950a(AbstractC3535u abstractC3535u) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7949a(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7948a(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final boolean mo7965a(dya dyaVar) {
        C2662s.m13980a(this.f6662f, "This Search Ad has already been torn down");
        this.f6661e.m14775a(dyaVar, this.f6657a);
        this.f6665i = new AsyncTaskC2340p(this, null).execute(new Void[0]);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: b */
    public final void mo7947b() {
        C2662s.m13974b("destroy must be called on the main UI thread.");
        this.f6665i.cancel(true);
        this.f6659c.cancel(true);
        this.f6662f.destroy();
        this.f6662f = null;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: b */
    public final void mo7946b(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: b */
    public final void mo7945b(boolean z) {
        throw new IllegalStateException("Unused method");
    }

    /* renamed from: c */
    public final int m14784c(String str) {
        int i;
        String queryParameter = Uri.parse(str).getQueryParameter("height");
        if (TextUtils.isEmpty(queryParameter)) {
            i = 0;
        } else {
            try {
                dyx.m8162a();
                i = C3634xr.m6801a(this.f6660d, Integer.parseInt(queryParameter));
            } catch (NumberFormatException e) {
                i = 0;
            }
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: c */
    public final boolean mo7944c() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: d */
    public final void mo7943d() {
        C2662s.m13974b("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: e */
    public final void mo7942e() {
        C2662s.m13974b("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: f */
    public final Bundle mo7941f() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: g */
    public final void mo7940g() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: h */
    public final void mo7939h() {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: i */
    public final void mo7938i() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: j */
    public final dyd mo7937j() {
        return this.f6658b;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: k */
    public final String mo7936k() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: l */
    public final String mo7935l() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: m */
    public final eav mo7934m() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: n */
    public final String mo7933n() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: o */
    public final dzw mo7932o() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: p */
    public final dza mo7931p() {
        throw new IllegalStateException("getIAdListener not implemented");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: q */
    public final boolean mo7930q() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: r */
    public final eba mo7929r() {
        return null;
    }

    /* renamed from: s */
    public final String m14778s() {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https://").appendEncodedPath(C2768ag.f8122d.mo13599a());
        builder.appendQueryParameter("query", this.f6661e.m14774b());
        builder.appendQueryParameter("pubId", this.f6661e.m14773c());
        Map<String, String> m14772d = this.f6661e.m14772d();
        for (String str : m14772d.keySet()) {
            builder.appendQueryParameter(str, m14772d.get(str));
        }
        Uri build = builder.build();
        Uri uri = build;
        if (this.f6664h != null) {
            try {
                uri = this.f6664h.m10668a(build, this.f6660d);
            } catch (zzdw e) {
                C3556uu.m6746d("Unable to process ad data", e);
                uri = build;
            }
        }
        String m14777t = m14777t();
        String encodedQuery = uri.getEncodedQuery();
        return new StringBuilder(String.valueOf(m14777t).length() + 1 + String.valueOf(encodedQuery).length()).append(m14777t).append("#").append(encodedQuery).toString();
    }

    /* renamed from: t */
    public final String m14777t() {
        String m14776a = this.f6661e.m14776a();
        if (TextUtils.isEmpty(m14776a)) {
            m14776a = "www.google.com";
        }
        String mo13599a = C2768ag.f8122d.mo13599a();
        return new StringBuilder(String.valueOf(m14776a).length() + 8 + String.valueOf(mo13599a).length()).append("https://").append(m14776a).append(mo13599a).toString();
    }
}
