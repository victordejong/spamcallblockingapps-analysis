package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/TaskCompletionSource.class */
public class TaskCompletionSource<TResult> {

    /* renamed from: a */
    private final zzu<TResult> f9840a = new zzu<>();

    @NonNull
    /* renamed from: a */
    public Task<TResult> m10830a() {
        return this.f9840a;
    }

    /* renamed from: b */
    public void m10829b(@NonNull Exception exc) {
        this.f9840a.m10779q(exc);
    }

    /* renamed from: c */
    public void m10828c(TResult tresult) {
        this.f9840a.m10778r(tresult);
    }

    /* renamed from: d */
    public boolean m10827d(@NonNull Exception exc) {
        return this.f9840a.m10777s(exc);
    }

    /* renamed from: e */
    public boolean m10826e(TResult tresult) {
        return this.f9840a.m10776t(tresult);
    }
}
