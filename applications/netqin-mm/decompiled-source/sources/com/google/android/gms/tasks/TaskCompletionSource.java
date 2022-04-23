package com.google.android.gms.tasks;

import p131c.p161d.p170b.p224d.p265m.C4904s;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/TaskCompletionSource.class */
public class TaskCompletionSource<TResult> {

    /* renamed from: a */
    public final C4904s<TResult> f30244a = new C4904s<>();

    /* renamed from: a */
    public Task<TResult> m8600a() {
        return this.f30244a;
    }

    /* renamed from: a */
    public void m8599a(Exception exc) {
        this.f30244a.m24854a(exc);
    }

    /* renamed from: a */
    public void m8598a(TResult tresult) {
        this.f30244a.m24853a((C4904s<TResult>) tresult);
    }

    /* renamed from: b */
    public boolean m8597b(Exception exc) {
        return this.f30244a.m24851b(exc);
    }

    /* renamed from: b */
    public boolean m8596b(TResult tresult) {
        return this.f30244a.m24850b((C4904s<TResult>) tresult);
    }
}
