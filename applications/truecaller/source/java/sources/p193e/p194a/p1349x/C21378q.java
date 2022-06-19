package p193e.p194a.p1349x;

import androidx.activity.result.ActivityResult;
import com.truecaller.log.AssertionUtil;
import p1727n3.p1728a.p1730e.AbstractC25373a;
import s1.z.b.l;
/* renamed from: e.a.x.q */
/* loaded from: classes9-dex2jar.jar:e/a/x/q.class */
public final class C21378q<O> implements AbstractC25373a<ActivityResult> {

    /* renamed from: a */
    public final /* synthetic */ l f59836a;

    public C21378q(l lVar) {
        this.f59836a = lVar;
    }

    @Override // p1727n3.p1728a.p1730e.AbstractC25373a
    /* renamed from: a */
    public void mo3695a(ActivityResult activityResult) {
        ActivityResult activityResult2 = activityResult;
        try {
            l lVar = this.f59836a;
            s1.z.c.l.d(activityResult2, "it");
            lVar.d(activityResult2);
        } catch (SecurityException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }
}
