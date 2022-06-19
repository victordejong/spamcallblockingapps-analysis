package com.truecaller.callerid.callstate;

import android.telecom.Call;
import android.telecom.CallScreeningService;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.TrueApp;
import com.truecaller.callerid.CallerIdPerformanceTracker;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1266t4.AbstractC20560c;
import p193e.p194a.p673d0.p675b.AbstractC12481d;
import p193e.p194a.p673d0.p675b.AbstractC12486i;
import p193e.p194a.p703e3.AbstractC13348a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\bC\u0010!J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\b\u0010\u0006R\"\u0010\u0010\u001a\u00020\t8��@��X\u0081.¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0018\u001a\u00020\u00118��@��X\u0081.¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R(\u0010\"\u001a\u00020\u00198��@��X\u0081.¢\u0006\u0018\n\u0004\b\u001a\u0010\u001b\u0012\u0004\b \u0010!\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR(\u0010+\u001a\b\u0012\u0004\u0012\u00020$0#8��@��X\u0081.¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\"\u00103\u001a\u00020,8��@��X\u0081.¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\"\u0010:\u001a\u0002048��@��X\u0081.¢\u0006\u0012\n\u0004\b\b\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\"\u0010B\u001a\u00020;8��@��X\u0081.¢\u0006\u0012\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010A¨\u0006D"}, d2 = {"Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;", "Landroid/telecom/CallScreeningService;", "Landroid/telecom/Call$Details;", "details", "Ls1/s;", "onScreenCall", "(Landroid/telecom/Call$Details;)V", "call", "a", "Le/a/p5/c;", AbstractC2405c.f7629a, "Le/a/p5/c;", "getClock$truecaller_googlePlayRelease", "()Le/a/p5/c;", "setClock$truecaller_googlePlayRelease", "(Le/a/p5/c;)V", "clock", "Le/a/e3/a;", "f", "Le/a/e3/a;", "getCallAlert$truecaller_googlePlayRelease", "()Le/a/e3/a;", "setCallAlert$truecaller_googlePlayRelease", "(Le/a/e3/a;)V", "callAlert", "Ls1/w/f;", "g", "Ls1/w/f;", "getUiContext$truecaller_googlePlayRelease", "()Ls1/w/f;", "setUiContext$truecaller_googlePlayRelease", "(Ls1/w/f;)V", "getUiContext$truecaller_googlePlayRelease$annotations", "()V", "uiContext", "Le/a/r2/f;", "Le/a/t4/c;", C22021b.f61237c, "Le/a/r2/f;", "getRinger$truecaller_googlePlayRelease", "()Le/a/r2/f;", "setRinger$truecaller_googlePlayRelease", "(Le/a/r2/f;)V", "ringer", "Lcom/truecaller/callerid/CallerIdPerformanceTracker;", "d", "Lcom/truecaller/callerid/CallerIdPerformanceTracker;", "getPerformanceTracker$truecaller_googlePlayRelease", "()Lcom/truecaller/callerid/CallerIdPerformanceTracker;", "setPerformanceTracker$truecaller_googlePlayRelease", "(Lcom/truecaller/callerid/CallerIdPerformanceTracker;)V", "performanceTracker", "Le/a/d0/b/d;", "Le/a/d0/b/d;", "getCallProcessor$truecaller_googlePlayRelease", "()Le/a/d0/b/d;", "setCallProcessor$truecaller_googlePlayRelease", "(Le/a/d0/b/d;)V", "callProcessor", "Le/a/q2/a;", "e", "Le/a/q2/a;", "getAnalytics$truecaller_googlePlayRelease", "()Le/a/q2/a;", "setAnalytics$truecaller_googlePlayRelease", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes6-dex2jar.jar:com/truecaller/callerid/callstate/TruecallerCallScreeningService.class */
public final class TruecallerCallScreeningService extends CallScreeningService {

    /* renamed from: h */
    public static boolean f10604h;
    @Inject

    /* renamed from: a */
    public AbstractC12481d f10605a;
    @Inject

    /* renamed from: b */
    public AbstractC19854f<AbstractC20560c> f10606b;
    @Inject

    /* renamed from: c */
    public AbstractC19222c f10607c;
    @Inject

    /* renamed from: d */
    public CallerIdPerformanceTracker f10608d;
    @Inject

    /* renamed from: e */
    public AbstractC19462a f10609e;
    @Inject

    /* renamed from: f */
    public AbstractC13348a f10610f;
    @Inject

    /* renamed from: g */
    public f f10611g;

    @e(c = "com.truecaller.callerid.callstate.TruecallerCallScreeningService$onScreenCall$1", f = "TruecallerCallScreeningService.kt", l = {95, 104, 121}, m = "invokeSuspend")
    /* renamed from: com.truecaller.callerid.callstate.TruecallerCallScreeningService$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/callerid/callstate/TruecallerCallScreeningService$a.class */
    public static final class C3597a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f10612e;

        /* renamed from: f */
        public int f10613f;

        /* renamed from: h */
        public final /* synthetic */ AbstractC12486i.C12490d f10615h;

        /* renamed from: i */
        public final /* synthetic */ Call.Details f10616i;

        /* renamed from: j */
        public final /* synthetic */ String f10617j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3597a(AbstractC12486i.C12490d c12490d, Call.Details details, String str, d dVar) {
            super(2, dVar);
            TruecallerCallScreeningService.this = r5;
            this.f10615h = c12490d;
            this.f10616i = details;
            this.f10617j = str;
        }

        /* renamed from: i */
        public final d<s> m35774i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C3597a(this.f10615h, this.f10616i, this.f10617j, dVar);
        }

        /* renamed from: k */
        public final Object m35773k(Object obj, Object obj2) {
            return m35774i(obj, (d) obj2).m35772s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:40:0x0122  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x015b  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x020c  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x0282  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m35772s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 687
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.callerid.callstate.TruecallerCallScreeningService.C3597a.m35772s(java.lang.Object):java.lang.Object");
        }
    }

    public TruecallerCallScreeningService() {
        TrueApp m36032b0 = TrueApp.m36032b0();
        l.d(m36032b0, "TrueApp.getApp()");
        m36032b0.m36031c0().mo11160c(this);
    }

    /* renamed from: a */
    public final void m35775a(Call.Details details) {
        respondToCall(details, new CallScreeningService.CallResponse.Builder().setDisallowCall(false).setSkipNotification(false).build());
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x010b  */
    @Override // android.telecom.CallScreeningService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onScreenCall(android.telecom.Call.Details r12) {
        /*
            Method dump skipped, instructions count: 539
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.callerid.callstate.TruecallerCallScreeningService.onScreenCall(android.telecom.Call$Details):void");
    }
}
