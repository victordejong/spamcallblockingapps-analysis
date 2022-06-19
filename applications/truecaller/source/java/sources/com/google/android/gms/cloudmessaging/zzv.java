package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/cloudmessaging/zzv.class */
public final /* synthetic */ class zzv implements Continuation {

    /* renamed from: a */
    public static final /* synthetic */ zzv f5652a = new zzv();

    private /* synthetic */ zzv() {
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final Object then(Task task) {
        if (task.m38519s()) {
            return (Bundle) task.m38523o();
        }
        if (Log.isLoggable("Rpc", 3)) {
            String.valueOf(task.m38524n()).length();
        }
        throw new IOException("SERVICE_NOT_AVAILABLE", task.m38524n());
    }
}
