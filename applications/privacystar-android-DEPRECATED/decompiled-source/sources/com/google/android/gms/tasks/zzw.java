package com.google.android.gms.tasks;

import android.support.annotation.NonNull;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzw.class */
final class zzw implements Continuation<Void, List<TResult>> {
    private final /* synthetic */ Collection zzae;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzw(Collection collection) {
        this.zzae = collection;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Object then(@NonNull Task<Void> task) throws Exception {
        if (this.zzae.size() == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (Task task2 : this.zzae) {
            arrayList.add(task2.getResult());
        }
        return arrayList;
    }
}
