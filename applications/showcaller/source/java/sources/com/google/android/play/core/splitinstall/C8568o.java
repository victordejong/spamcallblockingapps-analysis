package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.internal.C8466a;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import p078c.p084c.p085a.p110c.p111a.p112a.AbstractC1967c;
/* renamed from: com.google.android.play.core.splitinstall.o */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/splitinstall/o.class */
public final class C8568o extends AbstractC1967c<AbstractC8554a> {

    /* renamed from: g */
    private static C8568o f38163g;

    /* renamed from: i */
    private final AbstractC8558e f38165i;

    /* renamed from: h */
    private final Handler f38164h = new Handler(Looper.getMainLooper());

    /* renamed from: j */
    private final Set<AbstractC8555b> f38166j = new LinkedHashSet();

    public C8568o(Context context, AbstractC8558e abstractC8558e) {
        super(new C8466a("SplitInstallListenerRegistry"), new IntentFilter("com.google.android.play.core.splitinstall.receiver.SplitInstallUpdateIntentService"), context);
        this.f38165i = abstractC8558e;
    }

    /* renamed from: f */
    public static C8568o m3331f(Context context) {
        C8568o c8568o;
        synchronized (C8568o.class) {
            try {
                if (f38163g == null) {
                    f38163g = new C8568o(context, EnumC8565l.f38153d);
                }
                c8568o = f38163g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c8568o;
    }

    @Override // p078c.p084c.p085a.p110c.p111a.p112a.AbstractC1967c
    /* renamed from: a */
    public final void mo3332a(Context context, Intent intent) {
        Bundle bundleExtra = intent.getBundleExtra("session_state");
        if (bundleExtra == null) {
            return;
        }
        AbstractC8554a m3352e = AbstractC8554a.m3352e(bundleExtra);
        this.f7049a.m3567a("ListenerRegistryBroadcastReceiver.onReceive: %s", m3352e);
        AbstractC8559f mo3337a = this.f38165i.mo3337a();
        if (m3352e.mo3344i() != 3 || mo3337a == null) {
            m3330g(m3352e);
        } else {
            mo3337a.mo3342a(m3352e.mo3348d(), new C8566m(this, m3352e, intent, context));
        }
    }

    /* renamed from: g */
    public final void m3330g(AbstractC8554a abstractC8554a) {
        synchronized (this) {
            Iterator it = new LinkedHashSet(this.f38166j).iterator();
            while (it.hasNext()) {
                ((AbstractC8555b) it.next()).m28433a(abstractC8554a);
            }
            super.m28430d(abstractC8554a);
        }
    }
}
