package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zaj.class */
public final class zaj implements PendingResult.StatusListener {
    private final /* synthetic */ PendingResult zaov;
    private final /* synthetic */ TaskCompletionSource zaow;
    private final /* synthetic */ PendingResultUtil.ResultConverter zaox;
    private final /* synthetic */ PendingResultUtil.zaa zaoy;

    public zaj(PendingResult pendingResult, TaskCompletionSource taskCompletionSource, PendingResultUtil.ResultConverter resultConverter, PendingResultUtil.zaa zaaVar) {
        this.zaov = pendingResult;
        this.zaow = taskCompletionSource;
        this.zaox = resultConverter;
        this.zaoy = zaaVar;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    public final void onComplete(Status status) {
        if (!status.isSuccess()) {
            this.zaow.setException(this.zaoy.zaf(status));
            return;
        }
        this.zaow.setResult(this.zaox.convert(this.zaov.await(0L, TimeUnit.MILLISECONDS)));
    }
}
