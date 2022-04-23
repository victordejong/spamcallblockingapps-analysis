package com.google.android.gms.tasks;

import java.util.concurrent.ExecutionException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/n.class */
public final class n implements m {

    /* renamed from: a  reason: collision with root package name */
    private final Object f30018a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final int f30019b;

    /* renamed from: c  reason: collision with root package name */
    private final ah<Void> f30020c;

    /* renamed from: d  reason: collision with root package name */
    private int f30021d;
    private int e;
    private int f;
    private Exception g;
    private boolean h;

    public n(int i, ah<Void> ahVar) {
        this.f30019b = i;
        this.f30020c = ahVar;
    }

    private final void b() {
        int i = this.f30021d;
        int i2 = this.e;
        int i3 = this.f;
        int i4 = this.f30019b;
        if (i + i2 + i3 != i4) {
            return;
        }
        if (this.g != null) {
            ah<Void> ahVar = this.f30020c;
            StringBuilder sb = new StringBuilder(54);
            sb.append(i2);
            sb.append(" out of ");
            sb.append(i4);
            sb.append(" underlying tasks failed");
            ahVar.a(new ExecutionException(sb.toString(), this.g));
        } else if (this.h) {
            this.f30020c.f();
        } else {
            this.f30020c.a((ah<Void>) null);
        }
    }

    @Override // com.google.android.gms.tasks.c
    public final void a() {
        synchronized (this.f30018a) {
            this.f++;
            this.h = true;
            b();
        }
    }

    @Override // com.google.android.gms.tasks.e
    public final void onFailure(Exception exc) {
        synchronized (this.f30018a) {
            this.e++;
            this.g = exc;
            b();
        }
    }

    @Override // com.google.android.gms.tasks.f
    public final void onSuccess(Object obj) {
        synchronized (this.f30018a) {
            this.f30021d++;
            b();
        }
    }
}
