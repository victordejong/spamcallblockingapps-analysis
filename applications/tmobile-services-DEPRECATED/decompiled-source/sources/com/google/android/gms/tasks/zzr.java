package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.ArrayDeque;
import java.util.Queue;
import javax.annotation.concurrent.GuardedBy;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzr.class */
public final class zzr<TResult> {

    /* renamed from: a */
    private final Object f9888a = new Object();
    @GuardedBy

    /* renamed from: b */
    private Queue<zzq<TResult>> f9889b;
    @GuardedBy

    /* renamed from: c */
    private boolean f9890c;

    /* renamed from: a */
    public final void m10798a(@NonNull Task<TResult> task) {
        zzq<TResult> poll;
        synchronized (this.f9888a) {
            if (this.f9889b != null && !this.f9890c) {
                this.f9890c = true;
                while (true) {
                    synchronized (this.f9888a) {
                        poll = this.f9889b.poll();
                        if (poll == null) {
                            this.f9890c = false;
                            return;
                        }
                    }
                    poll.onComplete(task);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m10797b(@NonNull zzq<TResult> zzqVar) {
        synchronized (this.f9888a) {
            if (this.f9889b == null) {
                this.f9889b = new ArrayDeque();
            }
            this.f9889b.add(zzqVar);
        }
    }
}
