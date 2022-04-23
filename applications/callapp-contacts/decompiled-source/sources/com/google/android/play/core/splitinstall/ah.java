package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.a.c;
import com.google.android.play.core.internal.h;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/ah.class */
public final class ah extends c<c> {

    /* renamed from: a  reason: collision with root package name */
    private static ah f31497a;

    /* renamed from: c  reason: collision with root package name */
    private final t f31499c;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f31498b = new Handler(Looper.getMainLooper());
    private final Set<d> f = new LinkedHashSet();

    public ah(Context context, t tVar) {
        super(new h("SplitInstallListenerRegistry"), new IntentFilter("com.google.android.play.core.splitinstall.receiver.SplitInstallUpdateIntentService"), context);
        this.f31499c = tVar;
    }

    public static ah a(Context context) {
        ah ahVar;
        synchronized (ah.class) {
            try {
                if (f31497a == null) {
                    f31497a = new ah(context, aa.f31483a);
                }
                ahVar = f31497a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ahVar;
    }

    @Override // com.google.android.play.core.a.c
    public final void a(Context context, Intent intent) {
        Bundle bundleExtra = intent.getBundleExtra("session_state");
        if (bundleExtra != null) {
            c a2 = c.a(bundleExtra);
            this.f31030d.a("ListenerRegistryBroadcastReceiver.onReceive: %s", a2);
            u a3 = this.f31499c.a();
            if (a2.b() != 3 || a3 == null) {
                a(a2);
            } else {
                a3.a(a2.k(), new af(this, a2, intent, context));
            }
        }
    }

    public final void a(c cVar) {
        synchronized (this) {
            Iterator it2 = new LinkedHashSet(this.f).iterator();
            while (it2.hasNext()) {
                ((d) it2.next()).onStateUpdate(cVar);
            }
            super.a((ah) cVar);
        }
    }
}
