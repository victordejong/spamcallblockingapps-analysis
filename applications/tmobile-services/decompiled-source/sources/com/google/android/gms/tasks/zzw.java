package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzw.class */
final class zzw implements Continuation<Void, List<TResult>> {

    /* renamed from: a */
    private final /* synthetic */ Collection f9901a;

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Object then(@NonNull Task<Void> task) throws Exception {
        if (this.f9901a.size() == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (Task task2 : this.f9901a) {
            arrayList.add(task2.mo10786j());
        }
        return arrayList;
    }
}
