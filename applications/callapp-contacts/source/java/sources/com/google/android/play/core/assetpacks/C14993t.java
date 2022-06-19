package com.google.android.play.core.assetpacks;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.internal.AbstractC15037ba;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.p377a.AbstractC14871c;
import java.util.ArrayList;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.assetpacks.t */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/t.class */
public final class C14993t extends AbstractC14871c<AbstractC14926b> {

    /* renamed from: a */
    final C14928bb f54702a;

    /* renamed from: b */
    final C14912am f54703b;

    /* renamed from: c */
    final AbstractC15037ba<AbstractC14972cs> f54704c;

    /* renamed from: f */
    private final C14905af f54705f;

    /* renamed from: g */
    private final C14915ap f54706g;

    /* renamed from: h */
    private final AbstractC15037ba<Executor> f54707h;

    /* renamed from: i */
    private final AbstractC15037ba<Executor> f54708i;

    /* renamed from: j */
    private final Handler f54709j = new Handler(Looper.getMainLooper());

    public C14993t(Context context, C14928bb c14928bb, C14912am c14912am, AbstractC15037ba<AbstractC14972cs> abstractC15037ba, C14915ap c14915ap, C14905af c14905af, AbstractC15037ba<Executor> abstractC15037ba2, AbstractC15037ba<Executor> abstractC15037ba3) {
        super(new C15072h("AssetPackServiceListenerRegistry"), new IntentFilter("com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE"), context);
        this.f54702a = c14928bb;
        this.f54703b = c14912am;
        this.f54704c = abstractC15037ba;
        this.f54706g = c14915ap;
        this.f54705f = c14905af;
        this.f54707h = abstractC15037ba2;
        this.f54708i = abstractC15037ba3;
    }

    @Override // com.google.android.play.core.p377a.AbstractC14871c
    /* renamed from: a */
    public final void mo9393a(Context context, Intent intent) {
        Bundle bundleExtra = intent.getBundleExtra("com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE");
        if (bundleExtra == null) {
            this.f54301d.m9509b("Empty bundle received from broadcast.", new Object[0]);
            return;
        }
        ArrayList<String> stringArrayList = bundleExtra.getStringArrayList("pack_names");
        if (stringArrayList == null || stringArrayList.size() != 1) {
            this.f54301d.m9509b("Corrupt bundle received from broadcast.", new Object[0]);
            return;
        }
        AbstractC14926b m9773a = AbstractC14926b.m9773a(bundleExtra, stringArrayList.get(0), this.f54706g, C14995v.f54711b);
        this.f54301d.m9511a("ListenerRegistryBroadcastReceiver.onReceive: %s", m9773a);
        PendingIntent pendingIntent = (PendingIntent) bundleExtra.getParcelable("confirmation_intent");
        if (pendingIntent != null) {
            this.f54705f.f54390a = pendingIntent;
        }
        this.f54708i.mo9335a().execute(new Runnable(this, bundleExtra, m9773a) { // from class: com.google.android.play.core.assetpacks.r

            /* renamed from: a */
            private final C14993t f54697a;

            /* renamed from: b */
            private final Bundle f54698b;

            /* renamed from: c */
            private final AbstractC14926b f54699c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f54697a = this;
                this.f54698b = bundleExtra;
                this.f54699c = m9773a;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C14993t c14993t = this.f54697a;
                Bundle bundle = this.f54698b;
                AbstractC14926b abstractC14926b = this.f54699c;
                C14928bb c14928bb = c14993t.f54702a;
                if (((Boolean) c14928bb.m9761a(new C14917ar(c14928bb, bundle))).booleanValue()) {
                    c14993t.m9671a(abstractC14926b);
                    c14993t.f54704c.mo9335a().mo9696a();
                }
            }
        });
        this.f54707h.mo9335a().execute(new Runnable(this, bundleExtra) { // from class: com.google.android.play.core.assetpacks.s

            /* renamed from: a */
            private final C14993t f54700a;

            /* renamed from: b */
            private final Bundle f54701b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f54700a = this;
                this.f54701b = bundleExtra;
            }

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
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.assetpacks.RunnableC14992s.run():void");
            }
        });
    }

    /* renamed from: a */
    public final void m9671a(AbstractC14926b abstractC14926b) {
        this.f54709j.post(new Runnable(this, abstractC14926b) { // from class: com.google.android.play.core.assetpacks.q

            /* renamed from: a */
            private final C14993t f54695a;

            /* renamed from: b */
            private final AbstractC14926b f54696b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f54695a = this;
                this.f54696b = abstractC14926b;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f54695a.m9831a((C14993t) this.f54696b);
            }
        });
    }
}
