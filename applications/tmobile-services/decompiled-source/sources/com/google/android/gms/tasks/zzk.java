package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzk.class */
final class zzk<TResult> implements zzq<TResult> {

    /* renamed from: a */
    private final Executor f9873a;

    /* renamed from: b */
    private final Object f9874b = new Object();
    @GuardedBy

    /* renamed from: c */
    private OnFailureListener f9875c;

    public zzk(@NonNull Executor executor, @NonNull OnFailureListener onFailureListener) {
        this.f9873a = executor;
        this.f9875c = onFailureListener;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void cancel() {
        synchronized (this.f9874b) {
            this.f9875c = null;
        }
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void onComplete(@NonNull Task<TResult> task) {
        if (!task.mo10782n() && !task.mo10784l()) {
            synchronized (this.f9874b) {
                if (this.f9875c != null) {
                    this.f9873a.execute(new zzl(this, task));
                }
            }
        }
    }
}
