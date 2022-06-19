package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.Preconditions;
import e.m.a.f.q.b0;
import e.m.a.f.q.x;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/tasks/TaskCompletionSource.class */
public class TaskCompletionSource<TResult> {

    /* renamed from: a */
    public final b0<TResult> f6493a = new b0<>();

    public TaskCompletionSource() {
    }

    public TaskCompletionSource(CancellationToken cancellationToken) {
        cancellationToken.m38539b(new x(this));
    }

    /* renamed from: a */
    public boolean m38516a(Exception exc) {
        boolean z;
        Task<TResult> task = this.f6493a;
        Objects.requireNonNull(task);
        Preconditions.m38897k(exc, "Exception must not be null");
        synchronized (((b0) task).a) {
            if (((b0) task).c) {
                z = false;
            } else {
                ((b0) task).c = true;
                ((b0) task).f = exc;
                ((b0) task).b.m4155b(task);
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public boolean m38515b(TResult tresult) {
        return this.f6493a.y(tresult);
    }
}
