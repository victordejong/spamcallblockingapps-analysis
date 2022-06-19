package com.truecaller.messaging.insights;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.C26458x;
import p193e.p194a.p1114o5.AbstractC19044j;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p282u0.AbstractC7272d;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10406a;
@Metadata(bv = {1, 0, 3}, d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\bB\u0010CJ#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bR\"\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\"\u0010(\u001a\u00020!8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u00100\u001a\u00020)8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u00108\u001a\u0002018\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R(\u0010A\u001a\b\u0012\u0004\u0012\u00020:098\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@¨\u0006D"}, d2 = {"Lcom/truecaller/messaging/insights/SmartNotifBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "Le/a/o5/j;", "g", "Le/a/o5/j;", "getAppListener", "()Le/a/o5/j;", "setAppListener", "(Le/a/o5/j;)V", "appListener", "Le/a/q2/i0;", "i", "Le/a/q2/i0;", "getMessageAnalytics", "()Le/a/q2/i0;", "setMessageAnalytics", "(Le/a/q2/i0;)V", "messageAnalytics", "Le/a/c/e/c;", AbstractC2405c.f7629a, "Le/a/c/e/c;", "getAnalyticsManager", "()Le/a/c/e/c;", "setAnalyticsManager", "(Le/a/c/e/c;)V", "analyticsManager", "Le/a/c/c0/o;", "f", "Le/a/c/c0/o;", "getInsightConfig", "()Le/a/c/c0/o;", "setInsightConfig", "(Le/a/c/c0/o;)V", "insightConfig", "Ln3/k/a/x;", "e", "Ln3/k/a/x;", "getNotificationManager", "()Ln3/k/a/x;", "setNotificationManager", "(Ln3/k/a/x;)V", "notificationManager", "Le/a/c/i/l/f/a;", "d", "Le/a/c/i/l/f/a;", "getSmartNotificationManager", "()Le/a/c/i/l/f/a;", "setSmartNotificationManager", "(Le/a/c/i/l/f/a;)V", "smartNotificationManager", "Le/a/r2/f;", "Le/a/a/g/m;", "h", "Le/a/r2/f;", "getStorage", "()Le/a/r2/f;", "setStorage", "(Le/a/r2/f;)V", "storage", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/insights/SmartNotifBroadcastReceiver.class */
public final class SmartNotifBroadcastReceiver extends AbstractC7272d {
    @Inject

    /* renamed from: c */
    public AbstractC10060c f13527c;
    @Inject

    /* renamed from: d */
    public AbstractC10406a f13528d;
    @Inject

    /* renamed from: e */
    public C26458x f13529e;
    @Inject

    /* renamed from: f */
    public AbstractC10028o f13530f;
    @Inject

    /* renamed from: g */
    public AbstractC19044j f13531g;
    @Inject

    /* renamed from: h */
    public AbstractC19854f<AbstractC6233m> f13532h;
    @Inject

    /* renamed from: i */
    public AbstractC19510i0 f13533i;

    /* JADX WARN: Code restructure failed: missing block: B:79:0x01df, code lost:
        if (r0.length() == 0) goto L80;
     */
    @Override // p193e.p194a.p195a.p282u0.AbstractC7272d, android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onReceive(android.content.Context r12, android.content.Intent r13) {
        /*
            Method dump skipped, instructions count: 644
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.insights.SmartNotifBroadcastReceiver.onReceive(android.content.Context, android.content.Intent):void");
    }
}
