package androidx.work.impl.background.systemalarm;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import androidx.work.AbstractC3145k;
import androidx.work.impl.C3068j;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.utils.C3122c;
/* renamed from: androidx.work.impl.background.systemalarm.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/a.class */
final class C3032a {

    /* renamed from: a */
    private static final String f11232a = AbstractC3145k.m39275a("Alarms");

    private C3032a() {
    }

    /* renamed from: a */
    public static void m39431a(Context context, C3068j c3068j, String str) {
        SystemIdInfoDao mo39471m = c3068j.f11355c.mo39471m();
        SystemIdInfo systemIdInfo = mo39471m.getSystemIdInfo(str);
        if (systemIdInfo != null) {
            m39429a(context, str, systemIdInfo.systemId);
            AbstractC3145k.m39277a();
            String.format("Removing SystemIdInfo for workSpecId (%s)", str);
            mo39471m.removeSystemIdInfo(str);
        }
    }

    /* renamed from: a */
    public static void m39430a(Context context, C3068j c3068j, String str, long j) {
        WorkDatabase workDatabase = c3068j.f11355c;
        SystemIdInfoDao mo39471m = workDatabase.mo39471m();
        SystemIdInfo systemIdInfo = mo39471m.getSystemIdInfo(str);
        if (systemIdInfo != null) {
            m39429a(context, str, systemIdInfo.systemId);
            m39428a(context, str, systemIdInfo.systemId, j);
            return;
        }
        int m39300a = new C3122c(workDatabase).m39300a();
        mo39471m.insertSystemIdInfo(new SystemIdInfo(str, m39300a));
        m39428a(context, str, m39300a, j);
    }

    /* renamed from: a */
    private static void m39429a(Context context, String str, int i) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, C3033b.m39421b(context, str), 536870912);
        if (service == null || alarmManager == null) {
            return;
        }
        AbstractC3145k.m39277a();
        String.format("Cancelling existing alarm with (workSpecId, systemId) (%s, %s)", str, Integer.valueOf(i));
        alarmManager.cancel(service);
    }

    /* renamed from: a */
    private static void m39428a(Context context, String str, int i, long j) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, C3033b.m39421b(context, str), 134217728);
        if (alarmManager != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                alarmManager.setExact(0, j, service);
            } else {
                alarmManager.set(0, j, service);
            }
        }
    }
}
