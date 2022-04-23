package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaab.class */
public final class zaab implements OnCompleteListener<TResult> {

    /* renamed from: f */
    private final /* synthetic */ TaskCompletionSource f7129f;

    /* renamed from: g */
    private final /* synthetic */ zaz f7130g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zaab(zaz zazVar, TaskCompletionSource taskCompletionSource) {
        this.f7130g = zazVar;
        this.f7129f = taskCompletionSource;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(@NonNull Task<TResult> task) {
        Map map;
        map = this.f7130g.f7362b;
        map.remove(this.f7129f);
    }
}
