package com.truecaller.insights.p168ui.important.domain;

import android.os.Handler;
import com.huawei.hms.opendevice.AbstractC2405c;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC27013m0;
import p1727n3.p1868v.AbstractC27028u;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p437c.p438a.p446c.p449f.AbstractC8830y;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b��\u0018��2\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u000e¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl;", "Le/a/c/a/c/f/y;", "Ls1/s;", "onResume", "()V", "onPause", "Ljava/lang/Runnable;", C22021b.f61237c, "Ljava/lang/Runnable;", "timerRunnable", "Landroid/os/Handler;", "a", "Landroid/os/Handler;", "timerHandler", "Le/a/c/c0/o;", AbstractC2405c.f7629a, "Le/a/c/c0/o;", "insightConfig", "<init>", "(Le/a/c/c0/o;)V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.important.domain.UpdateImportantTabSeenUsecaseImpl */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl.class */
public final class UpdateImportantTabSeenUsecaseImpl implements AbstractC8830y {

    /* renamed from: a */
    public final Handler f12764a = new Handler();

    /* renamed from: b */
    public final Runnable f12765b = new RunnableC4092a();

    /* renamed from: c */
    public final AbstractC10028o f12766c;

    /* renamed from: com.truecaller.insights.ui.important.domain.UpdateImportantTabSeenUsecaseImpl$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl$a.class */
    public static final class RunnableC4092a implements Runnable {
        public RunnableC4092a() {
            UpdateImportantTabSeenUsecaseImpl.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            UpdateImportantTabSeenUsecaseImpl.this.f12766c.mo26856Z(true);
        }
    }

    @Inject
    public UpdateImportantTabSeenUsecaseImpl(AbstractC10028o abstractC10028o) {
        l.e(abstractC10028o, "insightConfig");
        this.f12766c = abstractC10028o;
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_PAUSE)
    public final void onPause() {
        this.f12764a.removeCallbacks(this.f12765b);
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_RESUME)
    public final void onResume() {
        this.f12764a.postDelayed(this.f12765b, 5000L);
    }
}
