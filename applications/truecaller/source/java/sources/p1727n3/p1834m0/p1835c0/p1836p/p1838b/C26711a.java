package p1727n3.p1834m0.p1835c0.p1836p.p1838b;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import androidx.work.impl.WorkDatabase;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1834m0.p1835c0.p1844s.C26745d;
import p1727n3.p1834m0.p1835c0.p1844s.C26747f;
import p1727n3.p1834m0.p1835c0.p1844s.C26748g;
import p1727n3.p1834m0.p1835c0.p1844s.C26750i;
import p1727n3.p1834m0.p1835c0.p1845t.C26784f;
/* renamed from: n3.m0.c0.p.b.a */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/p/b/a.class */
public class C26711a {

    /* renamed from: a */
    public static final String f74781a = AbstractC26839p.m1295e("Alarms");

    /* renamed from: a */
    public static void m1417a(Context context, String str, int i) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, C26712b.m1413c(context, str), 603979776);
        if (service == null || alarmManager == null) {
            return;
        }
        AbstractC26839p.m1296c().mo1294a(f74781a, String.format("Cancelling existing alarm with (workSpecId, systemId) (%s, %s)", str, Integer.valueOf(i)), new Throwable[0]);
        alarmManager.cancel(service);
    }

    /* renamed from: b */
    public static void m1416b(Context context, C26702l c26702l, String str, long j) {
        int intValue;
        WorkDatabase workDatabase = c26702l.f74725c;
        C26750i c26750i = (C26750i) workDatabase.m42609c();
        C26748g m1366a = c26750i.m1366a(str);
        if (m1366a != null) {
            m1417a(context, str, m1366a.f74886b);
            m1415c(context, str, m1366a.f74886b, j);
            return;
        }
        synchronized (C26784f.class) {
            try {
                workDatabase.beginTransaction();
                Long m1368a = ((C26747f) workDatabase.m42610b()).m1368a("next_alarm_manager_id");
                int i = 0;
                intValue = m1368a != null ? m1368a.intValue() : 0;
                if (intValue != Integer.MAX_VALUE) {
                    i = intValue + 1;
                }
                ((C26747f) workDatabase.m42610b()).m1367b(new C26745d("next_alarm_manager_id", i));
                workDatabase.setTransactionSuccessful();
                workDatabase.endTransaction();
            } catch (Throwable th) {
                throw th;
            }
        }
        c26750i.m1365b(new C26748g(str, intValue));
        m1415c(context, str, intValue, j);
    }

    /* renamed from: c */
    public static void m1415c(Context context, String str, int i, long j) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, C26712b.m1413c(context, str), 201326592);
        if (alarmManager != null) {
            alarmManager.setExact(0, j, service);
        }
    }
}
