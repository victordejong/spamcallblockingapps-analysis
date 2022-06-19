package com.truecaller.bizmon;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.newBusiness.workers.BizProfileMigrationWorker;
import com.truecaller.bizmon.newBusiness.workers.BizProfileV2FetchWorker;
import kotlin.Metadata;
import p1727n3.p1834m0.AbstractC26854w;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p194a.p1392y2.p1394q.C21782c;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/truecaller/bizmon/AppUpdateReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "<init>", "()V", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/AppUpdateReceiver.class */
public final class AppUpdateReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!l.a("android.intent.action.MY_PACKAGE_REPLACED", intent != null ? intent.getAction() : null) || context == null) {
            return;
        }
        l.e(context, AnalyticsConstants.CONTEXT);
        C26702l m1431n = C26702l.m1431n(context);
        l.d(m1431n, "WorkManager.getInstance(context)");
        C21782c.m9083c(m1431n, "AvailableTagsDownloadWorkAction", context, null, null, 12);
        C26702l m1431n2 = C26702l.m1431n(context);
        C26842r.C26843a c26843a = new C26842r.C26843a(BizProfileV2FetchWorker.class);
        c26843a.f75128d.add(BizProfileV2FetchWorker.class.getSimpleName());
        C26842r m1272b = c26843a.m1272b();
        l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
        AbstractC26854w m1285c = m1431n2.m1285c(m1272b);
        C26842r.C26843a c26843a2 = new C26842r.C26843a(BizProfileMigrationWorker.class);
        c26843a2.f75128d.add(BizProfileMigrationWorker.class.getSimpleName());
        C26842r m1272b2 = c26843a2.m1272b();
        l.d(m1272b2, "OneTimeWorkRequest.Build…\n                .build()");
        m1285c.m1289b(m1272b2).mo1290a();
    }
}
