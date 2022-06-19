package com.google.android.gms.tasks;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* renamed from: com.google.android.gms.tasks.aj */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/aj.class */
public final class C14178aj implements AbstractC14179b<Void, AbstractC14185h<List<AbstractC14185h<?>>>> {

    /* renamed from: a */
    final /* synthetic */ Collection f52141a;

    public C14178aj(Collection collection) {
        this.f52141a = collection;
    }

    @Override // com.google.android.gms.tasks.AbstractC14179b
    public final /* synthetic */ AbstractC14185h<List<AbstractC14185h<?>>> then(AbstractC14185h<Void> abstractC14185h) throws Exception {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f52141a);
        return C14188k.m11464a(arrayList);
    }
}
