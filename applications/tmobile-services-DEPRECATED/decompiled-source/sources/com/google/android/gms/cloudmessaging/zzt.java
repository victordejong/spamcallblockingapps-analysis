package com.google.android.gms.cloudmessaging;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/zzt.class */
public final /* synthetic */ class zzt implements Continuation {

    /* renamed from: a */
    static final Continuation f6953a = new zzt();

    private zzt() {
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final Object then(Task task) {
        return Rpc.m15131b(task);
    }
}
