package com.google.android.play.core.assetpacks;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.a.c;
import com.google.android.play.core.internal.ba;
import com.google.android.play.core.internal.h;
import java.util.ArrayList;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/t.class */
public final class t extends c<b> {

    /* renamed from: a  reason: collision with root package name */
    final bb f31307a;

    /* renamed from: b  reason: collision with root package name */
    final am f31308b;

    /* renamed from: c  reason: collision with root package name */
    final ba<cs> f31309c;
    private final af f;
    private final ap g;
    private final ba<Executor> h;
    private final ba<Executor> i;
    private final Handler j = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(Context context, bb bbVar, am amVar, ba<cs> baVar, ap apVar, af afVar, ba<Executor> baVar2, ba<Executor> baVar3) {
        super(new h("AssetPackServiceListenerRegistry"), new IntentFilter("com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE"), context);
        this.f31307a = bbVar;
        this.f31308b = amVar;
        this.f31309c = baVar;
        this.g = apVar;
        this.f = afVar;
        this.h = baVar2;
        this.i = baVar3;
    }

    @Override // com.google.android.play.core.a.c
    public final void a(Context context, Intent intent) {
        final Bundle bundleExtra = intent.getBundleExtra("com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE");
        if (bundleExtra != null) {
            ArrayList<String> stringArrayList = bundleExtra.getStringArrayList("pack_names");
            if (stringArrayList == null || stringArrayList.size() != 1) {
                this.f31030d.b("Corrupt bundle received from broadcast.", new Object[0]);
                return;
            }
            final b a2 = b.a(bundleExtra, stringArrayList.get(0), this.g, v.f31311b);
            this.f31030d.a("ListenerRegistryBroadcastReceiver.onReceive: %s", a2);
            PendingIntent pendingIntent = (PendingIntent) bundleExtra.getParcelable("confirmation_intent");
            if (pendingIntent != null) {
                this.f.f31097a = pendingIntent;
            }
            this.i.a().execute(new Runnable(this, bundleExtra, a2) { // from class: com.google.android.play.core.assetpacks.r

                /* renamed from: a  reason: collision with root package name */
                private final t f31302a;

                /* renamed from: b  reason: collision with root package name */
                private final Bundle f31303b;

                /* renamed from: c  reason: collision with root package name */
                private final b f31304c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f31302a = this;
                    this.f31303b = bundleExtra;
                    this.f31304c = a2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    t tVar = this.f31302a;
                    Bundle bundle = this.f31303b;
                    b bVar = this.f31304c;
                    bb bbVar = tVar.f31307a;
                    if (((Boolean) bbVar.a(new ar(bbVar, bundle))).booleanValue()) {
                        tVar.a(bVar);
                        tVar.f31309c.a().a();
                    }
                }
            });
            this.h.a().execute(new Runnable(this, bundleExtra) { // from class: com.google.android.play.core.assetpacks.s

                /* renamed from: a  reason: collision with root package name */
                private final t f31305a;

                /* renamed from: b  reason: collision with root package name */
                private final Bundle f31306b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f31305a = this;
                    this.f31306b = bundleExtra;
                }

                /* JADX WARN: Code restructure failed: missing block: B:60:0x0343, code lost:
                    throw new com.google.android.play.core.assetpacks.al(java.lang.String.format("Cannot find pack files to move for pack %s.", r0.k), r0.j);
                 */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        Method dump skipped, instructions count: 960
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.assetpacks.s.run():void");
                }
            });
            return;
        }
        this.f31030d.b("Empty bundle received from broadcast.", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final b bVar) {
        this.j.post(new Runnable(this, bVar) { // from class: com.google.android.play.core.assetpacks.q

            /* renamed from: a  reason: collision with root package name */
            private final t f31300a;

            /* renamed from: b  reason: collision with root package name */
            private final b f31301b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31300a = this;
                this.f31301b = bVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f31300a.a((t) this.f31301b);
            }
        });
    }
}
