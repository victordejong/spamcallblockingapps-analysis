package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzx.class */
final class zzx implements Continuation<Void, Task<List<Task<?>>>> {

    /* renamed from: a */
    private final /* synthetic */ Collection f9902a;

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Task<List<Task<?>>> then(@NonNull Task<Void> task) throws Exception {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f9902a);
        return Tasks.m10820e(arrayList);
    }
}
