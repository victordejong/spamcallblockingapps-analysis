package p193e.p194a;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.truecaller.voip.notification.blocked.VoipBlockedCallsWorker;
import java.util.Objects;
import p1727n3.p1861s.p1862a.AbstractC26979b;
import p193e.p194a.p619d.p666y.p667a.C12293g;
import p193e.p194a.p619d.p666y.p667a.C12296h;
import p193e.p194a.p682e.C12864a2;
/* renamed from: e.a.f1 */
/* loaded from: classes4-dex2jar.jar:e/a/f1.class */
public class C13903f1 implements AbstractC26979b {

    /* renamed from: a */
    public final /* synthetic */ C19813r1 f40293a;

    public C13903f1(C19813r1 c19813r1) {
        this.f40293a = c19813r1;
    }

    @Override // p1727n3.p1861s.p1862a.AbstractC26979b
    /* renamed from: a */
    public ListenableWorker mo1026a(Context context, WorkerParameters workerParameters) {
        C19813r1 c19813r1 = this.f40293a.f55161P;
        Objects.requireNonNull(c19813r1);
        VoipBlockedCallsWorker voipBlockedCallsWorker = new VoipBlockedCallsWorker(context, workerParameters);
        voipBlockedCallsWorker.f16377a = new C12293g(new C12296h(c19813r1.mo12335j()), C12864a2.m22570X(c19813r1.f55467f), C12864a2.m22571W(c19813r1.f55467f));
        voipBlockedCallsWorker.f16378b = c19813r1.m12499Wc();
        return voipBlockedCallsWorker;
    }
}
