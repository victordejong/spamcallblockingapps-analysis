package com.google.android.play.core.p377a;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.internal.C15088x;
import com.google.android.play.core.splitcompat.C15121q;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* renamed from: com.google.android.play.core.a.c */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/a/c.class */
public abstract class AbstractC14871c<StateT> {

    /* renamed from: a */
    private final IntentFilter f54298a;

    /* renamed from: b */
    private final Context f54299b;

    /* renamed from: d */
    public final C15072h f54301d;

    /* renamed from: e */
    protected final Set<AbstractC14869a<StateT>> f54302e = new HashSet();

    /* renamed from: c */
    private C14870b f54300c = null;

    /* renamed from: f */
    private volatile boolean f54303f = false;

    public AbstractC14871c(C15072h c15072h, IntentFilter intentFilter, Context context) {
        this.f54301d = c15072h;
        this.f54298a = intentFilter;
        this.f54299b = C15121q.m9423a(context);
    }

    /* renamed from: b */
    private final void m9829b() {
        C14870b c14870b;
        if ((this.f54303f || !this.f54302e.isEmpty()) && this.f54300c == null) {
            C14870b c14870b2 = new C14870b(this);
            this.f54300c = c14870b2;
            this.f54299b.registerReceiver(c14870b2, this.f54298a);
        }
        if (this.f54303f || !this.f54302e.isEmpty() || (c14870b = this.f54300c) == null) {
            return;
        }
        this.f54299b.unregisterReceiver(c14870b);
        this.f54300c = null;
    }

    /* renamed from: a */
    public abstract void mo9393a(Context context, Intent intent);

    /* renamed from: a */
    public final void m9832a(AbstractC14869a<StateT> abstractC14869a) {
        synchronized (this) {
            this.f54301d.m9508c("registerListener", new Object[0]);
            C15088x.m9480a(abstractC14869a, "Registered Play Core listener should not be null.");
            this.f54302e.add(abstractC14869a);
            m9829b();
        }
    }

    /* renamed from: a */
    public final void m9831a(StateT statet) {
        synchronized (this) {
            Iterator it2 = new HashSet(this.f54302e).iterator();
            while (it2.hasNext()) {
                ((AbstractC14869a) it2.next()).onStateUpdate(statet);
            }
        }
    }

    /* renamed from: a */
    public final void m9830a(boolean z) {
        synchronized (this) {
            this.f54303f = z;
            m9829b();
        }
    }

    /* renamed from: a */
    public final boolean m9833a() {
        boolean z;
        synchronized (this) {
            z = this.f54300c != null;
        }
        return z;
    }
}
