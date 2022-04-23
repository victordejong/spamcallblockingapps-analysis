package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.util.AbstractC1610f;
import java.lang.ref.WeakReference;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vj0.class */
public final class vj0 implements View.OnClickListener {

    /* renamed from: b */
    private final mn0 f8914b;

    /* renamed from: c */
    private final AbstractC1610f f8915c;

    /* renamed from: d */
    private AbstractC1993v7 f8916d;

    /* renamed from: e */
    private AbstractC1766h9<Object> f8917e;

    /* renamed from: f */
    String f8918f;

    /* renamed from: g */
    Long f8919g;

    /* renamed from: h */
    WeakReference<View> f8920h;

    public vj0(mn0 mn0Var, AbstractC1610f fVar) {
        this.f8914b = mn0Var;
        this.f8915c = fVar;
    }

    /* renamed from: d */
    private final void m5231d() {
        View view;
        this.f8918f = null;
        this.f8919g = null;
        WeakReference<View> weakReference = this.f8920h;
        if (weakReference != null && (view = weakReference.get()) != null) {
            view.setClickable(false);
            view.setOnClickListener(null);
            this.f8920h = null;
        }
    }

    /* renamed from: a */
    public final void m5234a(AbstractC1993v7 v7Var) {
        this.f8916d = v7Var;
        AbstractC1766h9<Object> h9Var = this.f8917e;
        if (h9Var != null) {
            this.f8914b.m6539e("/unconfirmedClick", h9Var);
        }
        AbstractC1766h9<Object> uj0Var = new uj0<>(this, v7Var);
        this.f8917e = uj0Var;
        this.f8914b.m6540d("/unconfirmedClick", uj0Var);
    }

    /* renamed from: b */
    public final AbstractC1993v7 m5233b() {
        return this.f8916d;
    }

    /* renamed from: c */
    public final void m5232c() {
        if (this.f8916d != null && this.f8919g != null) {
            m5231d();
            try {
                this.f8916d.m5308d();
            } catch (RemoteException e) {
                C1894po.m6177i("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WeakReference<View> weakReference = this.f8920h;
        if (weakReference != null && weakReference.get() == view) {
            if (!(this.f8918f == null || this.f8919g == null)) {
                HashMap hashMap = new HashMap();
                hashMap.put("id", this.f8918f);
                hashMap.put("time_interval", String.valueOf(this.f8915c.m8247a() - this.f8919g.longValue()));
                hashMap.put("messageType", "onePointFiveClick");
                this.f8914b.m6538f("sendMessageToNativeJs", hashMap);
            }
            m5231d();
        }
    }
}
