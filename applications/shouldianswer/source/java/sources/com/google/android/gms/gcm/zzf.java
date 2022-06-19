package com.google.android.gms.gcm;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.gcm.zzj;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/zzf.class */
public final class zzf extends zzj {
    private final /* synthetic */ GoogleCloudMessaging zzak;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzf(GoogleCloudMessaging googleCloudMessaging, Looper looper) {
        super(looper);
        this.zzak = googleCloudMessaging;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        boolean zzd;
        Context context;
        Context context2;
        BlockingQueue blockingQueue;
        if (message == null || !(message.obj instanceof Intent)) {
            Log.w("GCM", "Dropping invalid message");
        }
        Intent intent = (Intent) message.obj;
        if ("com.google.android.c2dm.intent.REGISTRATION".equals(intent.getAction())) {
            blockingQueue = this.zzak.zzai;
            blockingQueue.add(intent);
            return;
        }
        zzd = this.zzak.zzd(intent);
        if (zzd) {
            return;
        }
        context = this.zzak.zzl;
        intent.setPackage(context.getPackageName());
        context2 = this.zzak.zzl;
        context2.sendBroadcast(intent);
    }
}
