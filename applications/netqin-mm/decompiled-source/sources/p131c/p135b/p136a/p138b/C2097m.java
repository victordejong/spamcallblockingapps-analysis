package p131c.p135b.p136a.p138b;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Handler;
import android.os.StrictMode;
import android.text.TextUtils;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.adview.AppLovinInterstitialActivity;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.impl.adview.AbstractActivityC6931n;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p151e.C2267f;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2389h;
/* renamed from: c.b.a.b.m */
/* loaded from: classes-dex2jar.jar:c/b/a/b/m.class */
public class C2097m implements AppLovinInterstitialAdDialog {

    /* renamed from: k */
    public static final Map<String, C2097m> f8079k = Collections.synchronizedMap(new HashMap());

    /* renamed from: l */
    public static volatile boolean f8080l = false;

    /* renamed from: m */
    public static volatile boolean f8081m = false;

    /* renamed from: a */
    public final String f8082a;

    /* renamed from: b */
    public final C2341l f8083b;

    /* renamed from: c */
    public final WeakReference<Context> f8084c;

    /* renamed from: d */
    public volatile AppLovinAdLoadListener f8085d;

    /* renamed from: e */
    public volatile AppLovinAdDisplayListener f8086e;

    /* renamed from: f */
    public volatile AppLovinAdVideoPlaybackListener f8087f;

    /* renamed from: g */
    public volatile AppLovinAdClickListener f8088g;

    /* renamed from: h */
    public volatile AbstractC7036g f8089h;

    /* renamed from: i */
    public volatile AbstractC7036g.EnumC7038b f8090i;

    /* renamed from: j */
    public volatile AbstractC2086i f8091j;

    /* renamed from: c.b.a.b.m$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/m$a.class */
    public class C2098a implements AppLovinAdLoadListener {
        public C2098a() {
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            C2097m.this.m31062b(appLovinAd);
            C2097m.this.showAndRender(appLovinAd);
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            C2097m.this.m31076a(i);
        }
    }

    /* renamed from: c.b.a.b.m$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/m$b.class */
    public class RunnableC2099b implements Runnable {
        public RunnableC2099b(C2097m mVar) {
        }

        @Override // java.lang.Runnable
        public void run() {
            System.gc();
        }
    }

    /* renamed from: c.b.a.b.m$c */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/m$c.class */
    public class RunnableC2100c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f8093a;

        /* renamed from: b */
        public final /* synthetic */ long f8094b;

        /* renamed from: c.b.a.b.m$c$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/b/m$c$a.class */
        public class RunnableC2101a implements Runnable {
            public RunnableC2101a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                RunnableC2100c cVar = RunnableC2100c.this;
                C2097m.this.m31075a(cVar.f8093a);
            }
        }

        public RunnableC2100c(Context context, long j) {
            this.f8093a = context;
            this.f8094b = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            new Handler(this.f8093a.getMainLooper()).postDelayed(new RunnableC2101a(), this.f8094b);
        }
    }

    /* renamed from: c.b.a.b.m$d */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/m$d.class */
    public class DialogInterface$OnDismissListenerC2102d implements DialogInterface.OnDismissListener {

        /* renamed from: a */
        public final /* synthetic */ Runnable f8097a;

        public DialogInterface$OnDismissListenerC2102d(C2097m mVar, Runnable runnable) {
            this.f8097a = runnable;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            this.f8097a.run();
        }
    }

    /* renamed from: c.b.a.b.m$e */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/m$e.class */
    public class RunnableC2103e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinAd f8098a;

        public RunnableC2103e(AppLovinAd appLovinAd) {
            this.f8098a = appLovinAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C2097m.this.f8085d != null) {
                C2097m.this.f8085d.adReceived(this.f8098a);
            }
        }
    }

    /* renamed from: c.b.a.b.m$f */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/m$f.class */
    public class RunnableC2104f implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f8100a;

        public RunnableC2104f(int i) {
            this.f8100a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C2097m.this.f8085d != null) {
                C2097m.this.f8085d.failedToReceiveAd(this.f8100a);
            }
        }
    }

    /* renamed from: c.b.a.b.m$g */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/m$g.class */
    public class RunnableC2105g implements Runnable {
        public RunnableC2105g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C2097m.this.f8091j != null) {
                C2097m.this.f8091j.dismiss();
            }
        }
    }

    public C2097m(AppLovinSdk appLovinSdk, Context context) {
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        } else if (context != null) {
            this.f8083b = AbstractC2426r.m29811a(appLovinSdk);
            this.f8082a = UUID.randomUUID().toString();
            this.f8084c = new WeakReference<>(context);
            f8080l = true;
            f8081m = false;
        } else {
            throw new IllegalArgumentException("No context specified");
        }
    }

    /* renamed from: a */
    public static C2097m m31065a(String str) {
        return f8079k.get(str);
    }

    /* renamed from: a */
    public C2341l m31077a() {
        return this.f8083b;
    }

    /* renamed from: a */
    public final void m31076a(int i) {
        AppLovinSdkUtils.runOnUiThread(new RunnableC2104f(i));
    }

    /* renamed from: a */
    public final void m31075a(Context context) {
        Intent intent = new Intent(context, this.f8089h.m18867v0() ? AppLovinFullscreenActivity.class : AppLovinInterstitialActivity.class);
        intent.putExtra(AbstractActivityC6931n.KEY_WRAPPER_ID, this.f8082a);
        AbstractActivityC6931n.lastKnownWrapper = this;
        AppLovinFullscreenActivity.parentInterstitialWrapper = this;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        if (context instanceof Activity) {
            context.startActivity(intent);
            ((Activity) context).overridePendingTransition(0, 0);
        } else {
            intent.setFlags(268435456);
            context.startActivity(intent);
        }
        StrictMode.setThreadPolicy(allowThreadDiskReads);
    }

    /* renamed from: a */
    public void m31074a(AbstractC2086i iVar) {
        this.f8091j = iVar;
    }

    /* renamed from: a */
    public final void m31069a(AbstractC7036g gVar, Context context) {
        if (this.f8083b.m30234y().m30674b() == null) {
            gVar.m18916b(true);
            this.f8083b.m30248k().m30522a(C2267f.f8892p);
        }
        f8079k.put(this.f8082a, this);
        if (((Boolean) this.f8083b.m30291a(C2251d.C2256e.f8674g4)).booleanValue()) {
            this.f8083b.m30249j().m18816b().execute(new RunnableC2099b(this));
        }
        this.f8089h = gVar;
        this.f8090i = this.f8089h.m18865w0();
        long max = Math.max(0L, ((Long) this.f8083b.m30291a(C2251d.C2256e.f8589Q1)).longValue());
        C2374t d0 = this.f8083b.m30262d0();
        d0.m30044b("InterstitialAdDialogWrapper", "Presenting ad with delay of " + max);
        m31068a(gVar, context, new RunnableC2100c(context, max));
    }

    /* renamed from: a */
    public final void m31068a(AbstractC7036g gVar, Context context, Runnable runnable) {
        if (!TextUtils.isEmpty(gVar.m18880p()) || !gVar.m18895h0() || C2389h.m29964a(context) || !(context instanceof Activity)) {
            runnable.run();
            return;
        }
        AlertDialog create = new AlertDialog.Builder(context).setTitle(gVar.m18893i0()).setMessage(gVar.m18891j0()).setPositiveButton(gVar.m18889k0(), (DialogInterface.OnClickListener) null).create();
        create.setOnDismissListener(new DialogInterface$OnDismissListenerC2102d(this, runnable));
        create.show();
    }

    /* renamed from: a */
    public final void m31067a(AppLovinAd appLovinAd) {
        if (this.f8086e != null) {
            this.f8086e.adHidden(appLovinAd);
        }
    }

    /* renamed from: a */
    public void m31066a(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f8083b.m30299W().loadNextAd(AppLovinAdSize.INTERSTITIAL, appLovinAdLoadListener);
    }

    /* renamed from: b */
    public AbstractC7036g m31064b() {
        return this.f8089h;
    }

    /* renamed from: b */
    public final void m31062b(AppLovinAd appLovinAd) {
        AppLovinSdkUtils.runOnUiThread(new RunnableC2103e(appLovinAd));
    }

    /* renamed from: c */
    public AppLovinAdVideoPlaybackListener m31061c() {
        return this.f8087f;
    }

    /* renamed from: d */
    public AppLovinAdDisplayListener m31060d() {
        return this.f8086e;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void dismiss() {
        AppLovinSdkUtils.runOnUiThread(new RunnableC2105g());
    }

    /* renamed from: e */
    public AppLovinAdClickListener m31059e() {
        return this.f8088g;
    }

    /* renamed from: f */
    public AbstractC7036g.EnumC7038b m31058f() {
        return this.f8090i;
    }

    /* renamed from: g */
    public void m31057g() {
        f8080l = false;
        f8081m = true;
        f8079k.remove(this.f8082a);
        if (this.f8089h != null && this.f8089h.m18864x()) {
            this.f8091j = null;
        }
    }

    /* renamed from: h */
    public final Context m31056h() {
        WeakReference<Context> weakReference = this.f8084c;
        return weakReference != null ? weakReference.get() : null;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public boolean isAdReadyToDisplay() {
        return this.f8083b.m30299W().hasPreloadedAd(AppLovinAdSize.INTERSTITIAL);
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener) {
        this.f8088g = appLovinAdClickListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.f8086e = appLovinAdDisplayListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f8085d = appLovinAdLoadListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdVideoPlaybackListener(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        this.f8087f = appLovinAdVideoPlaybackListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void show() {
        m31066a(new C2098a());
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void showAndRender(AppLovinAd appLovinAd) {
        String str;
        C2374t tVar;
        Context h = m31056h();
        if (h != null) {
            AppLovinAd a = AbstractC2426r.m29814a(appLovinAd, this.f8083b);
            if (a == null) {
                tVar = this.f8083b.m30262d0();
                str = "Failed to show ad: " + appLovinAd;
            } else if (((AppLovinAdBase) a).hasShown() && ((Boolean) this.f8083b.m30291a(C2251d.C2256e.f8759v1)).booleanValue()) {
                throw new IllegalStateException("Failed to display ad - ad can only be displayed once. Load the next ad.");
            } else if (a instanceof AbstractC7036g) {
                m31069a((AbstractC7036g) a, h);
                return;
            } else {
                this.f8083b.m30262d0().m30039e("InterstitialAdDialogWrapper", "Failed to show interstitial: unknown ad type provided: '" + a + "'");
                m31067a(a);
                return;
            }
        } else {
            tVar = this.f8083b.m30262d0();
            str = "Failed to show interstitial: stale activity reference provided";
        }
        tVar.m30039e("InterstitialAdDialogWrapper", str);
        m31067a(appLovinAd);
    }

    public String toString() {
        return "AppLovinInterstitialAdDialog{}";
    }
}
