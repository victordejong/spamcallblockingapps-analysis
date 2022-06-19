package p134j4;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.assetpacks.AssetPackState;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.Executor;
import p029c4.C0821e;
import p122i2.RunnableC3087w;
import p122i2.RunnableC3089y;
import p189o4.AbstractC3879p;
import p200p4.AbstractC4015c;
import p201p6.C4018c;
/* renamed from: j4.t */
/* loaded from: classes-dex2jar.jar:j4/t.class */
public final class C3250t extends AbstractC4015c {

    /* renamed from: g */
    public final C3187b1 f10964g;

    /* renamed from: h */
    public final C3236o0 f10965h;

    /* renamed from: i */
    public final AbstractC3879p f10966i;

    /* renamed from: j */
    public final C3202f0 f10967j;

    /* renamed from: k */
    public final C3245r0 f10968k;

    /* renamed from: l */
    public final AbstractC3879p f10969l;

    /* renamed from: m */
    public final AbstractC3879p f10970m;

    /* renamed from: n */
    public final C3246r1 f10971n;

    /* renamed from: o */
    public final Handler f10972o = new Handler(Looper.getMainLooper());

    public C3250t(Context context, C3187b1 c3187b1, C3236o0 c3236o0, AbstractC3879p abstractC3879p, C3245r0 c3245r0, C3202f0 c3202f0, AbstractC3879p abstractC3879p2, AbstractC3879p abstractC3879p3, C3246r1 c3246r1) {
        super(new C4018c("AssetPackServiceListenerRegistry"), new IntentFilter("com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE"), context);
        this.f10964g = c3187b1;
        this.f10965h = c3236o0;
        this.f10966i = abstractC3879p;
        this.f10968k = c3245r0;
        this.f10967j = c3202f0;
        this.f10969l = abstractC3879p2;
        this.f10970m = abstractC3879p3;
        this.f10971n = c3246r1;
    }

    @Override // p200p4.AbstractC4015c
    /* renamed from: a */
    public final void mo1515a(Context context, Intent intent) {
        final Bundle bundleExtra = intent.getBundleExtra("com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE");
        if (bundleExtra == null) {
            this.f12626a.m1509c("Empty bundle received from broadcast.", new Object[0]);
            return;
        }
        ArrayList<String> stringArrayList = bundleExtra.getStringArrayList("pack_names");
        if (stringArrayList == null || stringArrayList.size() != 1) {
            this.f12626a.m1509c("Corrupt bundle received from broadcast.", new Object[0]);
            return;
        }
        final AssetPackState m4476i = AssetPackState.m4476i(bundleExtra, stringArrayList.get(0), this.f10968k, this.f10971n, C0821e.f3002c);
        this.f12626a.m1510b("ListenerRegistryBroadcastReceiver.onReceive: %s", m4476i);
        if (((PendingIntent) bundleExtra.getParcelable("confirmation_intent")) != null) {
            Objects.requireNonNull(this.f10967j);
        }
        ((Executor) this.f10970m.zza()).execute(new Runnable() { // from class: j4.r
            @Override // java.lang.Runnable
            public final void run() {
                C3250t c3250t = C3250t.this;
                Bundle bundle = bundleExtra;
                AssetPackState assetPackState = m4476i;
                C3187b1 c3187b1 = c3250t.f10964g;
                Objects.requireNonNull(c3187b1);
                if (((Boolean) c3187b1.m2562b(new C3251t0(c3187b1, bundle, 0))).booleanValue()) {
                    c3250t.f10972o.post(new RunnableC3089y(c3250t, assetPackState, 1));
                    ((AbstractC3228l2) c3250t.f10966i.zza()).zzf();
                }
            }
        });
        ((Executor) this.f10969l.zza()).execute(new RunnableC3087w(this, bundleExtra, 2));
    }
}
