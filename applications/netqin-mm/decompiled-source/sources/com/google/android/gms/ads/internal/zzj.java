package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.applovin.sdk.AppLovinEventParameters;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzaak;
import com.google.android.gms.internal.ads.zzaby;
import com.google.android.gms.internal.ads.zzacm;
import com.google.android.gms.internal.ads.zzari;
import com.google.android.gms.internal.ads.zzaro;
import com.google.android.gms.internal.ads.zzaug;
import com.google.android.gms.internal.ads.zzbbg;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbbx;
import com.google.android.gms.internal.ads.zzbbz;
import com.google.android.gms.internal.ads.zzef;
import com.google.android.gms.internal.ads.zzeg;
import com.google.android.gms.internal.ads.zzsh;
import com.google.android.gms.internal.ads.zzvg;
import com.google.android.gms.internal.ads.zzvn;
import com.google.android.gms.internal.ads.zzvs;
import com.google.android.gms.internal.ads.zzwm;
import com.google.android.gms.internal.ads.zzwo;
import com.google.android.gms.internal.ads.zzwt;
import com.google.android.gms.internal.ads.zzxf;
import com.google.android.gms.internal.ads.zzxj;
import com.google.android.gms.internal.ads.zzxk;
import com.google.android.gms.internal.ads.zzxq;
import com.google.android.gms.internal.ads.zzyi;
import com.google.android.gms.internal.ads.zzyn;
import com.google.android.gms.internal.ads.zzyo;
import com.google.android.gms.internal.ads.zzyu;
import java.util.Map;
import java.util.concurrent.Future;
import p131c.p161d.p170b.p224d.p225a.p228c.AsyncTaskC3233e;
import p131c.p161d.p170b.p224d.p225a.p228c.C3232d;
import p131c.p161d.p170b.p224d.p225a.p228c.C3235g;
import p131c.p161d.p170b.p224d.p225a.p228c.CallableC3234f;
import p131c.p161d.p170b.p224d.p225a.p228c.View$OnTouchListenerC3231c;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzj.class */
public final class zzj extends zzxf {

    /* renamed from: a */
    public final zzbbx f22812a;

    /* renamed from: b */
    public final zzvn f22813b;

    /* renamed from: c */
    public final Future<zzeg> f22814c = zzbbz.f24764a.mo12977a(new CallableC3234f(this));

    /* renamed from: d */
    public final Context f22815d;

    /* renamed from: e */
    public final C3235g f22816e;

    /* renamed from: f */
    public WebView f22817f;

    /* renamed from: g */
    public zzwt f22818g;

    /* renamed from: h */
    public zzeg f22819h;

    /* renamed from: i */
    public AsyncTask<Void, Void, String> f22820i;

    public zzj(Context context, zzvn zzvnVar, String str, zzbbx zzbbxVar) {
        this.f22815d = context;
        this.f22812a = zzbbxVar;
        this.f22813b = zzvnVar;
        this.f22817f = new WebView(this.f22815d);
        this.f22816e = new C3235g(context, str);
        m17974f(0);
        this.f22817f.setVerticalScrollBarEnabled(false);
        this.f22817f.getSettings().setJavaScriptEnabled(true);
        this.f22817f.setWebViewClient(new C3232d(this));
        this.f22817f.setOnTouchListener(new View$OnTouchListenerC3231c(this));
    }

    @VisibleForTesting
    /* renamed from: C */
    public final int m17987C(String str) {
        String queryParameter = Uri.parse(str).getQueryParameter("height");
        if (TextUtils.isEmpty(queryParameter)) {
            return 0;
        }
        try {
            zzwm.m11170a();
            return zzbbg.m15897b(this.f22815d, Integer.parseInt(queryParameter));
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    /* renamed from: D */
    public final String m17986D(String str) {
        if (this.f22819h == null) {
            return str;
        }
        Uri parse = Uri.parse(str);
        try {
            parse = this.f22819h.m12601a(parse, this.f22815d, null, null);
        } catch (zzef e) {
            zzbbq.m15853c("Unable to process ad data", e);
        }
        return parse.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: D1 */
    public final zzxk mo10970D1() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    /* renamed from: E */
    public final void m17985E(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        this.f22815d.startActivity(intent);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: G */
    public final Bundle mo10969G() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: Q0 */
    public final IObjectWrapper mo10968Q0() throws RemoteException {
        Preconditions.m17286a("getAdFrame must be called on the main UI thread.");
        return ObjectWrapper.m17020a(this.f22817f);
    }

    @VisibleForTesting
    /* renamed from: Q1 */
    public final String m17984Q1() {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https://").appendEncodedPath(zzacm.f23964d.mo16862a());
        builder.appendQueryParameter(AppLovinEventParameters.SEARCH_QUERY, this.f22816e.m27307a());
        builder.appendQueryParameter("pubId", this.f22816e.m27304c());
        Map<String, String> d = this.f22816e.m27303d();
        for (String str : d.keySet()) {
            builder.appendQueryParameter(str, d.get(str));
        }
        Uri build = builder.build();
        zzeg zzegVar = this.f22819h;
        Uri uri = build;
        if (zzegVar != null) {
            try {
                uri = zzegVar.m12602a(build, this.f22815d);
            } catch (zzef e) {
                zzbbq.m15853c("Unable to process ad data", e);
                uri = build;
            }
        }
        String T1 = m17983T1();
        String encodedQuery = uri.getEncodedQuery();
        StringBuilder sb = new StringBuilder(String.valueOf(T1).length() + 1 + String.valueOf(encodedQuery).length());
        sb.append(T1);
        sb.append("#");
        sb.append(encodedQuery);
        return sb.toString();
    }

    @VisibleForTesting
    /* renamed from: T1 */
    public final String m17983T1() {
        String b = this.f22816e.m27305b();
        String str = b;
        if (TextUtils.isEmpty(b)) {
            str = "www.google.com";
        }
        String a = zzacm.f23964d.mo16862a();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 8 + String.valueOf(a).length());
        sb.append("https://");
        sb.append(str);
        sb.append(a);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: V1 */
    public final void mo10967V1() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: X0 */
    public final zzwt mo10966X0() {
        throw new IllegalStateException("getIAdListener not implemented");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final String mo10965a() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10964a(zzaak zzaakVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10963a(zzaby zzabyVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10962a(zzari zzariVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10961a(zzaro zzaroVar, String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10960a(zzaug zzaugVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10959a(zzsh zzshVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10958a(zzvn zzvnVar) throws RemoteException {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10957a(zzvs zzvsVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10956a(zzwo zzwoVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10955a(zzxj zzxjVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10954a(zzxk zzxkVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10953a(zzxq zzxqVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10952a(zzyi zzyiVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10951a(zzyu zzyuVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10949a(boolean z) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: b */
    public final void mo10946b(zzwt zzwtVar) throws RemoteException {
        this.f22818g = zzwtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: b */
    public final boolean mo10948b() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: b */
    public final boolean mo10947b(zzvg zzvgVar) throws RemoteException {
        Preconditions.m17287a(this.f22817f, "This Search Ad has already been torn down");
        this.f22816e.m27306a(zzvgVar, this.f22812a);
        this.f22820i = new AsyncTaskC3233e(this, null).execute(new Void[0]);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: d */
    public final void mo10945d(String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void destroy() throws RemoteException {
        Preconditions.m17286a("destroy must be called on the main UI thread.");
        this.f22820i.cancel(true);
        this.f22814c.cancel(true);
        this.f22817f.destroy();
        this.f22817f = null;
    }

    @VisibleForTesting
    /* renamed from: f */
    public final void m17974f(int i) {
        if (this.f22817f != null) {
            this.f22817f.setLayoutParams(new ViewGroup.LayoutParams(-1, i));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: f */
    public final void mo10944f(boolean z) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: f2 */
    public final zzvn mo10943f2() throws RemoteException {
        return this.f22813b;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final String getAdUnitId() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final zzyo getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: i */
    public final void mo10942i(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: k0 */
    public final String mo10941k0() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: l */
    public final zzyn mo10940l() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: n */
    public final boolean mo10939n() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void pause() throws RemoteException {
        Preconditions.m17286a("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void resume() throws RemoteException {
        Preconditions.m17286a("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void showInterstitial() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: x1 */
    public final void mo10938x1() throws RemoteException {
    }
}
