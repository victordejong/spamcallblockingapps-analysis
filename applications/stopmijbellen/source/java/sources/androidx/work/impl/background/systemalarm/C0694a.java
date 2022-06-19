package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import java.util.HashMap;
import java.util.Map;
import p186o1.AbstractC3824h;
import p197p1.AbstractC3996a;
/* renamed from: androidx.work.impl.background.systemalarm.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/a.class */
public class C0694a implements AbstractC3996a {

    /* renamed from: d */
    public static final String f2671d = AbstractC3824h.m1773e("CommandHandler");

    /* renamed from: a */
    public final Context f2672a;

    /* renamed from: b */
    public final Map<String, AbstractC3996a> f2673b = new HashMap();

    /* renamed from: c */
    public final Object f2674c = new Object();

    public C0694a(Context context) {
        this.f2672a = context;
    }

    /* renamed from: b */
    public static Intent m7471b(Context context) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_CONSTRAINTS_CHANGED");
        return intent;
    }

    /* renamed from: c */
    public static Intent m7470c(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: d */
    public static Intent m7469d(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_SCHEDULE_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    @Override // p197p1.AbstractC3996a
    /* renamed from: a */
    public void mo1352a(String str, boolean z) {
        synchronized (this.f2674c) {
            AbstractC3996a remove = this.f2673b.remove(str);
            if (remove != null) {
                remove.mo1352a(str, z);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x02e2  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m7468e(android.content.Intent r10, int r11, androidx.work.impl.background.systemalarm.C0697d r12) {
        /*
            Method dump skipped, instructions count: 1544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.background.systemalarm.C0694a.m7468e(android.content.Intent, int, androidx.work.impl.background.systemalarm.d):void");
    }
}
