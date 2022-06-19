package com.bumptech.glide.manager;

import android.util.Log;
import com.bumptech.glide.p223p.C4383k;
import com.bumptech.glide.request.AbstractC4399c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
/* renamed from: com.bumptech.glide.manager.q */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/q.class */
public class C4351q {

    /* renamed from: a */
    private final Set<AbstractC4399c> f13333a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b */
    private final List<AbstractC4399c> f13334b = new ArrayList();

    /* renamed from: c */
    private boolean f13335c;

    /* renamed from: a */
    public boolean m22808a(AbstractC4399c abstractC4399c) {
        if (abstractC4399c == null) {
            return true;
        }
        boolean remove = this.f13333a.remove(abstractC4399c);
        boolean z = true;
        if (!this.f13334b.remove(abstractC4399c)) {
            z = remove;
        }
        if (z) {
            abstractC4399c.clear();
        }
        return z;
    }

    /* renamed from: b */
    public void m22807b() {
        for (AbstractC4399c abstractC4399c : C4383k.m22709i(this.f13333a)) {
            m22808a(abstractC4399c);
        }
        this.f13334b.clear();
    }

    /* renamed from: c */
    public void m22806c() {
        this.f13335c = true;
        for (AbstractC4399c abstractC4399c : C4383k.m22709i(this.f13333a)) {
            if (abstractC4399c.isRunning() || abstractC4399c.mo22575j()) {
                abstractC4399c.clear();
                this.f13334b.add(abstractC4399c);
            }
        }
    }

    /* renamed from: d */
    public void m22805d() {
        this.f13335c = true;
        for (AbstractC4399c abstractC4399c : C4383k.m22709i(this.f13333a)) {
            if (abstractC4399c.isRunning()) {
                abstractC4399c.pause();
                this.f13334b.add(abstractC4399c);
            }
        }
    }

    /* renamed from: e */
    public void m22804e() {
        for (AbstractC4399c abstractC4399c : C4383k.m22709i(this.f13333a)) {
            if (!abstractC4399c.mo22575j() && !abstractC4399c.mo22579f()) {
                abstractC4399c.clear();
                if (!this.f13335c) {
                    abstractC4399c.mo22577h();
                } else {
                    this.f13334b.add(abstractC4399c);
                }
            }
        }
    }

    /* renamed from: f */
    public void m22803f() {
        this.f13335c = false;
        for (AbstractC4399c abstractC4399c : C4383k.m22709i(this.f13333a)) {
            if (!abstractC4399c.mo22575j() && !abstractC4399c.isRunning()) {
                abstractC4399c.mo22577h();
            }
        }
        this.f13334b.clear();
    }

    /* renamed from: g */
    public void m22802g(AbstractC4399c abstractC4399c) {
        this.f13333a.add(abstractC4399c);
        if (!this.f13335c) {
            abstractC4399c.mo22577h();
            return;
        }
        abstractC4399c.clear();
        if (Log.isLoggable("RequestTracker", 2)) {
            Log.v("RequestTracker", "Paused, delaying request");
        }
        this.f13334b.add(abstractC4399c);
    }

    public String toString() {
        return super.toString() + "{numRequests=" + this.f13333a.size() + ", isPaused=" + this.f13335c + "}";
    }
}
