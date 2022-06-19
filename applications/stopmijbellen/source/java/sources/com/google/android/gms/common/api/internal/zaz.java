package com.google.android.gms.common.api.internal;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaz.class */
public final class zaz implements OnCompleteListener {
    public final /* synthetic */ TaskCompletionSource zaa;
    public final /* synthetic */ zaaa zab;

    public zaz(zaaa zaaaVar, TaskCompletionSource taskCompletionSource) {
        this.zab = zaaaVar;
        this.zaa = taskCompletionSource;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task task) {
        Map map;
        map = this.zab.zab;
        map.remove(this.zaa);
    }
}
