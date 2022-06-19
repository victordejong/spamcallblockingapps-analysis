package p217r1;

import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.C0694a;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import p186o1.AbstractC3824h;
import p197p1.AbstractC4000d;
import p282x1.C4832p;
/* renamed from: r1.b */
/* loaded from: classes-dex2jar.jar:r1/b.class */
public class C4182b implements AbstractC4000d {

    /* renamed from: b */
    public static final String f13169b = AbstractC3824h.m1773e("SystemAlarmScheduler");

    /* renamed from: a */
    public final Context f13170a;

    public C4182b(Context context) {
        this.f13170a = context.getApplicationContext();
    }

    @Override // p197p1.AbstractC4000d
    /* renamed from: b */
    public void mo1126b(String str) {
        Context context = this.f13170a;
        String str2 = C0694a.f2671d;
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_STOP_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        this.f13170a.startService(intent);
    }

    @Override // p197p1.AbstractC4000d
    /* renamed from: d */
    public void mo1124d(C4832p... c4832pArr) {
        for (C4832p c4832p : c4832pArr) {
            AbstractC3824h.m1774c().mo1772a(f13169b, String.format("Scheduling work with workSpecId %s", c4832p.f14831a), new Throwable[0]);
            this.f13170a.startService(C0694a.m7469d(this.f13170a, c4832p.f14831a));
        }
    }

    @Override // p197p1.AbstractC4000d
    /* renamed from: f */
    public boolean mo1122f() {
        return true;
    }
}
