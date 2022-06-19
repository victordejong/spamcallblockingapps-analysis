package com.google.android.gms.tasks;

import androidx.annotation.RecentlyNonNull;
/* renamed from: com.google.android.gms.tasks.h */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/h.class */
public class C7968h<TResult> {

    /* renamed from: a */
    private final C7965f0<TResult> f35951a = new C7965f0<>();

    /* renamed from: a */
    public AbstractC7966g<TResult> m5807a() {
        return this.f35951a;
    }

    /* renamed from: b */
    public void m5806b(@RecentlyNonNull Exception exc) {
        this.f35951a.m5831v(exc);
    }

    /* renamed from: c */
    public void m5805c(TResult tresult) {
        this.f35951a.m5833t(tresult);
    }

    /* renamed from: d */
    public boolean m5804d(@RecentlyNonNull Exception exc) {
        return this.f35951a.m5830w(exc);
    }

    /* renamed from: e */
    public boolean m5803e(TResult tresult) {
        return this.f35951a.m5832u(tresult);
    }
}
