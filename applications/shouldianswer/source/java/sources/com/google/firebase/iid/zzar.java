package com.google.firebase.iid;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.internal.firebase_messaging.zze;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzar.class */
public final class zzar extends zze {
    private final /* synthetic */ zzao zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzar(zzao zzaoVar, Looper looper) {
        super(looper);
        this.zza = zzaoVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.zza.zza(message);
    }
}
