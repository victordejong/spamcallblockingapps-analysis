package gogolook.callgogolook2.messaging.datamodel;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.core.app.JobIntentService;
import androidx.core.app.WhoscallJobIntentService;
import gogolook.callgogolook2.MyApplication;
import p459j.p460a.p474c0.p475c.C11558s;
import p459j.p460a.p582w0.C14080m2;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/NoConfirmationSmsSendJobIntentService.class */
public class NoConfirmationSmsSendJobIntentService extends WhoscallJobIntentService {
    /* renamed from: a */
    public static void m27758a(@NonNull Intent intent) {
        Context o = MyApplication.m29013o();
        intent.setClass(o, NoConfirmationSmsSendJobIntentService.class);
        try {
            JobIntentService.enqueueWork(o, NoConfirmationSmsSendJobIntentService.class, 1003, intent);
        } catch (SecurityException e) {
            C14080m2.m2612a((Throwable) e);
        }
    }

    @Override // androidx.core.app.JobIntentService
    public void onHandleWork(@NonNull Intent intent) {
        C11558s.m9170a(MyApplication.m29013o(), intent);
    }
}
