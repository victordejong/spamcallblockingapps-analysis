package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzeo.class */
final class zzeo<TResult> implements OnCanceledListener, OnFailureListener, OnSuccessListener<TResult> {
    private final CountDownLatch zzku;

    /* JADX INFO: Access modifiers changed from: private */
    public zzeo() {
        this.zzku = new CountDownLatch(1);
    }

    public final boolean await(long j, TimeUnit timeUnit) {
        return this.zzku.await(5L, timeUnit);
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void onCanceled() {
        this.zzku.countDown();
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        this.zzku.countDown();
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(TResult tresult) {
        this.zzku.countDown();
    }
}
