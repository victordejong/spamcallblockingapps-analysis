package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import com.google.android.gms.internal.ads.AbstractBinderC6971ss;
import com.google.android.gms.internal.ads.AbstractC6304at;
import com.google.android.gms.internal.ads.AbstractC6377cs;
import com.google.android.gms.internal.ads.AbstractC6379cu;
import com.google.android.gms.internal.ads.AbstractC6491fu;
import com.google.android.gms.internal.ads.AbstractC6526gs;
import com.google.android.gms.internal.ads.AbstractC6531gx;
import com.google.android.gms.internal.ads.AbstractC6602it;
import com.google.android.gms.internal.ads.AbstractC6638js;
import com.google.android.gms.internal.ads.AbstractC6640ju;
import com.google.android.gms.internal.ads.AbstractC6779nl;
import com.google.android.gms.internal.ads.AbstractC7156xs;
import com.google.android.gms.internal.ads.C6453et;
import com.google.android.gms.internal.ads.C6865px;
import com.google.android.gms.internal.ads.C7016u;
import com.google.android.gms.internal.ads.C7118wr;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.qi0;
import com.google.android.gms.internal.ads.tb0;
import com.google.android.gms.internal.ads.ud0;
import com.google.android.gms.internal.ads.xh0;
import com.google.android.gms.internal.ads.yb0;
import com.google.android.gms.internal.ads.zzaat;
import com.google.android.gms.internal.ads.zzbdg;
import com.google.android.gms.internal.ads.zzbdl;
import com.google.android.gms.internal.ads.zzbdr;
import com.google.android.gms.internal.ads.zzbhg;
import com.google.android.gms.internal.ads.zzbis;
import com.google.android.gms.internal.ads.zzcgz;
import java.util.Map;
import java.util.concurrent.Future;
/* renamed from: com.google.android.gms.ads.internal.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/r.class */
public final class BinderC5666r extends AbstractBinderC6971ss {

    /* renamed from: d */
    private final zzcgz f18396d;

    /* renamed from: e */
    private final zzbdl f18397e;

    /* renamed from: f */
    private final Future<C7016u> f18398f = qi0.f28495a.mo11185a(new CallableC5637n(this));

    /* renamed from: g */
    private final Context f18399g;

    /* renamed from: h */
    private final C5665q f18400h;

    /* renamed from: i */
    private WebView f18401i;

    /* renamed from: j */
    private AbstractC6526gs f18402j;

    /* renamed from: k */
    private C7016u f18403k;

    /* renamed from: l */
    private AsyncTask<Void, Void, String> f18404l;

    public BinderC5666r(Context context, zzbdl zzbdlVar, String str, zzcgz zzcgzVar) {
        this.f18399g = context;
        this.f18396d = zzcgzVar;
        this.f18397e = zzbdlVar;
        this.f18401i = new WebView(context);
        this.f18400h = new C5665q(context, str);
        m18176F6(0);
        this.f18401i.setVerticalScrollBarEnabled(false);
        this.f18401i.getSettings().setJavaScriptEnabled(true);
        this.f18401i.setWebViewClient(new C5635l(this));
        this.f18401i.setOnTouchListener(new View$OnTouchListenerC5636m(this));
    }

    /* renamed from: I6 */
    public static /* synthetic */ String m18173I6(BinderC5666r binderC5666r, String str) {
        Uri uri;
        if (binderC5666r.f18403k != null) {
            Uri parse = Uri.parse(str);
            try {
                uri = binderC5666r.f18403k.m10447e(parse, binderC5666r.f18399g, null, null);
            } catch (zzaat e) {
                ei0.m15463g("Unable to process ad data", e);
                uri = parse;
            }
            str = uri.toString();
        }
        return str;
    }

    /* renamed from: J6 */
    public static /* synthetic */ void m18172J6(BinderC5666r binderC5666r, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        binderC5666r.f18399g.startActivity(intent);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: C4 */
    public final void mo9663C4(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: D */
    public final boolean mo9662D() {
        return false;
    }

    /* renamed from: E6 */
    public final int m18177E6(String str) {
        String queryParameter = Uri.parse(str).getQueryParameter("height");
        if (TextUtils.isEmpty(queryParameter)) {
            return 0;
        }
        try {
            C7118wr.m9485a();
            return xh0.m9161q(this.f18399g, Integer.parseInt(queryParameter));
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: F4 */
    public final void mo9660F4(AbstractC7156xs abstractC7156xs) {
        throw new IllegalStateException("Unused method");
    }

    /* renamed from: F6 */
    public final void m18176F6(int i) {
        if (this.f18401i == null) {
            return;
        }
        this.f18401i.setLayoutParams(new ViewGroup.LayoutParams(-1, i));
    }

    /* renamed from: G6 */
    public final String m18175G6() {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https://").appendEncodedPath(C6865px.f28207d.m12799e());
        builder.appendQueryParameter("query", this.f18400h.m18182b());
        builder.appendQueryParameter("pubId", this.f18400h.m18181c());
        builder.appendQueryParameter("mappver", this.f18400h.m18180d());
        Map<String, String> m18179e = this.f18400h.m18179e();
        for (String str : m18179e.keySet()) {
            builder.appendQueryParameter(str, m18179e.get(str));
        }
        Uri build = builder.build();
        C7016u c7016u = this.f18403k;
        Uri uri = build;
        if (c7016u != null) {
            try {
                uri = c7016u.m10449c(build, this.f18399g);
            } catch (zzaat e) {
                ei0.m15463g("Unable to process ad data", e);
                uri = build;
            }
        }
        String m18174H6 = m18174H6();
        String encodedQuery = uri.getEncodedQuery();
        StringBuilder sb = new StringBuilder(m18174H6.length() + 1 + String.valueOf(encodedQuery).length());
        sb.append(m18174H6);
        sb.append("#");
        sb.append(encodedQuery);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: H */
    public final AbstractC6526gs mo9657H() {
        throw new IllegalStateException("getIAdListener not implemented");
    }

    /* renamed from: H6 */
    public final String m18174H6() {
        String m18183a = this.f18400h.m18183a();
        String str = m18183a;
        if (true == TextUtils.isEmpty(m18183a)) {
            str = "www.google.com";
        }
        String m12799e = C6865px.f28207d.m12799e();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 8 + String.valueOf(m12799e).length());
        sb.append("https://");
        sb.append(str);
        sb.append(m12799e);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: K */
    public final String mo9653K() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: K2 */
    public final void mo9652K2(AbstractC6304at abstractC6304at) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: L0 */
    public final void mo9650L0(zzbdl zzbdlVar) {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: N5 */
    public final void mo9649N5(zzbdr zzbdrVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: O5 */
    public final void mo9648O5(zzbdg zzbdgVar, AbstractC6638js abstractC6638js) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: S1 */
    public final void mo9647S1(AbstractC6602it abstractC6602it) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: U2 */
    public final void mo9646U2(C6453et c6453et) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: W3 */
    public final void mo9645W3(AbstractC6253a abstractC6253a) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: X5 */
    public final void mo9644X5(AbstractC6526gs abstractC6526gs) {
        this.f18402j = abstractC6526gs;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: Y1 */
    public final void mo9643Y1(tb0 tb0Var) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: b6 */
    public final void mo9642b6(ud0 ud0Var) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: e3 */
    public final void mo9640e3(AbstractC6379cu abstractC6379cu) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: e6 */
    public final void mo9639e6(AbstractC6531gx abstractC6531gx) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: g */
    public final void mo9638g() {
        C6155o.m17023e("destroy must be called on the main UI thread.");
        this.f18404l.cancel(true);
        this.f18398f.cancel(true);
        this.f18401i.destroy();
        this.f18401i = null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: h */
    public final boolean mo9637h() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: i4 */
    public final void mo9636i4(yb0 yb0Var, String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: j */
    public final void mo9635j() {
        C6155o.m17023e("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: k5 */
    public final boolean mo9634k5(zzbdg zzbdgVar) {
        C6155o.m17017k(this.f18401i, "This Search Ad has already been torn down");
        this.f18400h.m18178f(zzbdgVar, this.f18396d);
        this.f18404l = new AsyncTaskC5638o(this, null).execute(new Void[0]);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: l1 */
    public final void mo9633l1(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: l3 */
    public final void mo9632l3(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: l6 */
    public final void mo9631l6(zzbis zzbisVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: m */
    public final void mo9630m() {
        C6155o.m17023e("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: m6 */
    public final void mo9629m6(AbstractC6779nl abstractC6779nl) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: o */
    public final void mo9628o() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: p0 */
    public final AbstractC6640ju mo9627p0() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: q */
    public final String mo9626q() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: s */
    public final Bundle mo9625s() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: s0 */
    public final void mo9624s0(boolean z) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: s5 */
    public final void mo9623s5(zzbhg zzbhgVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: t */
    public final AbstractC6304at mo9622t() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: u */
    public final AbstractC6491fu mo9621u() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: v */
    public final String mo9620v() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: v4 */
    public final void mo9619v4(AbstractC6377cs abstractC6377cs) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    public final AbstractC6253a zzi() {
        C6155o.m17023e("getAdFrame must be called on the main UI thread.");
        return BinderC6255b.m16744m2(this.f18401i);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    public final void zzt() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    public final zzbdl zzu() {
        return this.f18397e;
    }
}
