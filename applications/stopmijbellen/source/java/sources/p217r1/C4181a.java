package p217r1;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.C0694a;
import p186o1.AbstractC3824h;
import p197p1.C4006j;
import p282x1.C4813d;
import p282x1.C4815f;
import p282x1.C4817g;
import p282x1.C4819i;
import p292y1.C4959f;
/* renamed from: r1.a */
/* loaded from: classes-dex2jar.jar:r1/a.class */
public class C4181a {

    /* renamed from: a */
    public static final String f13168a = AbstractC3824h.m1773e("Alarms");

    /* renamed from: a */
    public static void m1306a(Context context, String str, int i) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, C0694a.m7470c(context, str), Build.VERSION.SDK_INT >= 23 ? 603979776 : 536870912);
        if (service == null || alarmManager == null) {
            return;
        }
        AbstractC3824h.m1774c().mo1772a(f13168a, String.format("Cancelling existing alarm with (workSpecId, systemId) (%s, %s)", str, Integer.valueOf(i)), new Throwable[0]);
        alarmManager.cancel(service);
    }

    /* renamed from: b */
    public static void m1305b(Context context, C4006j c4006j, String str, long j) {
        int intValue;
        WorkDatabase workDatabase = c4006j.f12584c;
        C4819i c4819i = (C4819i) workDatabase.mo7478n();
        C4817g m396a = c4819i.m396a(str);
        if (m396a != null) {
            m1306a(context, str, m396a.f14817b);
            m1304c(context, str, m396a.f14817b, j);
            return;
        }
        synchronized (C4959f.class) {
            try {
                workDatabase.m3819c();
                Long m398a = ((C4815f) workDatabase.mo7479m()).m398a("next_alarm_manager_id");
                int i = 0;
                intValue = m398a != null ? m398a.intValue() : 0;
                if (intValue != Integer.MAX_VALUE) {
                    i = intValue + 1;
                }
                ((C4815f) workDatabase.mo7479m()).m397b(new C4813d("next_alarm_manager_id", i));
                workDatabase.m3811k();
                workDatabase.m3815g();
            } catch (Throwable th) {
                throw th;
            }
        }
        c4819i.m395b(new C4817g(str, intValue));
        m1304c(context, str, intValue, j);
    }

    /* renamed from: c */
    public static void m1304c(Context context, String str, int i, long j) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, C0694a.m7470c(context, str), Build.VERSION.SDK_INT >= 23 ? 201326592 : 134217728);
        if (alarmManager != null) {
            alarmManager.setExact(0, j, service);
        }
    }
}
