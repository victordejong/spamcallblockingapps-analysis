package com.google.android.play.core.a;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.play.core.internal.h;
import com.google.android.play.core.internal.x;
import com.google.android.play.core.splitcompat.q;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/a/c.class */
public abstract class c<StateT> {

    /* renamed from: a  reason: collision with root package name */
    private final IntentFilter f31027a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f31028b;

    /* renamed from: d  reason: collision with root package name */
    public final h f31030d;
    protected final Set<a<StateT>> e = new HashSet();

    /* renamed from: c  reason: collision with root package name */
    private b f31029c = null;
    private volatile boolean f = false;

    public c(h hVar, IntentFilter intentFilter, Context context) {
        this.f31030d = hVar;
        this.f31027a = intentFilter;
        this.f31028b = q.a(context);
    }

    private final void b() {
        b bVar;
        if ((this.f || !this.e.isEmpty()) && this.f31029c == null) {
            b bVar2 = new b(this);
            this.f31029c = bVar2;
            this.f31028b.registerReceiver(bVar2, this.f31027a);
        }
        if (!this.f && this.e.isEmpty() && (bVar = this.f31029c) != null) {
            this.f31028b.unregisterReceiver(bVar);
            this.f31029c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a(Context context, Intent intent);

    public final void a(a<StateT> aVar) {
        synchronized (this) {
            this.f31030d.c("registerListener", new Object[0]);
            x.a(aVar, "Registered Play Core listener should not be null.");
            this.e.add(aVar);
            b();
        }
    }

    public final void a(StateT statet) {
        synchronized (this) {
            Iterator it2 = new HashSet(this.e).iterator();
            while (it2.hasNext()) {
                ((a) it2.next()).onStateUpdate(statet);
            }
        }
    }

    public final void a(boolean z) {
        synchronized (this) {
            this.f = z;
            b();
        }
    }

    public final boolean a() {
        boolean z;
        synchronized (this) {
            z = this.f31029c != null;
        }
        return z;
    }
}
