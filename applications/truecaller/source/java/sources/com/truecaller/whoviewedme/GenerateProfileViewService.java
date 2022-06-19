package com.truecaller.whoviewedme;

import android.content.Context;
import android.content.Intent;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.AbstractServiceC26431i;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1193r5.AbstractC19954i0;
import p193e.p194a.p1193r5.AbstractC19955j;
import p193e.p194a.p1193r5.AbstractServiceC19940d;
import p193e.p194a.p997k3.p998j.C16487j;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018��2\u00020\u0001:\u0001)B\u0007¢\u0006\u0004\b'\u0010(J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006*"}, d2 = {"Lcom/truecaller/whoviewedme/GenerateProfileViewService;", "Ln3/k/a/a0;", "Landroid/content/Intent;", "intent", "Ls1/s;", "onHandleWork", "(Landroid/content/Intent;)V", "Le/a/q2/a;", "g", "Le/a/q2/a;", "getAnalytics", "()Le/a/q2/a;", "setAnalytics", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Le/a/r5/j;", "e", "Le/a/r5/j;", "getProfileViewDao", "()Le/a/r5/j;", "setProfileViewDao", "(Le/a/r5/j;)V", "profileViewDao", "Le/a/r5/i0;", "d", "Le/a/r5/i0;", "getWhoViewedMeManager", "()Le/a/r5/i0;", "setWhoViewedMeManager", "(Le/a/r5/i0;)V", "whoViewedMeManager", "Le/a/k3/j/j;", "f", "Le/a/k3/j/j;", "getRawContactDao", "()Le/a/k3/j/j;", "setRawContactDao", "(Le/a/k3/j/j;)V", "rawContactDao", "<init>", "()V", "a", "whoviewedme_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes8-dex2jar.jar:com/truecaller/whoviewedme/GenerateProfileViewService.class */
public final class GenerateProfileViewService extends AbstractServiceC19940d {

    /* renamed from: h */
    public static final /* synthetic */ int f16485h = 0;
    @Inject

    /* renamed from: d */
    public AbstractC19954i0 f16486d;
    @Inject

    /* renamed from: e */
    public AbstractC19955j f16487e;
    @Inject

    /* renamed from: f */
    public C16487j f16488f;
    @Inject

    /* renamed from: g */
    public AbstractC19462a f16489g;

    /* renamed from: com.truecaller.whoviewedme.GenerateProfileViewService$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/whoviewedme/GenerateProfileViewService$a.class */
    public static final class C4853a {
        /* renamed from: a */
        public static final void m34281a(Context context, long j, boolean z, int i, ProfileViewSource profileViewSource) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(profileViewSource, "source");
            AbstractServiceC26431i.enqueueWork(context.getApplicationContext(), GenerateProfileViewService.class, C4854R.C4856id.profile_view_task_job_id, new Intent(context, GenerateProfileViewService.class).putExtra("EXTRA_AGGR_CONTACT_ID", j).putExtra("EXTRA_SEARCH_TYPE", i).putExtra("EXTRA_IS_PB_CONTACT", z).putExtra("EXTRA_PROFILE_VIEW_EVENT_SOURCE", profileViewSource));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00ed, code lost:
        if (r14 == false) goto L23;
     */
    @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onHandleWork(android.content.Intent r7) {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.whoviewedme.GenerateProfileViewService.onHandleWork(android.content.Intent):void");
    }
}
