package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.p377a.AbstractC14871c;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
/* renamed from: com.google.android.play.core.splitinstall.ah */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/ah.class */
public final class C15142ah extends AbstractC14871c<AbstractC15152c> {

    /* renamed from: a */
    private static C15142ah f54931a;

    /* renamed from: c */
    private final AbstractC15170t f54933c;

    /* renamed from: b */
    private final Handler f54932b = new Handler(Looper.getMainLooper());

    /* renamed from: f */
    private final Set<AbstractC15153d> f54934f = new LinkedHashSet();

    public C15142ah(Context context, AbstractC15170t abstractC15170t) {
        super(new C15072h("SplitInstallListenerRegistry"), new IntentFilter("com.google.android.play.core.splitinstall.receiver.SplitInstallUpdateIntentService"), context);
        this.f54933c = abstractC15170t;
    }

    /* renamed from: a */
    public static C15142ah m9394a(Context context) {
        C15142ah c15142ah;
        synchronized (C15142ah.class) {
            try {
                if (f54931a == null) {
                    f54931a = new C15142ah(context, EnumC15135aa.f54917a);
                }
                c15142ah = f54931a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c15142ah;
    }

    @Override // com.google.android.play.core.p377a.AbstractC14871c
    /* renamed from: a */
    public final void mo9393a(Context context, Intent intent) {
        Bundle bundleExtra = intent.getBundleExtra("session_state");
        if (bundleExtra == null) {
            return;
        }
        AbstractC15152c m9384a = AbstractC15152c.m9384a(bundleExtra);
        this.f54301d.m9511a("ListenerRegistryBroadcastReceiver.onReceive: %s", m9384a);
        AbstractC15171u mo9344a = this.f54933c.mo9344a();
        if (m9384a.mo9380b() != 3 || mo9344a == null) {
            m9390a(m9384a);
        } else {
            mo9344a.mo9343a(m9384a.mo9373k(), new C15140af(this, m9384a, intent, context));
        }
    }

    /* renamed from: a */
    public final void m9390a(AbstractC15152c abstractC15152c) {
        synchronized (this) {
            Iterator it2 = new LinkedHashSet(this.f54934f).iterator();
            while (it2.hasNext()) {
                ((AbstractC15153d) it2.next()).onStateUpdate(abstractC15152c);
            }
            super.m9831a((C15142ah) abstractC15152c);
        }
    }
}
