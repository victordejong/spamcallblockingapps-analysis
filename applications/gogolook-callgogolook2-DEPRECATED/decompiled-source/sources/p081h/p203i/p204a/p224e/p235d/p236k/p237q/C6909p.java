package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import com.google.android.gms.common.api.Status;
import p081h.p203i.p204a.p224e.p235d.p236k.C6819b;
import p081h.p203i.p204a.p224e.p293r.C9145i;
/* renamed from: h.i.a.e.d.k.q.p */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/p.class */
public class C6909p {
    /* renamed from: a */
    public static void m21600a(Status status, C9145i<Void> iVar) {
        m21599a(status, null, iVar);
    }

    /* renamed from: a */
    public static <TResult> void m21599a(Status status, TResult tresult, C9145i<TResult> iVar) {
        if (status.m31991J()) {
            iVar.m16006a((C9145i<TResult>) tresult);
        } else {
            iVar.m16007a((Exception) new C6819b(status));
        }
    }
}
