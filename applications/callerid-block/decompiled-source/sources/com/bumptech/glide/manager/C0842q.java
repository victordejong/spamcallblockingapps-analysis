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
    public boolean m10797a(AbstractC0867c cVar) {
        if (cVar == null) {
            return true;
        }
        boolean remove = this.f3802a.remove(cVar);
        boolean z = true;
        if (!this.f3803b.remove(cVar)) {
            z = remove;
        }
        if (z) {
            cVar.clear();
        }
        return z;
    }

    /* renamed from: b */
    public void m10796b() {
        for (AbstractC0867c cVar : C0857k.m10749i(this.f3802a)) {
            m10797a(cVar);
        }
        this.f3803b.clear();
    }

    /* renamed from: c */
    public void m10795c() {
        this.f3804c = true;
        for (AbstractC0867c cVar : C0857k.m10749i(this.f3802a)) {
            if (cVar.isRunning() || cVar.m10650j()) {
                cVar.clear();
                this.f3803b.add(cVar);
            }
        }
    }

    /* renamed from: d */
    public void m10794d() {
        this.f3804c = true;
        for (AbstractC0867c cVar : C0857k.m10749i(this.f3802a)) {
            if (cVar.isRunning()) {
                cVar.pause();
                this.f3803b.add(cVar);
            }
        }
    }

    /* renamed from: e */
    public void m10793e() {
        for (AbstractC0867c cVar : C0857k.m10749i(this.f3802a)) {
            if (!cVar.m10650j() && !cVar.m10652e()) {
                cVar.clear();
                if (!this.f3804c) {
                    cVar.m10651h();
                } else {
                    this.f3803b.add(cVar);
                }
            }
        }
    }

    /* renamed from: f */
    public void m10792f() {
        this.f3804c = false;
        for (AbstractC0867c cVar : C0857k.m10749i(this.f3802a)) {
            if (!cVar.m10650j() && !cVar.isRunning()) {
                cVar.m10651h();
            }
        }
        this.f3803b.clear();
    }

    /* renamed from: g */
    public void m10791g(AbstractC0867c cVar) {
        this.f3802a.add(cVar);
        if (!this.f3804c) {
            cVar.m10651h();
            return;
        }
        cVar.clear();
        if (Log.isLoggable("RequestTracker", 2)) {
            Log.v("RequestTracker", "Paused, delaying request");
        }
        this.f3803b.add(cVar);
    }

    public String toString() {
        return super.toString() + "{numRequests=" + this.f3802a.size() + ", isPaused=" + this.f3804c + "}";
    }
}
