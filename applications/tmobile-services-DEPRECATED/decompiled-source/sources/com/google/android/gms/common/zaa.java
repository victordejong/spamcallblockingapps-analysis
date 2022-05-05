package com.google.android.gms.common;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zaa.class */
final class zaa implements Continuation<Map<ApiKey<?>, String>, Void> {
    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Void then(@NonNull Task<Map<ApiKey<?>, String>> task) throws Exception {
        task.mo10786j();
        return null;
    }
}
