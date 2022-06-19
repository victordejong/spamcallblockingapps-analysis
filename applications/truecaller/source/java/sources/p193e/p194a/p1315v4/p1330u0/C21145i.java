package p193e.p194a.p1315v4.p1330u0;

import android.app.NotificationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.sdk.push.PushAppData;
import java.util.Objects;
import p193e.p194a.p1221t.p1230b.p1231c.C20358c;
import p193e.p194a.p1315v4.AbstractC21040l;
import p193e.p194a.p1315v4.AbstractC21043m0;
import p193e.p194a.p1315v4.C21020b0;
import p193e.p194a.p1315v4.C21154v;
import p193e.p194a.p1315v4.p1333w0.AbstractC21159b;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.s;
import s1.z.b.a;
import s1.z.c.b;
import s1.z.c.j;
import s1.z.c.l;
/* renamed from: e.a.v4.u0.i */
/* loaded from: classes12-dex2jar.jar:e/a/v4/u0/i.class */
public final class C21145i extends AbstractC21136a {

    /* renamed from: j */
    public final PushAppData f59319j;

    /* renamed from: k */
    public final NotificationManager f59320k;

    /* renamed from: l */
    public final C21020b0 f59321l;

    /* renamed from: m */
    public final Handler f59322m;

    /* renamed from: e.a.v4.u0.i$a */
    /* loaded from: classes12-dex2jar.jar:e/a/v4/u0/i$a.class */
    public static final /* synthetic */ class C21146a extends j implements a<s> {
        public C21146a(C21145i c21145i) {
            super(0, c21145i, C21145i.class, "exitWithRejectRequest", "exitWithRejectRequest()V", 0);
        }

        public Object invoke() {
            C21145i c21145i = (C21145i) ((b) this).b;
            PushAppData pushAppData = c21145i.f59319j;
            if (pushAppData != null) {
                c21145i.f59321l.m10411b(pushAppData);
            }
            AbstractC21159b abstractC21159b = c21145i.f59311a;
            if (abstractC21159b != null) {
                abstractC21159b.mo10198V1();
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21145i(Bundle bundle, NotificationManager notificationManager, C21020b0 c21020b0, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, AbstractC21040l abstractC21040l, C21154v c21154v, Handler handler, int i) {
        super(bundle, abstractC8541a, abstractC8438a, abstractC21040l, c21154v);
        Handler handler2 = (i & 128) != 0 ? new Handler() : null;
        l.e(bundle, "extras");
        l.e(notificationManager, "notificationManager");
        l.e(c21020b0, "sdkWebRepository");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(abstractC21040l, "eventsTrackerHolder");
        l.e(c21154v, "sdkAccountManager");
        l.e(handler2, "handler");
        this.f59320k = notificationManager;
        this.f59321l = c21020b0;
        this.f59322m = handler2;
        this.f59319j = (PushAppData) bundle.getParcelable("a");
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21144h
    /* renamed from: C */
    public boolean mo10238C() {
        return this.f59319j != null;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: a */
    public void mo10237a() {
        this.f59312b = true;
        PushAppData pushAppData = this.f59319j;
        if (pushAppData != null) {
            this.f59285i = true;
            Objects.requireNonNull(this.f59321l);
            ((AbstractC21043m0) C8367d.m28633a(KnownEndpoints.API, AbstractC21043m0.class)).m10386a(pushAppData.f14575a).enqueue(this);
            AbstractC21159b abstractC21159b = this.f59311a;
            if (abstractC21159b == null) {
                return;
            }
            abstractC21159b.mo10202S1();
        }
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21149a
    /* renamed from: b */
    public String mo10232b() {
        return "web_api";
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21144h, p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: c */
    public void mo10236c() {
        this.f59311a = null;
        this.f59322m.removeCallbacksAndMessages(null);
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21151c
    /* renamed from: f */
    public String mo10230f() {
        return "2.6.0";
    }

    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: h */
    public void mo10235h() {
        this.f59313c.mo10213d();
        AbstractC21159b abstractC21159b = this.f59311a;
        if (abstractC21159b != null) {
            abstractC21159b.mo10206M3();
            this.f59320k.cancel(16);
            long j = this.f59314d.getLong("timout_left", SystemClock.elapsedRealtime());
            long elapsedRealtime = SystemClock.elapsedRealtime();
            PushAppData pushAppData = this.f59319j;
            char c = pushAppData != null ? (pushAppData.f14577c * 1000) - (elapsedRealtime - j) : (char) 0;
            if (c > 0) {
                this.f59322m.removeCallbacksAndMessages(null);
                this.f59322m.postDelayed(new RunnableC21147j(new C21146a(this)), c);
                return;
            }
            if (pushAppData != null) {
                this.f59321l.m10411b(pushAppData);
            }
            AbstractC21159b abstractC21159b2 = this.f59311a;
            if (abstractC21159b2 == null) {
                return;
            }
            abstractC21159b2.mo10198V1();
        }
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: m */
    public C20358c mo10234m() {
        return new C20358c(0, 0, null);
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21151c
    /* renamed from: p */
    public String mo10226p() {
        return mo10225z();
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: x */
    public void mo10233x(int i, int i2) {
        PushAppData pushAppData = this.f59319j;
        if (pushAppData != null) {
            if (i != -1) {
                this.f59313c.mo10214c(i2);
                this.f59321l.m10411b(pushAppData);
                return;
            }
            Objects.requireNonNull(this.f59321l);
            ((AbstractC21043m0) C8367d.m28633a(KnownEndpoints.API, AbstractC21043m0.class)).m10386a(pushAppData.f14575a).enqueue(this);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (r3 != null) goto L7;
     */
    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21151c
    /* renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo10225z() {
        /*
            r2 = this;
            r0 = r2
            com.truecaller.sdk.push.PushAppData r0 = r0.f59319j
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L15
            r0 = r3
            java.lang.String r0 = r0.f14576b
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L15
            goto L18
        L15:
            java.lang.String r0 = ""
            r3 = r0
        L18:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1315v4.p1330u0.C21145i.mo10225z():java.lang.String");
    }
}
