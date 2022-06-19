package p193e.p194a.p1049l4;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.presence.PresenceSchedulerReceiver;
import java.util.Objects;
import javax.inject.Inject;
import s1.z.c.l;
/* renamed from: e.a.l4.m */
/* loaded from: classes12-dex2jar.jar:e/a/l4/m.class */
public final class C17424m implements AbstractC17423l {

    /* renamed from: a */
    public final Context f48800a;

    @Inject
    public C17424m(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f48800a = context;
    }

    @Override // p193e.p194a.p1049l4.AbstractC17423l
    /* renamed from: a */
    public void mo16041a(long j) {
        m16039c(C2752R.C2754id.req_code_set_last_seen, "com.truecaller.action.ACTION_SET_LAST_SEEN", j);
    }

    @Override // p193e.p194a.p1049l4.AbstractC17423l
    /* renamed from: b */
    public void mo16040b(long j) {
        m16039c(C2752R.C2754id.req_code_presence_update, "com.truecaller.action.ACTION_UPDATE_PRESENCE_FOR_CURRENT_USER", j);
    }

    /* renamed from: c */
    public final void m16039c(int i, String str, long j) {
        Object systemService = this.f48800a.getSystemService("alarm");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.AlarmManager");
        AlarmManager alarmManager = (AlarmManager) systemService;
        Intent intent = new Intent(str);
        intent.setClass(this.f48800a, PresenceSchedulerReceiver.class);
        try {
            alarmManager.set(2, SystemClock.elapsedRealtime() + j, PendingIntent.getBroadcast(this.f48800a, i, intent, 67108864));
        } catch (NullPointerException e) {
        }
    }
}
