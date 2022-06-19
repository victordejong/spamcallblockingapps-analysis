package com.google.android.play.core.assetpacks;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.internal.AbstractC8509p0;
import com.google.android.play.core.internal.C8466a;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import p078c.p084c.p085a.p110c.p111a.p112a.AbstractC1967c;
/* renamed from: com.google.android.play.core.assetpacks.s */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/s.class */
public final class C8434s extends AbstractC1967c<AssetPackState> {

    /* renamed from: g */
    private final C8459z0 f37910g;

    /* renamed from: h */
    private final C8403k0 f37911h;

    /* renamed from: i */
    private final AbstractC8509p0<AbstractC8433r2> f37912i;

    /* renamed from: j */
    private final C8379e0 f37913j;

    /* renamed from: k */
    private final C8415n0 f37914k;

    /* renamed from: l */
    private final AbstractC8509p0<Executor> f37915l;

    /* renamed from: m */
    private final AbstractC8509p0<Executor> f37916m;

    /* renamed from: n */
    private final Handler f37917n = new Handler(Looper.getMainLooper());

    public C8434s(Context context, C8459z0 c8459z0, C8403k0 c8403k0, AbstractC8509p0<AbstractC8433r2> abstractC8509p0, C8415n0 c8415n0, C8379e0 c8379e0, AbstractC8509p0<Executor> abstractC8509p02, AbstractC8509p0<Executor> abstractC8509p03) {
        super(new C8466a("AssetPackServiceListenerRegistry"), new IntentFilter("com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE"), context);
        this.f37910g = c8459z0;
        this.f37911h = c8403k0;
        this.f37912i = abstractC8509p0;
        this.f37914k = c8415n0;
        this.f37913j = c8379e0;
        this.f37915l = abstractC8509p02;
        this.f37916m = abstractC8509p03;
    }

    @Override // p078c.p084c.p085a.p110c.p111a.p112a.AbstractC1967c
    /* renamed from: a */
    public final void mo3332a(Context context, Intent intent) {
        Bundle bundleExtra = intent.getBundleExtra("com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE");
        if (bundleExtra == null) {
            this.f7049a.m3566b("Empty bundle received from broadcast.", new Object[0]);
            return;
        }
        ArrayList<String> stringArrayList = bundleExtra.getStringArrayList("pack_names");
        if (stringArrayList == null || stringArrayList.size() != 1) {
            this.f7049a.m3566b("Corrupt bundle received from broadcast.", new Object[0]);
            return;
        }
        AssetPackState m3794e = AssetPackState.m3794e(bundleExtra, stringArrayList.get(0), this.f37914k, C8442u.f37941b);
        this.f7049a.m3567a("ListenerRegistryBroadcastReceiver.onReceive: %s", m3794e);
        PendingIntent pendingIntent = (PendingIntent) bundleExtra.getParcelable("confirmation_intent");
        if (pendingIntent != null) {
            this.f37913j.m3760a(pendingIntent);
        }
        this.f37916m.m3482a().execute(new Runnable(this, bundleExtra, m3794e) { // from class: com.google.android.play.core.assetpacks.q

            /* renamed from: d */
            private final C8434s f37884d;

            /* renamed from: e */
            private final Bundle f37885e;

            /* renamed from: f */
            private final AssetPackState f37886f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f37884d = this;
                this.f37885e = bundleExtra;
                this.f37886f = m3794e;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f37884d.m3676h(this.f37885e, this.f37886f);
            }
        });
        this.f37915l.m3482a().execute(new Runnable(this, bundleExtra) { // from class: com.google.android.play.core.assetpacks.r

            /* renamed from: d */
            private final C8434s f37898d;

            /* renamed from: e */
            private final Bundle f37899e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f37898d = this;
                this.f37899e = bundleExtra;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f37898d.m3677g(this.f37899e);
            }
        });
    }

    /* renamed from: f */
    public final void m3678f(AssetPackState assetPackState) {
        this.f37917n.post(new Runnable(this, assetPackState) { // from class: com.google.android.play.core.assetpacks.p

            /* renamed from: d */
            private final C8434s f37877d;

            /* renamed from: e */
            private final AssetPackState f37878e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f37877d = this;
                this.f37878e = assetPackState;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f37877d.m28430d(this.f37878e);
            }
        });
    }

    /* renamed from: g */
    public final /* synthetic */ void m3677g(Bundle bundle) {
        if (this.f37910g.m3597d(bundle)) {
            this.f37911h.m3722a();
        }
    }

    /* renamed from: h */
    public final /* synthetic */ void m3676h(Bundle bundle, AssetPackState assetPackState) {
        if (this.f37910g.m3596e(bundle)) {
            m3678f(assetPackState);
            this.f37912i.m3482a().mo3685a();
        }
    }
}
