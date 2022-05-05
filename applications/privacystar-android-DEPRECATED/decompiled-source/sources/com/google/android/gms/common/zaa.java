package com.google.android.gms.common;

import android.support.annotation.NonNull;
import com.google.android.gms.common.api.internal.zai;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zaa.class */
final class zaa implements Continuation<Map<zai<?>, String>, Void> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zaa(GoogleApiAvailability googleApiAvailability) {
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Void then(@NonNull Task<Map<zai<?>, String>> task) throws Exception {
        task.getResult();
        return null;
    }
}
