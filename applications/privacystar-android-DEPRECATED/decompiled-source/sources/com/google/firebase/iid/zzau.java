package com.google.firebase.iid;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.internal.firebase_messaging.zza;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzau.class */
public final class zzau extends zza {
    private final /* synthetic */ zzat zzcw;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzau(zzat zzatVar, Looper looper) {
        super(looper);
        this.zzcw = zzatVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.zzcw.zzb(message);
    }
}
