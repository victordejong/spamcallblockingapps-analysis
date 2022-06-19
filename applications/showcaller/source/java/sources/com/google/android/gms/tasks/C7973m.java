package com.google.android.gms.tasks;

import java.util.concurrent.ExecutionException;
/* renamed from: com.google.android.gms.tasks.m */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/m.class */
public final class C7973m implements AbstractC7972l {

    /* renamed from: a */
    private final Object f35955a = new Object();

    /* renamed from: b */
    private final int f35956b;

    /* renamed from: c */
    private final C7965f0<Void> f35957c;

    /* renamed from: d */
    private int f35958d;

    /* renamed from: e */
    private int f35959e;

    /* renamed from: f */
    private int f35960f;

    /* renamed from: g */
    private Exception f35961g;

    /* renamed from: h */
    private boolean f35962h;

    public C7973m(int i, C7965f0<Void> c7965f0) {
        this.f35956b = i;
        this.f35957c = c7965f0;
    }

    /* renamed from: b */
    private final void m5791b() {
        int i = this.f35958d;
        int i2 = this.f35959e;
        int i3 = this.f35960f;
        int i4 = this.f35956b;
        if (i + i2 + i3 == i4) {
            if (this.f35961g == null) {
                if (this.f35962h) {
                    this.f35957c.m5829x();
                    return;
                } else {
                    this.f35957c.m5833t(null);
                    return;
                }
            }
            C7965f0<Void> c7965f0 = this.f35957c;
            StringBuilder sb = new StringBuilder(54);
            sb.append(i2);
            sb.append(" out of ");
            sb.append(i4);
            sb.append(" underlying tasks failed");
            c7965f0.m5831v(new ExecutionException(sb.toString(), this.f35961g));
        }
    }

    @Override // com.google.android.gms.tasks.AbstractC7960d
    /* renamed from: a */
    public final void mo5788a(Exception exc) {
        synchronized (this.f35955a) {
            this.f35959e++;
            this.f35961g = exc;
            m5791b();
        }
    }

    @Override // com.google.android.gms.tasks.AbstractC7956b
    /* renamed from: c */
    public final void mo5787c() {
        synchronized (this.f35955a) {
            this.f35960f++;
            this.f35962h = true;
            m5791b();
        }
    }

    @Override // com.google.android.gms.tasks.AbstractC7962e
    public final void onSuccess(Object obj) {
        synchronized (this.f35955a) {
            this.f35958d++;
            m5791b();
        }
    }
}
