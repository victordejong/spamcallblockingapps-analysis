package com.google.android.gms.tasks;

import java.util.concurrent.ExecutionException;
/* renamed from: com.google.android.gms.tasks.n */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/n.class */
public final class C14191n implements AbstractC14190m {

    /* renamed from: a */
    private final Object f52146a = new Object();

    /* renamed from: b */
    private final int f52147b;

    /* renamed from: c */
    private final C14176ah<Void> f52148c;

    /* renamed from: d */
    private int f52149d;

    /* renamed from: e */
    private int f52150e;

    /* renamed from: f */
    private int f52151f;

    /* renamed from: g */
    private Exception f52152g;

    /* renamed from: h */
    private boolean f52153h;

    public C14191n(int i, C14176ah<Void> c14176ah) {
        this.f52147b = i;
        this.f52148c = c14176ah;
    }

    /* renamed from: b */
    private final void m11456b() {
        int i = this.f52149d;
        int i2 = this.f52150e;
        int i3 = this.f52151f;
        int i4 = this.f52147b;
        if (i + i2 + i3 == i4) {
            if (this.f52152g == null) {
                if (this.f52153h) {
                    this.f52148c.m11496f();
                    return;
                } else {
                    this.f52148c.m11499a((C14176ah<Void>) null);
                    return;
                }
            }
            C14176ah<Void> c14176ah = this.f52148c;
            StringBuilder sb = new StringBuilder(54);
            sb.append(i2);
            sb.append(" out of ");
            sb.append(i4);
            sb.append(" underlying tasks failed");
            c14176ah.m11500a(new ExecutionException(sb.toString(), this.f52152g));
        }
    }

    @Override // com.google.android.gms.tasks.AbstractC14180c
    /* renamed from: a */
    public final void mo8074a() {
        synchronized (this.f52146a) {
            this.f52151f++;
            this.f52153h = true;
            m11456b();
        }
    }

    @Override // com.google.android.gms.tasks.AbstractC14182e
    public final void onFailure(Exception exc) {
        synchronized (this.f52146a) {
            this.f52150e++;
            this.f52152g = exc;
            m11456b();
        }
    }

    @Override // com.google.android.gms.tasks.AbstractC14183f
    public final void onSuccess(Object obj) {
        synchronized (this.f52146a) {
            this.f52149d++;
            m11456b();
        }
    }
}
