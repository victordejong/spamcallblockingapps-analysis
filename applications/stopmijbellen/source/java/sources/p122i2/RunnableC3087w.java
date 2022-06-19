package p122i2;

import android.os.Bundle;
import androidx.appcompat.widget.C0302z;
import com.android.billingclient.api.C0870b;
import com.google.android.gms.internal.play_billing.zzb;
import java.util.Objects;
import java.util.concurrent.Future;
import p134j4.AbstractC3228l2;
import p134j4.C3187b1;
import p134j4.C3192c2;
import p134j4.C3218j0;
import p134j4.C3231m1;
import p134j4.C3233n0;
import p134j4.C3236o0;
import p134j4.C3240p1;
import p134j4.C3243q1;
import p134j4.C3250t;
import p134j4.C3255u1;
import p134j4.C3261w1;
import p134j4.C3264x1;
import p201p6.C4018c;
/* renamed from: i2.w */
/* loaded from: classes-dex2jar.jar:i2/w.class */
public final /* synthetic */ class RunnableC3087w implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f10455a;

    /* renamed from: b */
    public final /* synthetic */ Object f10456b;

    /* renamed from: c */
    public final /* synthetic */ Object f10457c;

    public /* synthetic */ RunnableC3087w(Object obj, Object obj2, int i) {
        this.f10455a = i;
        this.f10456b = obj;
        this.f10457c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3218j0 c3218j0;
        switch (this.f10455a) {
            case 0:
                C0870b c0870b = (C0870b) this.f10456b;
                C3067c c3067c = (C3067c) this.f10457c;
                if (((C3081q) c0870b.f3213d.f1162b).f10437a != null) {
                    ((C3081q) c0870b.f3213d.f1162b).f10437a.m1116e(c3067c, null);
                    return;
                }
                Objects.requireNonNull((C3081q) c0870b.f3213d.f1162b);
                zzb.zzn("BillingClient", "No valid listener is set in BroadcastManager");
                return;
            case 1:
                Future future = (Future) this.f10456b;
                Runnable runnable = (Runnable) this.f10457c;
                if (future.isDone() || future.isCancelled()) {
                    return;
                }
                future.cancel(true);
                zzb.zzn("BillingClient", "Async task is taking too long, cancel it!");
                if (runnable == null) {
                    return;
                }
                runnable.run();
                return;
            case 2:
                C3250t c3250t = (C3250t) this.f10456b;
                Bundle bundle = (Bundle) this.f10457c;
                C3187b1 c3187b1 = c3250t.f10964g;
                Objects.requireNonNull(c3187b1);
                if (!((Boolean) c3187b1.m2562b(new C0302z(c3187b1, bundle))).booleanValue()) {
                    return;
                }
                C3236o0 c3236o0 = c3250t.f10965h;
                Objects.requireNonNull(c3236o0);
                C4018c c4018c = C3236o0.f10895k;
                c4018c.m1510b("Run extractor loop", new Object[0]);
                if (!c3236o0.f10905j.compareAndSet(false, true)) {
                    c4018c.m1506f("runLoop already looping; return", new Object[0]);
                    return;
                }
                while (true) {
                    try {
                        c3218j0 = c3236o0.f10904i.m2558a();
                    } catch (C3233n0 e) {
                        C3236o0.f10895k.m1509c("Error while getting next extraction task: %s", e.getMessage());
                        if (e.f10888a >= 0) {
                            ((AbstractC3228l2) c3236o0.f10903h.zza()).zzi(e.f10888a);
                            c3236o0.m2526a(e.f10888a, e);
                        }
                        c3218j0 = null;
                    }
                    if (c3218j0 == null) {
                        c3236o0.f10905j.set(false);
                        return;
                    }
                    try {
                        if (c3218j0 instanceof C3218j0) {
                            c3236o0.f10897b.m2537a(c3218j0);
                        } else if (c3218j0 instanceof C3192c2) {
                            c3236o0.f10898c.m2556a(c3218j0);
                        } else if (c3218j0 instanceof C3231m1) {
                            c3236o0.f10899d.m2528a(c3218j0);
                        } else if (c3218j0 instanceof C3240p1) {
                            c3236o0.f10900e.m2515a(c3218j0);
                        } else if (c3218j0 instanceof C3255u1) {
                            c3236o0.f10901f.m2503a(c3218j0);
                        } else if (c3218j0 instanceof C3261w1) {
                            c3236o0.f10902g.m2476a(c3218j0);
                        } else {
                            C3236o0.f10895k.m1509c("Unknown task type: %s", c3218j0.getClass().getName());
                        }
                    } catch (Exception e2) {
                        C3236o0.f10895k.m1509c("Error during extraction task: %s", e2.getMessage());
                        ((AbstractC3228l2) c3236o0.f10903h.zza()).zzi(c3218j0.f10746a);
                        c3236o0.m2526a(c3218j0.f10746a, e2);
                    }
                }
            case 3:
                C3243q1 c3243q1 = (C3243q1) this.f10456b;
                C3240p1 c3240p1 = (C3240p1) this.f10457c;
                c3243q1.f10938a.m2501b(c3240p1.f10747b, c3240p1.f10925c, c3240p1.f10926d);
                return;
            default:
                C3264x1 c3264x1 = (C3264x1) this.f10456b;
                C3261w1 c3261w1 = (C3261w1) this.f10457c;
                c3264x1.f11057a.m2501b(c3261w1.f10747b, c3261w1.f11047d, c3261w1.f11048e);
                return;
        }
    }
}
