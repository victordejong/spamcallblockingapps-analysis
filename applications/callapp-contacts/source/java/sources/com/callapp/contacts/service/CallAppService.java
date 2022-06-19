package com.callapp.contacts.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.CallAppClipboardManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.recorder.service.RecordService;
import com.callapp.contacts.util.CLog;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/CallAppService.class */
public class CallAppService extends Service {

    /* renamed from: a */
    private RecordService f27567a;

    /* renamed from: b */
    private final IBinder f27568b = new LocalCallAppServiceBinder();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/CallAppService$LocalCallAppServiceBinder.class */
    public class LocalCallAppServiceBinder extends Binder {
        public LocalCallAppServiceBinder() {
            CallAppService.this = r4;
        }

        public CallAppService getService() {
            return CallAppService.this;
        }
    }

    /* renamed from: a */
    public static void m27795a(Context context, Intent intent, boolean z) {
        if (z) {
            CallAppApplication.get().m31867a(true, intent);
        } else {
            context.startService(intent);
        }
    }

    /* renamed from: a */
    final void m27796a() {
        if (PhoneManager.get().isDefaultPhoneApp()) {
            sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f27568b;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        CallAppClipboardManager.get().init();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        CLog.m27611a(CallAppService.class, "CallAppService onDestroy()");
        CallAppClipboardManager.get().destroy();
        Singletons.get().getNotificationManager().m28578a(12);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0064, code lost:
        if (r0 != 3) goto L54;
     */
    @Override // android.app.Service
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int onStartCommand(final android.content.Intent r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.service.CallAppService.onStartCommand(android.content.Intent, int, int):int");
    }
}
