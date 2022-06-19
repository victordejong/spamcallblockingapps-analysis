package com.truecaller.calling.missedcallreminder;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import javax.inject.Inject;
import kotlin.Metadata;
import o3.a;
import p1727n3.p1807k.p1808a.C26458x;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p804h.p833q0.AbstractC14722a;
import p193e.p194a.p912i4.AbstractC15275e;
import p193e.p194a.p997k3.p998j.C16461b;
import q3.a.h1;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b9\u0010\u001bJ#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0013\u0010\t\u001a\u00020\u0006H\u0082@ø\u0001��¢\u0006\u0004\b\t\u0010\nR(\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R(\u0010\u001c\u001a\u00020\u00148\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\t\u0010\u0015\u0012\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R(\u0010!\u001a\u00020\u00148\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\u001d\u0010\u0015\u0012\u0004\b \u0010\u001b\u001a\u0004\b\u001e\u0010\u0017\"\u0004\b\u001f\u0010\u0019R(\u0010%\u001a\b\u0012\u0004\u0012\u00020\"0\u000b8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b#\u0010\u000e\u001a\u0004\b#\u0010\u0010\"\u0004\b$\u0010\u0012R(\u0010*\u001a\b\u0012\u0004\u0012\u00020&0\u000b8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b'\u0010\u000e\u001a\u0004\b(\u0010\u0010\"\u0004\b)\u0010\u0012R(\u0010/\u001a\b\u0012\u0004\u0012\u00020+0\u000b8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b,\u0010\u000e\u001a\u0004\b-\u0010\u0010\"\u0004\b.\u0010\u0012R\u0016\u00103\u001a\u0002008\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b1\u00102R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b4\u00106\"\u0004\b7\u00108\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006:"}, d2 = {"Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "a", "(Ls1/w/d;)Ljava/lang/Object;", "Lo3/a;", "Le/a/i4/e;", "f", "Lo3/a;", "getAnalyticsNotificationManager", "()Lo3/a;", "setAnalyticsNotificationManager", "(Lo3/a;)V", "analyticsNotificationManager", "Ls1/w/f;", "Ls1/w/f;", "getUiContext", "()Ls1/w/f;", "setUiContext", "(Ls1/w/f;)V", "getUiContext$annotations", "()V", "uiContext", C22021b.f61237c, "getAsyncContext", "setAsyncContext", "getAsyncContext$annotations", "asyncContext", "Le/a/h/q0/a;", "d", "setReminderManager", "reminderManager", "Le/a/k3/j/b;", "g", "getAggregatedContactDao", "setAggregatedContactDao", "aggregatedContactDao", "Lcom/truecaller/calling/initiate_call/InitiateCallHelper;", "e", "getInitiateCallHelper", "setInitiateCallHelper", "initiateCallHelper", "Ln3/k/a/x;", "h", "Ln3/k/a/x;", "notificationManager", AbstractC2405c.f7629a, "Landroid/content/Context;", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes3-dex2jar.jar:com/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver.class */
public final class MissedCallReminderNotificationReceiver extends BroadcastReceiver {
    @Inject

    /* renamed from: a */
    public f f10740a;
    @Inject

    /* renamed from: b */
    public f f10741b;
    @Inject

    /* renamed from: c */
    public Context f10742c;
    @Inject

    /* renamed from: d */
    public a<AbstractC14722a> f10743d;
    @Inject

    /* renamed from: e */
    public a<InitiateCallHelper> f10744e;
    @Inject

    /* renamed from: f */
    public a<AbstractC15275e> f10745f;
    @Inject

    /* renamed from: g */
    public a<C16461b> f10746g;

    /* renamed from: h */
    public C26458x f10747h;

    /* renamed from: b */
    public static final Intent m35740b(Context context, MissedCallReminder missedCallReminder) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(missedCallReminder, "reminder");
        Bundle bundle = new Bundle();
        bundle.putParcelable("reminder", missedCallReminder);
        Intent putExtra = new Intent(context, MissedCallReminderNotificationReceiver.class).setAction("com.truecaller.intent.action.MISSED_CALL_POST_REMINDER").putExtra("reminderBundle", bundle);
        l.d(putExtra, "Intent(context, MissedCa…ER_BUNDLE, wrapperBundle)");
        return putExtra;
    }

    /* renamed from: a */
    public final /* synthetic */ Object m35741a(d<? super s> dVar) {
        f fVar = this.f10740a;
        if (fVar != null) {
            Object a4 = s1.a.a.a.v0.f.d.a4(fVar, new a(this, (d) null), dVar);
            return a4 == s1.w.j.a.a ? a4 : s.a;
        }
        l.l("uiContext");
        throw null;
    }

    /* renamed from: c */
    public final Context m35739c() {
        Context context = this.f10742c;
        if (context != null) {
            return context;
        }
        l.l(AnalyticsConstants.CONTEXT);
        throw null;
    }

    /* renamed from: d */
    public final a<AbstractC14722a> m35738d() {
        a<AbstractC14722a> aVar = this.f10743d;
        if (aVar != null) {
            return aVar;
        }
        l.l("reminderManager");
        throw null;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (context == null || intent == null) {
            return;
        }
        AbstractC16444k2.f46188a.m17389a().mo11393I(this);
        C26458x c26458x = new C26458x(context);
        l.d(c26458x, "NotificationManagerCompat.from(context)");
        this.f10747h = c26458x;
        BroadcastReceiver.PendingResult goAsync = goAsync();
        h1 h1Var = h1.a;
        f fVar = this.f10740a;
        if (fVar != null) {
            s1.a.a.a.v0.f.d.w2(h1Var, fVar, (j0) null, new b(this, intent, goAsync, (d) null), 2, (Object) null);
        } else {
            l.l("uiContext");
            throw null;
        }
    }
}
