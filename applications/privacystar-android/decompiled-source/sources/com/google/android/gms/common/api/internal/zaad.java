package com.google.android.gms.common.api.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaad.class */
public final class zaad implements OnCompleteListener<TResult> {
    private final /* synthetic */ zaab zafm;
    private final /* synthetic */ TaskCompletionSource zafn;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zaad(zaab zaabVar, TaskCompletionSource taskCompletionSource) {
        this.zafm = zaabVar;
        this.zafn = taskCompletionSource;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(@NonNull Task<TResult> task) {
        Map map;
        map = this.zafm.zafk;
        map.remove(this.zafn);
    }
}
