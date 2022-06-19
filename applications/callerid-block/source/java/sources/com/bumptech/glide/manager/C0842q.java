package com.bumptech.glide.manager;

import android.util.Log;
import com.bumptech.glide.p029o.C0857k;
import com.bumptech.glide.request.AbstractC0867c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
/* renamed from: com.bumptech.glide.manager.q */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/q.class */
public class C0842q {

    /* renamed from: a */
    private final Set<AbstractC0867c> f3802a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b */
    private final List<AbstractC0867c> f3803b = new ArrayList();

    /* renamed from: c */
    private boolean f3804c;

    /* renamed from: a */
    public boolean m10797a(AbstractC0867c abstractC0867c) {
        if (abstractC0867c == null) {
            return true;
        }
        boolean remove = this.f3802a.remove(abstractC0867c);
        boolean z = true;
        if (!this.f3803b.remove(abstractC0867c)) {
            z = remove;
        }
        if (z) {
            abstractC0867c.clear();
        }
        return z;
    }

    /* renamed from: b */
    public void m10796b() {
        for (AbstractC0867c abstractC0867c : C0857k.m10749i(this.f3802a)) {
            m10797a(abstractC0867c);
        }
        this.f3803b.clear();
    }

    /* renamed from: c */
    public void m10795c() {
        this.f3804c = true;
        for (AbstractC0867c abstractC0867c : C0857k.m10749i(this.f3802a)) {
            if (abstractC0867c.isRunning() || abstractC0867c.m10650j()) {
                abstractC0867c.clear();
                this.f3803b.add(abstractC0867c);
            }
        }
    }

    /* renamed from: d */
    public void m10794d() {
        this.f3804c = true;
        for (AbstractC0867c abstractC0867c : C0857k.m10749i(this.f3802a)) {
            if (abstractC0867c.isRunning()) {
                abstractC0867c.pause();
                this.f3803b.add(abstractC0867c);
            }
        }
    }

    /* renamed from: e */
    public void m10793e() {
        for (AbstractC0867c abstractC0867c : C0857k.m10749i(this.f3802a)) {
            if (!abstractC0867c.m10650j() && !abstractC0867c.m10652e()) {
                abstractC0867c.clear();
                if (!this.f3804c) {
                    abstractC0867c.m10651h();
                } else {
                    this.f3803b.add(abstractC0867c);
                }
            }
        }
    }

    /* renamed from: f */
    public void m10792f() {
        this.f3804c = false;
        for (AbstractC0867c abstractC0867c : C0857k.m10749i(this.f3802a)) {
            if (!abstractC0867c.m10650j() && !abstractC0867c.isRunning()) {
                abstractC0867c.m10651h();
            }
        }
        this.f3803b.clear();
    }

    /* renamed from: g */
    public void m10791g(AbstractC0867c abstractC0867c) {
        this.f3802a.add(abstractC0867c);
        if (!this.f3804c) {
            abstractC0867c.m10651h();
            return;
        }
        abstractC0867c.clear();
        if (Log.isLoggable("RequestTracker", 2)) {
            Log.v("RequestTracker", "Paused, delaying request");
        }
        this.f3803b.add(abstractC0867c);
    }

    public String toString() {
        return super.toString() + "{numRequests=" + this.f3802a.size() + ", isPaused=" + this.f3804c + "}";
    }
}
