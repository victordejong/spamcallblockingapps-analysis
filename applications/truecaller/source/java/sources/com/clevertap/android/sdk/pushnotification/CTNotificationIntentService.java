package com.clevertap.android.sdk.pushnotification;

import android.app.IntentService;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import com.huawei.hms.push.constant.RemoteMessageConst;
import e.h.a.c.w0.h;
import p193e.p1485h.p1486a.p1493c.C22741j0;
import p193e.p1485h.p1486a.p1493c.C22773p;
import p193e.p1485h.p1486a.p1493c.p1503s0.AbstractC22828a;
import p193e.p1485h.p1486a.p1493c.p1503s0.AbstractC22830c;
import p193e.p1485h.p1486a.p1493c.p1507w0.h$b;
@Deprecated(since = "4.3.0")
/* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/pushnotification/CTNotificationIntentService.class */
public class CTNotificationIntentService extends IntentService {
    public static final String MAIN_ACTION = "com.clevertap.PUSH_EVENT";
    public static final String TYPE_BUTTON_CLICK = "com.clevertap.ACTION_BUTTON_CLICK";
    private AbstractC22828a mActionButtonClickHandler;

    public CTNotificationIntentService() {
        super("CTNotificationIntentService");
    }

    private void handleActionButtonClick(Bundle bundle) {
        Intent intent;
        NotificationManager notificationManager;
        try {
            boolean z = bundle.getBoolean(RemoteMessageConst.Notification.AUTO_CANCEL, false);
            int i = bundle.getInt("notificationId", -1);
            String string = bundle.getString("dl");
            Context applicationContext = getApplicationContext();
            if (this.mActionButtonClickHandler.m7727b(applicationContext, bundle, i) || Build.VERSION.SDK_INT >= 31) {
                return;
            }
            if (string != null) {
                intent = new Intent("android.intent.action.VIEW", Uri.parse(string));
                C22741j0.m7837m(applicationContext, intent);
            } else {
                intent = applicationContext.getPackageManager().getLaunchIntentForPackage(applicationContext.getPackageName());
            }
            if (intent == null) {
                return;
            }
            intent.setFlags(872415232);
            intent.putExtras(bundle);
            intent.removeExtra("dl");
            if (z && i > -1 && (notificationManager = (NotificationManager) getApplicationContext().getSystemService(RemoteMessageConst.NOTIFICATION)) != null) {
                notificationManager.cancel(i);
            }
            sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
            startActivity(intent);
        } catch (Throwable th) {
            th.getLocalizedMessage();
        }
    }

    @Override // android.app.IntentService
    public void onHandleIntent(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return;
        }
        AbstractC22830c abstractC22830c = C22773p.f63086f;
        if (!h.c(extras) || abstractC22830c == null) {
            this.mActionButtonClickHandler = h$b.f63486a;
        } else {
            this.mActionButtonClickHandler = (AbstractC22828a) abstractC22830c;
        }
        if (TYPE_BUTTON_CLICK.equals(extras.getString("ct_type"))) {
            handleActionButtonClick(extras);
        } else {
            intent.getAction();
        }
    }
}
