package com.truecaller.insights.reminders.receiver;

import android.content.Context;
import android.content.Intent;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p437c.p523a0.AbstractC9625e;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10406a;
import p193e.p194a.p437c.p598v.AbstractC10709a;
import p193e.p194a.p437c.p598v.p604i.AbstractC10744c;
import p193e.p194a.p437c.p598v.p604i.C10742a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\bC\u0010\u001aJ#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ'\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0082@ø\u0001��¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\nH\u0082@ø\u0001��¢\u0006\u0004\b\u0010\u0010\u0011R(\u0010\u001b\u001a\u00020\u00128\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\u0013\u0010\u0014\u0012\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\"\u001a\u00020\u001c8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0010\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u0010:\u001a\u0002038\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\"\u0010B\u001a\u00020;8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010A\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006D"}, d2 = {"Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "", "Lcom/truecaller/insights/models/InsightsReminder;", "reminders", "a", "(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;", "reminder", "", AbstractC2405c.f7629a, "(Lcom/truecaller/insights/models/InsightsReminder;Ls1/w/d;)Ljava/lang/Object;", "Ls1/w/f;", "g", "Ls1/w/f;", "getCoroutineContext", "()Ls1/w/f;", "setCoroutineContext", "(Ls1/w/f;)V", "getCoroutineContext$annotations", "()V", "coroutineContext", "Le/a/c/v/a;", "Le/a/c/v/a;", C22021b.f61237c, "()Le/a/c/v/a;", "setReminderManager", "(Le/a/c/v/a;)V", "reminderManager", "Le/a/c/i/l/f/a;", "d", "Le/a/c/i/l/f/a;", "getNotificationManager", "()Le/a/c/i/l/f/a;", "setNotificationManager", "(Le/a/c/i/l/f/a;)V", "notificationManager", "Le/a/u3/g;", "h", "Le/a/u3/g;", "getFeaturesRegistry", "()Le/a/u3/g;", "setFeaturesRegistry", "(Le/a/u3/g;)V", "featuresRegistry", "Le/a/c/b/j;", "f", "Le/a/c/b/j;", "getInsightsStatusProvider", "()Le/a/c/b/j;", "setInsightsStatusProvider", "(Le/a/c/b/j;)V", "insightsStatusProvider", "Le/a/c/a0/e;", "e", "Le/a/c/a0/e;", "getActionDataSource", "()Le/a/c/a0/e;", "setActionDataSource", "(Le/a/c/a0/e;)V", "actionDataSource", "<init>", "insights_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/reminders/receiver/BillReminderReceiver.class */
public final class BillReminderReceiver extends AbstractC10744c {
    @Inject

    /* renamed from: c */
    public AbstractC10709a f12670c;
    @Inject

    /* renamed from: d */
    public AbstractC10406a f12671d;
    @Inject

    /* renamed from: e */
    public AbstractC9625e f12672e;
    @Inject

    /* renamed from: f */
    public AbstractC9691j f12673f;
    @Inject

    /* renamed from: g */
    public f f12674g;
    @Inject

    /* renamed from: h */
    public C20592g f12675h;

    @e(c = "com.truecaller.insights.reminders.receiver.BillReminderReceiver", f = "BillReminderReceiver.kt", l = {87}, m = "filterOutSuccessfulReminders")
    /* renamed from: com.truecaller.insights.reminders.receiver.BillReminderReceiver$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/reminders/receiver/BillReminderReceiver$a.class */
    public static final class C4073a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f12676d;

        /* renamed from: e */
        public int f12677e;

        /* renamed from: g */
        public Object f12679g;

        /* renamed from: h */
        public Object f12680h;

        /* renamed from: i */
        public Object f12681i;

        /* renamed from: j */
        public Object f12682j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4073a(d dVar) {
            super(dVar);
            BillReminderReceiver.this = r4;
        }

        /* renamed from: s */
        public final Object m35217s(Object obj) {
            this.f12676d = obj;
            this.f12677e |= Integer.MIN_VALUE;
            return BillReminderReceiver.this.m35220a(null, this);
        }
    }

    @e(c = "com.truecaller.insights.reminders.receiver.BillReminderReceiver", f = "BillReminderReceiver.kt", l = {92}, m = "isPaidSMSMessage")
    /* renamed from: com.truecaller.insights.reminders.receiver.BillReminderReceiver$b */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/reminders/receiver/BillReminderReceiver$b.class */
    public static final class C4074b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f12683d;

        /* renamed from: e */
        public int f12684e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4074b(d dVar) {
            super(dVar);
            BillReminderReceiver.this = r4;
        }

        /* renamed from: s */
        public final Object m35216s(Object obj) {
            this.f12683d = obj;
            this.f12684e |= Integer.MIN_VALUE;
            return BillReminderReceiver.this.m35218c(null, this);
        }
    }

    @e(c = "com.truecaller.insights.reminders.receiver.BillReminderReceiver$onReceive$1", f = "BillReminderReceiver.kt", l = {64}, m = "invokeSuspend")
    /* renamed from: com.truecaller.insights.reminders.receiver.BillReminderReceiver$c */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/reminders/receiver/BillReminderReceiver$c.class */
    public static final class C4075c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f12686e;

        /* renamed from: g */
        public final /* synthetic */ Intent f12688g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4075c(Intent intent, d dVar) {
            super(2, dVar);
            BillReminderReceiver.this = r5;
            this.f12688g = intent;
        }

        /* renamed from: i */
        public final d<s> m35215i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4075c(this.f12688g, dVar);
        }

        /* renamed from: k */
        public final Object m35214k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4075c(this.f12688g, dVar).m35213s(s.a);
        }

        /* renamed from: s */
        public final Object m35213s(Object obj) {
            Object obj2 = s.a;
            Object obj3 = a.a;
            int i = this.f12686e;
            try {
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    String stringExtra = this.f12688g.getStringExtra("extras_bill_ids");
                    if (stringExtra != null) {
                        l.d(stringExtra, "intent.getStringExtra(EX…DS) ?: return@runBlocking");
                        AbstractC9691j abstractC9691j = BillReminderReceiver.this.f12673f;
                        if (abstractC9691j == null) {
                            l.l("insightsStatusProvider");
                            throw null;
                        } else if (abstractC9691j.mo27264c()) {
                            BillReminderReceiver billReminderReceiver = BillReminderReceiver.this;
                            this.f12686e = 1;
                            f fVar = billReminderReceiver.f12674g;
                            if (fVar == null) {
                                l.l("coroutineContext");
                                throw null;
                            }
                            Object a4 = s1.a.a.a.v0.f.d.a4(fVar, new C10742a(billReminderReceiver, stringExtra, null), this);
                            if (a4 != obj3) {
                                a4 = obj2;
                            }
                            if (a4 == obj3) {
                                return obj3;
                            }
                        }
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
            } catch (Exception e) {
                C10263b.f30414d.m26508b(e, null);
            }
            return obj2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0131  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x00f3 -> B:22:0x00f9). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m35220a(java.util.List<com.truecaller.insights.models.InsightsReminder> r6, s1.w.d<? super java.util.List<com.truecaller.insights.models.InsightsReminder>> r7) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.insights.reminders.receiver.BillReminderReceiver.m35220a(java.util.List, s1.w.d):java.lang.Object");
    }

    /* renamed from: b */
    public final AbstractC10709a m35219b() {
        AbstractC10709a abstractC10709a = this.f12670c;
        if (abstractC10709a != null) {
            return abstractC10709a;
        }
        l.l("reminderManager");
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e8  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m35218c(com.truecaller.insights.models.InsightsReminder r7, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.insights.reminders.receiver.BillReminderReceiver.m35218c(com.truecaller.insights.models.InsightsReminder, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p598v.p604i.AbstractC10744c, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        super.onReceive(context, intent);
        AbstractApplicationC8442a applicationContext = context != null ? context.getApplicationContext() : null;
        if (!(applicationContext instanceof AbstractApplicationC8442a) || intent == null || !applicationContext.mo28540W()) {
            return;
        }
        C20592g c20592g = this.f12675h;
        if (c20592g == null) {
            l.l("featuresRegistry");
            throw null;
        } else if (!c20592g.m10979Z().isEnabled()) {
        } else {
            s1.a.a.a.v0.f.d.c3((f) null, new C4075c(intent, null), 1, (Object) null);
        }
    }
}
