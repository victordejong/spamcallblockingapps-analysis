package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.TaskCompletionSource;
/* renamed from: e.m.a.f.e.a.a.i0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/i0.class */
public final class C24924i0 extends TaskApiCall {

    /* renamed from: a */
    public final /* synthetic */ TaskApiCall.Builder f69844a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C24924i0(TaskApiCall.Builder builder, Feature[] featureArr, boolean z, int i) {
        super(featureArr, z, i);
        this.f69844a = builder;
    }

    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    public final void doExecute(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource) throws RemoteException {
        this.f69844a.f5775a.accept(anyClient, taskCompletionSource);
    }
}
