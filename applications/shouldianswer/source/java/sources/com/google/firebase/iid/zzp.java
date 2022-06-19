package com.google.firebase.iid;

import android.os.Bundle;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzp.class */
public final class zzp implements Continuation<Bundle, String> {
    private final /* synthetic */ zzl zza;

    public zzp(zzl zzlVar) {
        this.zza = zzlVar;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ String then(Task<Bundle> task) {
        String zza;
        Bundle result = task.getResult(IOException.class);
        zzl zzlVar = this.zza;
        zza = zzl.zza(result);
        return zza;
    }
}
