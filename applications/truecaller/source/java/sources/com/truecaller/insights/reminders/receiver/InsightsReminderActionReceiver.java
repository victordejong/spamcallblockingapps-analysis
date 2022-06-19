package com.truecaller.insights.reminders.receiver;

import android.content.Context;
import android.content.Intent;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p437c.p598v.AbstractC10709a;
import p193e.p194a.p437c.p598v.p604i.AbstractC10745d;
import p193e.p194a.p437c.p598v.p604i.C10746e;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b#\u0010\u0019J#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bR\"\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR(\u0010\u001a\u001a\u00020\u00118\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\u0012\u0010\u0013\u0012\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006$"}, d2 = {"Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "Le/a/u3/g;", "e", "Le/a/u3/g;", "getFeaturesRegistry", "()Le/a/u3/g;", "setFeaturesRegistry", "(Le/a/u3/g;)V", "featuresRegistry", "Ls1/w/f;", "d", "Ls1/w/f;", "getCoroutineContext", "()Ls1/w/f;", "setCoroutineContext", "(Ls1/w/f;)V", "getCoroutineContext$annotations", "()V", "coroutineContext", "Le/a/c/v/a;", AbstractC2405c.f7629a, "Le/a/c/v/a;", "getReminderManager", "()Le/a/c/v/a;", "setReminderManager", "(Le/a/c/v/a;)V", "reminderManager", "<init>", "insights_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver.class */
public final class InsightsReminderActionReceiver extends AbstractC10745d {
    @Inject

    /* renamed from: c */
    public AbstractC10709a f12689c;
    @Inject

    /* renamed from: d */
    public f f12690d;
    @Inject

    /* renamed from: e */
    public C20592g f12691e;

    @e(c = "com.truecaller.insights.reminders.receiver.InsightsReminderActionReceiver$onReceive$1", f = "InsightsReminderActionReceiver.kt", l = {64}, m = "invokeSuspend")
    /* renamed from: com.truecaller.insights.reminders.receiver.InsightsReminderActionReceiver$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a.class */
    public static final class C4076a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f12692e;

        /* renamed from: g */
        public final /* synthetic */ Intent f12694g;

        /* renamed from: h */
        public final /* synthetic */ Context f12695h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4076a(Intent intent, Context context, d dVar) {
            super(2, dVar);
            InsightsReminderActionReceiver.this = r5;
            this.f12694g = intent;
            this.f12695h = context;
        }

        /* renamed from: i */
        public final d<s> m35212i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4076a(this.f12694g, this.f12695h, dVar);
        }

        /* renamed from: k */
        public final Object m35211k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4076a(this.f12694g, this.f12695h, dVar).m35210s(s.a);
        }

        /* renamed from: s */
        public final Object m35210s(Object obj) {
            Object obj2 = s.a;
            Object obj3 = a.a;
            int i = this.f12692e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                String action = this.f12694g.getAction();
                if (action != null && action.hashCode() == 1032343301 && action.equals("com.truecaller.insights.reminders.action.concrete")) {
                    InsightsReminderActionReceiver insightsReminderActionReceiver = InsightsReminderActionReceiver.this;
                    Context context = this.f12695h;
                    Intent intent = this.f12694g;
                    this.f12692e = 1;
                    f fVar = insightsReminderActionReceiver.f12690d;
                    if (fVar == null) {
                        l.l("coroutineContext");
                        throw null;
                    }
                    Object a4 = s1.a.a.a.v0.f.d.a4(fVar, new C10746e(insightsReminderActionReceiver, intent, context, null), this);
                    if (a4 != obj3) {
                        a4 = obj2;
                    }
                    if (a4 == obj3) {
                        return obj3;
                    }
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj2;
        }
    }

    @Override // p193e.p194a.p437c.p598v.p604i.AbstractC10745d, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        super.onReceive(context, intent);
        AbstractApplicationC8442a applicationContext = context != null ? context.getApplicationContext() : null;
        if (!(applicationContext instanceof AbstractApplicationC8442a) || intent == null || !applicationContext.mo28540W()) {
            return;
        }
        C20592g c20592g = this.f12691e;
        if (c20592g == null) {
            l.l("featuresRegistry");
            throw null;
        } else if (!c20592g.m10979Z().isEnabled()) {
        } else {
            s1.a.a.a.v0.f.d.c3((f) null, new C4076a(intent, context, null), 1, (Object) null);
        }
    }
}
