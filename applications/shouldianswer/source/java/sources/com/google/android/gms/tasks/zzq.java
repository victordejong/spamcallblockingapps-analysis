package com.google.android.gms.tasks;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzq.class */
public interface zzq<TResult> {
    void cancel();

    void onComplete(Task<TResult> task);
}
