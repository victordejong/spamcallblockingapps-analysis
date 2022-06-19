package com.google.android.gms.common.api.internal;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaad.class */
public final class zaad implements OnCompleteListener<TResult> {
    private final /* synthetic */ zaab zafn;
    private final /* synthetic */ TaskCompletionSource zafo;

    public zaad(zaab zaabVar, TaskCompletionSource taskCompletionSource) {
        this.zafn = zaabVar;
        this.zafo = taskCompletionSource;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task<TResult> task) {
        Map map;
        map = this.zafn.zafl;
        map.remove(this.zafo);
    }
}
