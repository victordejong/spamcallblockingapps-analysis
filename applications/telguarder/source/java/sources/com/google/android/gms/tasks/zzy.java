package com.google.android.gms.tasks;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/zzy.class */
final class zzy implements Continuation<Void, List> {
    final /* synthetic */ Collection zza;

    public zzy(Collection collection) {
        this.zza = collection;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* bridge */ /* synthetic */ List then(Task<Void> task) throws Exception {
        ArrayList arrayList = new ArrayList();
        for (Task task2 : this.zza) {
            arrayList.add(task2.getResult());
        }
        return arrayList;
    }
}
