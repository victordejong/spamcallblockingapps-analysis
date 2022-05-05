package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzg.class */
final class zzg<TResult> implements zzq<TResult> {

    /* renamed from: a */
    private final Executor f9864a;

    /* renamed from: b */
    private final Object f9865b = new Object();
    @GuardedBy

    /* renamed from: c */
    private OnCanceledListener f9866c;

    public zzg(@NonNull Executor executor, @NonNull OnCanceledListener onCanceledListener) {
        this.f9864a = executor;
        this.f9866c = onCanceledListener;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void cancel() {
        synchronized (this.f9865b) {
            this.f9866c = null;
        }
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void onComplete(@NonNull Task task) {
        if (task.mo10784l()) {
            synchronized (this.f9865b) {
                if (this.f9866c != null) {
                    this.f9864a.execute(new zzh(this));
                }
            }
        }
    }
}
