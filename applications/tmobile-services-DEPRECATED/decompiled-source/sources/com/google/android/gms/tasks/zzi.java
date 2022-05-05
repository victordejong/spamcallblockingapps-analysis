package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzi.class */
public final class zzi<TResult> implements zzq<TResult> {

    /* renamed from: a */
    private final Executor f9868a;

    /* renamed from: b */
    private final Object f9869b = new Object();
    @GuardedBy

    /* renamed from: c */
    private OnCompleteListener<TResult> f9870c;

    public zzi(@NonNull Executor executor, @NonNull OnCompleteListener<TResult> onCompleteListener) {
        this.f9868a = executor;
        this.f9870c = onCompleteListener;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void cancel() {
        synchronized (this.f9869b) {
            this.f9870c = null;
        }
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void onComplete(@NonNull Task<TResult> task) {
        synchronized (this.f9869b) {
            if (this.f9870c != null) {
                this.f9868a.execute(new zzj(this, task));
            }
        }
    }
}
