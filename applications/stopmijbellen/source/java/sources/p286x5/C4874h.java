package p286x5;

import com.google.android.gms.tasks.TaskCompletionSource;
import p306z5.AbstractC5107d;
/* renamed from: x5.h */
/* loaded from: classes-dex2jar.jar:x5/h.class */
public class C4874h implements AbstractC4877k {

    /* renamed from: a */
    public final TaskCompletionSource<String> f14936a;

    public C4874h(TaskCompletionSource<String> taskCompletionSource) {
        this.f14936a = taskCompletionSource;
    }

    @Override // p286x5.AbstractC4877k
    /* renamed from: a */
    public boolean mo324a(AbstractC5107d abstractC5107d) {
        if ((abstractC5107d.mo25f() == 3) || abstractC5107d.m21j() || abstractC5107d.m23h()) {
            this.f14936a.trySetResult(abstractC5107d.mo28c());
            return true;
        }
        return false;
    }

    @Override // p286x5.AbstractC4877k
    /* renamed from: b */
    public boolean mo323b(Exception exc) {
        return false;
    }
}
