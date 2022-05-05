package com.google.android.gms.gcm;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.gcm.zzj;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/zzf.class */
final class zzf extends zzj {

    /* renamed from: a */
    private final /* synthetic */ GoogleCloudMessaging f7750a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzf(GoogleCloudMessaging googleCloudMessaging, Looper looper) {
        super(looper);
        this.f7750a = googleCloudMessaging;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        boolean b;
        Context context;
        Context context2;
        BlockingQueue blockingQueue;
        if (message == null || !(message.obj instanceof Intent)) {
            Log.w("GCM", "Dropping invalid message");
        }
        Intent intent = (Intent) message.obj;
        if ("com.google.android.c2dm.intent.REGISTRATION".equals(intent.getAction())) {
            blockingQueue = this.f7750a.f7734c;
            blockingQueue.add(intent);
            return;
        }
        b = this.f7750a.m14177b(intent);
        if (!b) {
            context = this.f7750a.f7732a;
            intent.setPackage(context.getPackageName());
            context2 = this.f7750a.f7732a;
            context2.sendBroadcast(intent);
        }
    }
}
