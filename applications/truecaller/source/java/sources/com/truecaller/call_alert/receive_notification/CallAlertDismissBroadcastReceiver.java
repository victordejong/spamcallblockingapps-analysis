package com.truecaller.call_alert.receive_notification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.contextcall.p159db.incomingcallcontext.IncomingCallContext;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17715r;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b��\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/truecaller/call_alert/receive_notification/CallAlertDismissBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "<init>", "()V", "call-alert_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes6-dex2jar.jar:com/truecaller/call_alert/receive_notification/CallAlertDismissBroadcastReceiver.class */
public final class CallAlertDismissBroadcastReceiver extends BroadcastReceiver {

    @e(c = "com.truecaller.call_alert.receive_notification.CallAlertDismissBroadcastReceiver$onReceive$1", f = "CallAlertDismissBroadcastReceiver.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.truecaller.call_alert.receive_notification.CallAlertDismissBroadcastReceiver$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/call_alert/receive_notification/CallAlertDismissBroadcastReceiver$a.class */
    public static final class C3582a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public final /* synthetic */ Context f10539e;

        /* renamed from: f */
        public final /* synthetic */ Intent f10540f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3582a(Context context, Intent intent, d dVar) {
            super(2, dVar);
            this.f10539e = context;
            this.f10540f = intent;
        }

        /* renamed from: i */
        public final d<s> m35805i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C3582a(this.f10539e, this.f10540f, dVar);
        }

        /* renamed from: k */
        public final Object m35804k(Object obj, Object obj2) {
            AbstractC19854f<AbstractC19463a0> mo21871s;
            AbstractC19463a0 mo11854a;
            IncomingCallContext incomingCallContext;
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            Context context = this.f10539e;
            Intent intent = this.f10540f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            if (context != null && (mo21871s = C18334g0.m15205s(context).mo21871s()) != null && (mo11854a = mo21871s.mo11854a()) != null) {
                C17715r.C17717b m15833a = C17715r.m15833a();
                m15833a.m15831b("user_dismissed");
                boolean z = false;
                if (intent != null) {
                    Boolean valueOf = Boolean.valueOf(intent.getBooleanExtra("extraDismissShouldLogCallContext", false));
                    z = false;
                    if (valueOf != null) {
                        z = valueOf.booleanValue();
                    }
                }
                if (intent != null && (incomingCallContext = (IncomingCallContext) intent.getParcelableExtra("extraDismissIncomingCallContext")) != null && z) {
                    m15833a.m15830c(incomingCallContext.getId());
                }
                mo11854a.mo13111a(m15833a.build());
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m35803s(Object obj) {
            AbstractC19854f<AbstractC19463a0> mo21871s;
            AbstractC19463a0 mo11854a;
            IncomingCallContext incomingCallContext;
            C25225a.m3932a3(obj);
            Context context = this.f10539e;
            if (context != null && (mo21871s = C18334g0.m15205s(context).mo21871s()) != null && (mo11854a = mo21871s.mo11854a()) != null) {
                C17715r.C17717b m15833a = C17715r.m15833a();
                m15833a.m15831b("user_dismissed");
                Intent intent = this.f10540f;
                boolean z = false;
                if (intent != null) {
                    Boolean valueOf = Boolean.valueOf(intent.getBooleanExtra("extraDismissShouldLogCallContext", false));
                    z = false;
                    if (valueOf != null) {
                        z = valueOf.booleanValue();
                    }
                }
                Intent intent2 = this.f10540f;
                if (intent2 != null && (incomingCallContext = (IncomingCallContext) intent2.getParcelableExtra("extraDismissIncomingCallContext")) != null && z) {
                    m15833a.m15830c(incomingCallContext.getId());
                }
                mo11854a.mo13111a(m15833a.build());
            }
            return s.a;
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        s1.a.a.a.v0.f.d.w2(h1.a, (f) null, (j0) null, new C3582a(context, intent, null), 3, (Object) null);
    }
}
