package p193e.p1577m.p1578a.p1642f.p1653e.p1656b;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.common.internal.zas;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.TimeUnit;
/* renamed from: e.m.a.f.e.b.h */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/b/h.class */
public final class C24971h implements PendingResult.StatusListener {

    /* renamed from: a */
    public final /* synthetic */ PendingResult f69916a;

    /* renamed from: b */
    public final /* synthetic */ TaskCompletionSource f69917b;

    /* renamed from: c */
    public final /* synthetic */ PendingResultUtil.ResultConverter f69918c;

    /* renamed from: d */
    public final /* synthetic */ zas f69919d;

    public C24971h(PendingResult pendingResult, TaskCompletionSource taskCompletionSource, PendingResultUtil.ResultConverter resultConverter, zas zasVar) {
        this.f69916a = pendingResult;
        this.f69917b = taskCompletionSource;
        this.f69918c = resultConverter;
        this.f69919d = zasVar;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    /* renamed from: a */
    public final void mo4256a(Status status) {
        if (!status.m39042q2()) {
            TaskCompletionSource taskCompletionSource = this.f69917b;
            taskCompletionSource.f6493a.v(ApiExceptionUtil.m38920a(status));
            return;
        }
        Result await = this.f69916a.await(0L, TimeUnit.MILLISECONDS);
        TaskCompletionSource taskCompletionSource2 = this.f69917b;
        taskCompletionSource2.f6493a.w(this.f69918c.mo4255a(await));
    }
}
