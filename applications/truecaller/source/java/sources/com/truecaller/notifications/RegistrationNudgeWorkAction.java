package com.truecaller.notifications;

import android.content.Context;
import androidx.work.ListenableWorker;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1220s4.AbstractC20235a;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p912i4.AbstractC15290s;
import s1.z.c.l;
import w3.b.a.b;
/* loaded from: classes11-dex2jar.jar:com/truecaller/notifications/RegistrationNudgeWorkAction.class */
public final class RegistrationNudgeWorkAction extends AbstractC21765k {

    /* renamed from: b */
    public final String f14098b;

    /* renamed from: c */
    public final Context f14099c;

    /* renamed from: d */
    public final AbstractC19462a f14100d;

    /* renamed from: e */
    public final AbstractC15290s f14101e;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u000e\b\u0080\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B!\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\f\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\t\u001a\u0004\b\r\u0010\u000bj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014¨\u0006\u0015"}, d2 = {"Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;", "", "", "interval", "J", "getInterval", "()J", "", "title", "I", "getTitle", "()I", "text", "getText", "<init>", "(Ljava/lang/String;IJII)V", "INIT", "FIRST", "SECOND", "THIRD", "DONE", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes11-dex2jar.jar:com/truecaller/notifications/RegistrationNudgeWorkAction$TaskState.class */
    public enum TaskState {
        INIT(0, C2752R.string.LocalNotificationRegReminderFirstTitle, C2752R.string.LocalNotificationRegReminderFirstText),
        FIRST(3600, C2752R.string.LocalNotificationRegReminderFirstTitle, C2752R.string.LocalNotificationRegReminderFirstText),
        SECOND(86400, C2752R.string.LocalNotificationRegReminderSecondTitle, C2752R.string.LocalNotificationRegReminderSecondText),
        THIRD(604800, C2752R.string.LocalNotificationRegReminderThirdTitle, C2752R.string.LocalNotificationRegReminderThirdText),
        DONE(-1, C2752R.string.LocalNotificationRegReminderFirstTitle, C2752R.string.LocalNotificationRegReminderFirstText);
        
        private final long interval;
        private final int text;
        private final int title;

        TaskState(long j, int i, int i2) {
            this.interval = j;
            this.title = i;
            this.text = i2;
        }

        public final long getInterval() {
            return this.interval;
        }

        public final int getText() {
            return this.text;
        }

        public final int getTitle() {
            return this.title;
        }
    }

    @Inject
    public RegistrationNudgeWorkAction(Context context, AbstractC20235a abstractC20235a, AbstractC19462a abstractC19462a, AbstractC15290s abstractC15290s) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC20235a, "firebaseRemoteConfig");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC15290s, "registrationNudgeHelper");
        this.f14099c = context;
        this.f14100d = abstractC19462a;
        this.f14101e = abstractC15290s;
        if (C18334g0.m15261J("regNudgeLastShown", 0L) == 0) {
            C18334g0.m15192y0("regNudgeLastShown", System.currentTimeMillis());
            C18334g0.m15192y0("regNudgeBadgeStartTime", System.currentTimeMillis());
        }
        abstractC20235a.mo11312b();
        this.f14098b = "RegistrationNudgeWorkAction";
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        boolean z;
        int days = (int) TimeUnit.MILLISECONDS.toDays(System.currentTimeMillis() - C18334g0.m15261J("regNudgeBadgeStartTime", System.currentTimeMillis() - 60000));
        if (days >= 1) {
            C12864a2.m22562c0(C23228f0.m7354a(), days);
            C18334g0.m15198v0("regNudgeBadgeSet", true);
        }
        String m15250R = C18334g0.m15250R("registrationNotificationState", TaskState.INIT.toString());
        l.d(m15250R, "CommonSettings.getString…askState.INIT.toString())");
        TaskState valueOf = TaskState.valueOf(m15250R);
        String str = "RegistrationNudgeWorkAction: Current State: " + valueOf;
        TaskState m34850d = m34850d(valueOf);
        TaskState taskState = TaskState.DONE;
        if (m34850d == taskState || valueOf == taskState) {
            ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            l.d(c0417c, "Result.success()");
            return c0417c;
        }
        if (new b(C18334g0.m15261J("regNudgeLastShown", 0L)).C(m34850d(valueOf).getInterval() * 1000).h(System.currentTimeMillis())) {
            System.currentTimeMillis();
            z = true;
        } else {
            z = false;
        }
        if (z) {
            TaskState m34850d2 = m34850d(valueOf);
            this.f14101e.mo18954a(this.f14099c, m34850d2.getTitle(), m34850d2.getText(), m34850d2.toString());
            C18334g0.m15276B0("registrationNotificationState", m34850d2.toString());
            C18334g0.m15192y0("regNudgeLastShown", System.currentTimeMillis());
            AbstractC19462a abstractC19462a = this.f14100d;
            HashMap hashMap = new HashMap();
            hashMap.put("Type", "regNudge");
            hashMap.put("Status", C19231g0.m13808I(m34850d2.toString()));
            AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("Notification", null, hashMap, null);
            l.d(c19505a, "AnalyticsEvent.Builder(A…tate.toString())).build()");
            abstractC19462a.mo13271e(c19505a);
            String str2 = "RegistrationNudgeWorkAction: Moved to State: " + m34850d2;
        }
        ListenableWorker.AbstractC0414a.C0417c c0417c2 = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c2, "Result.success()");
        return c0417c2;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f14098b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0064, code lost:
        if ((p193e.p194a.p1114o5.p1119c2.C18995r0.m14265a(r3.f14099c) instanceof p193e.p194a.p1114o5.p1119c2.C18966e0) == false) goto L15;
     */
    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo9061c() {
        /*
            r3 = this;
            java.lang.String r0 = "registrationNotificationState"
            com.truecaller.notifications.RegistrationNudgeWorkAction$TaskState r1 = com.truecaller.notifications.RegistrationNudgeWorkAction.TaskState.INIT
            java.lang.String r1 = r1.toString()
            java.lang.String r0 = p193e.p194a.p1066n.C18334g0.m15250R(r0, r1)
            r4 = r0
            r0 = r4
            java.lang.String r1 = "CommonSettings.getString…askState.INIT.toString())"
            s1.z.c.l.d(r0, r1)
            r0 = r4
            com.truecaller.notifications.RegistrationNudgeWorkAction$TaskState r0 = com.truecaller.notifications.RegistrationNudgeWorkAction.TaskState.valueOf(r0)
            r4 = r0
            r0 = r3
            android.content.Context r0 = r0.f14099c
            r5 = r0
            r0 = r5
            java.lang.String r1 = "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r5
            e.a.b0.g.a r0 = (p193e.p194a.p372b0.p411g.AbstractApplicationC8442a) r0
            boolean r0 = r0.mo28540W()
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L6a
            r0 = r3
            r1 = r4
            com.truecaller.notifications.RegistrationNudgeWorkAction$TaskState r0 = r0.m34850d(r1)
            r5 = r0
            com.truecaller.notifications.RegistrationNudgeWorkAction$TaskState r0 = com.truecaller.notifications.RegistrationNudgeWorkAction.TaskState.DONE
            r8 = r0
            r0 = r5
            r1 = r8
            if (r0 == r1) goto L52
            r0 = r4
            r1 = r8
            if (r0 != r1) goto L4c
            goto L52
        L4c:
            r0 = 0
            r9 = r0
            goto L55
        L52:
            r0 = 1
            r9 = r0
        L55:
            r0 = r9
            if (r0 != 0) goto L6a
            r0 = r3
            android.content.Context r0 = r0.f14099c
            e.a.o5.c2.k r0 = p193e.p194a.p1114o5.p1119c2.C18995r0.m14265a(r0)
            boolean r0 = r0 instanceof p193e.p194a.p1114o5.p1119c2.C18966e0
            if (r0 != 0) goto L6a
            goto L6d
        L6a:
            r0 = 0
            r7 = r0
        L6d:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.notifications.RegistrationNudgeWorkAction.mo9061c():boolean");
    }

    /* renamed from: d */
    public final TaskState m34850d(TaskState taskState) {
        int ordinal = taskState.ordinal();
        return ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? TaskState.DONE : TaskState.DONE : TaskState.THIRD : TaskState.SECOND : TaskState.FIRST;
    }
}
