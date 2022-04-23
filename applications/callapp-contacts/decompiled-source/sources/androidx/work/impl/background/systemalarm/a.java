package androidx.work.impl.background.systemalarm;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.j;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.utils.c;
import androidx.work.k;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/a.class */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6039a = k.a("Alarms");

    private a() {
    }

    public static void a(Context context, j jVar, String str) {
        SystemIdInfoDao m = jVar.f6118c.m();
        SystemIdInfo systemIdInfo = m.getSystemIdInfo(str);
        if (systemIdInfo != null) {
            a(context, str, systemIdInfo.systemId);
            k.a();
            String.format("Removing SystemIdInfo for workSpecId (%s)", str);
            m.removeSystemIdInfo(str);
        }
    }

    public static void a(Context context, j jVar, String str, long j) {
        WorkDatabase workDatabase = jVar.f6118c;
        SystemIdInfoDao m = workDatabase.m();
        SystemIdInfo systemIdInfo = m.getSystemIdInfo(str);
        if (systemIdInfo != null) {
            a(context, str, systemIdInfo.systemId);
            a(context, str, systemIdInfo.systemId, j);
            return;
        }
        int a2 = new c(workDatabase).a();
        m.insertSystemIdInfo(new SystemIdInfo(str, a2));
        a(context, str, a2, j);
    }

    private static void a(Context context, String str, int i) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, b.b(context, str), 536870912);
        if (service != null && alarmManager != null) {
            k.a();
            String.format("Cancelling existing alarm with (workSpecId, systemId) (%s, %s)", str, Integer.valueOf(i));
            alarmManager.cancel(service);
        }
    }

    private static void a(Context context, String str, int i, long j) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, b.b(context, str), 134217728);
        if (alarmManager == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            alarmManager.setExact(0, j, service);
        } else {
            alarmManager.set(0, j, service);
        }
    }
}
