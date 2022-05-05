package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzm.class */
final class zzm<TResult> implements zzq<TResult> {

    /* renamed from: a */
    private final Executor f9878a;

    /* renamed from: b */
    private final Object f9879b = new Object();
    @GuardedBy

    /* renamed from: c */
    private OnSuccessListener<? super TResult> f9880c;

    public zzm(@NonNull Executor executor, @NonNull OnSuccessListener<? super TResult> onSuccessListener) {
        this.f9878a = executor;
        this.f9880c = onSuccessListener;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void cancel() {
        synchronized (this.f9879b) {
            this.f9880c = null;
        }
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void onComplete(@NonNull Task<TResult> task) {
        if (task.mo10782n()) {
            synchronized (this.f9879b) {
                if (this.f9880c != null) {
                    this.f9878a.execute(new zzn(this, task));
                }
            }
        }
    }
}
