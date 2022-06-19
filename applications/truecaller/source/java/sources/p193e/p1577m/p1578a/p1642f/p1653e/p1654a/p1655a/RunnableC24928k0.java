package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.internal.zacv;
import java.util.Objects;
/* renamed from: e.m.a.f.e.a.a.k0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/k0.class */
public final class RunnableC24928k0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Result f69848a;

    /* renamed from: b */
    public final /* synthetic */ zacv f69849b;

    public RunnableC24928k0(zacv zacvVar, Result result) {
        this.f69849b = zacvVar;
        this.f69848a = result;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GoogleApiClient googleApiClient;
        Boolean bool = Boolean.FALSE;
        try {
            try {
                ThreadLocal<Boolean> threadLocal = BasePendingResult.zaa;
                threadLocal.set(Boolean.TRUE);
                ResultTransform<? super R, ? extends Result> resultTransform = this.f69849b.f5880a;
                Objects.requireNonNull(resultTransform, "null reference");
                PendingResult<? extends Result> m39045a = resultTransform.m39045a(this.f69848a);
                HandlerC24930l0 handlerC24930l0 = this.f69849b.f5886g;
                handlerC24930l0.sendMessage(handlerC24930l0.obtainMessage(0, m39045a));
                threadLocal.set(bool);
                zacv.m38946c(this.f69848a);
                googleApiClient = this.f69849b.f5885f.get();
                if (googleApiClient == null) {
                    return;
                }
            } catch (RuntimeException e) {
                HandlerC24930l0 handlerC24930l02 = this.f69849b.f5886g;
                handlerC24930l02.sendMessage(handlerC24930l02.obtainMessage(1, e));
                BasePendingResult.zaa.set(bool);
                zacv.m38946c(this.f69848a);
                googleApiClient = this.f69849b.f5885f.get();
                if (googleApiClient == null) {
                    return;
                }
            }
            googleApiClient.mo38952u(this.f69849b);
        } catch (Throwable th) {
            BasePendingResult.zaa.set(bool);
            zacv.m38946c(this.f69848a);
            GoogleApiClient googleApiClient2 = this.f69849b.f5885f.get();
            if (googleApiClient2 != null) {
                googleApiClient2.mo38952u(this.f69849b);
            }
            throw th;
        }
    }
}
