package com.bumptech.glide.p070c;

import android.util.Log;
import com.bumptech.glide.p073f.AbstractC1414b;
import com.bumptech.glide.p077h.C1457j;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
/* renamed from: com.bumptech.glide.c.n */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/c/n.class */
public class C1380n {

    /* renamed from: a */
    private final Set<AbstractC1414b> f4570a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b */
    private final List<AbstractC1414b> f4571b = new ArrayList();

    /* renamed from: c */
    private boolean f4572c;

    /* renamed from: a */
    private boolean m17256a(AbstractC1414b abstractC1414b, boolean z) {
        boolean z2;
        if (abstractC1414b == null) {
            z2 = true;
        } else {
            boolean remove = this.f4570a.remove(abstractC1414b);
            boolean z3 = true;
            if (!this.f4571b.remove(abstractC1414b)) {
                z3 = remove;
            }
            z2 = z3;
            if (z3) {
                abstractC1414b.mo17074b();
                z2 = z3;
                if (z) {
                    abstractC1414b.mo17063h();
                    z2 = z3;
                }
            }
        }
        return z2;
    }

    /* renamed from: a */
    public void m17258a() {
        this.f4572c = true;
        for (AbstractC1414b abstractC1414b : C1457j.m16974a(this.f4570a)) {
            if (abstractC1414b.mo17072c()) {
                abstractC1414b.mo17074b();
                this.f4571b.add(abstractC1414b);
            }
        }
    }

    /* renamed from: a */
    public void m17257a(AbstractC1414b abstractC1414b) {
        this.f4570a.add(abstractC1414b);
        if (!this.f4572c) {
            abstractC1414b.mo17077a();
            return;
        }
        abstractC1414b.mo17074b();
        if (Log.isLoggable("RequestTracker", 2)) {
            Log.v("RequestTracker", "Paused, delaying request");
        }
        this.f4571b.add(abstractC1414b);
    }

    /* renamed from: b */
    public void m17255b() {
        this.f4572c = false;
        for (AbstractC1414b abstractC1414b : C1457j.m16974a(this.f4570a)) {
            if (!abstractC1414b.mo17070d() && !abstractC1414b.mo17072c()) {
                abstractC1414b.mo17077a();
            }
        }
        this.f4571b.clear();
    }

    /* renamed from: b */
    public boolean m17254b(AbstractC1414b abstractC1414b) {
        return m17256a(abstractC1414b, true);
    }

    /* renamed from: c */
    public void m17253c() {
        for (AbstractC1414b abstractC1414b : C1457j.m16974a(this.f4570a)) {
            m17256a(abstractC1414b, false);
        }
        this.f4571b.clear();
    }

    /* renamed from: d */
    public void m17252d() {
        for (AbstractC1414b abstractC1414b : C1457j.m16974a(this.f4570a)) {
            if (!abstractC1414b.mo17070d() && !abstractC1414b.mo17066f()) {
                abstractC1414b.mo17074b();
                if (!this.f4572c) {
                    abstractC1414b.mo17077a();
                } else {
                    this.f4571b.add(abstractC1414b);
                }
            }
        }
    }

    public String toString() {
        return super.toString() + "{numRequests=" + this.f4570a.size() + ", isPaused=" + this.f4572c + "}";
    }
}
