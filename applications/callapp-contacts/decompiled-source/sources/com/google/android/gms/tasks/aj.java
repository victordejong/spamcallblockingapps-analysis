package com.google.android.gms.tasks;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/aj.class */
public final class aj implements b<Void, h<List<h<?>>>> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Collection f30013a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(Collection collection) {
        this.f30013a = collection;
    }

    @Override // com.google.android.gms.tasks.b
    public final /* synthetic */ h<List<h<?>>> then(h<Void> hVar) throws Exception {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f30013a);
        return k.a(arrayList);
    }
}
