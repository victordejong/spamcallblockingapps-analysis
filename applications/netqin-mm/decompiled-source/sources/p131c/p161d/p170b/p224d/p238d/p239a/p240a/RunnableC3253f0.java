package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.internal.zaci;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
/* renamed from: c.d.b.d.d.a.a.f0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/f0.class */
public final class RunnableC3253f0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Result f11944a;

    /* renamed from: b */
    public final /* synthetic */ zaci f11945b;

    public RunnableC3253f0(zaci zaciVar, Result result) {
        this.f11945b = zaciVar;
        this.f11944a = result;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HandlerC3251e0 e0Var;
        HandlerC3251e0 e0Var2;
        WeakReference weakReference;
        WeakReference weakReference2;
        ResultTransform resultTransform;
        HandlerC3251e0 e0Var3;
        HandlerC3251e0 e0Var4;
        WeakReference weakReference3;
        try {
            try {
                BasePendingResult.f23094o.set(true);
                resultTransform = this.f11945b.f23265a;
                Preconditions.m17288a(resultTransform);
                PendingResult a = resultTransform.m17748a((ResultTransform) this.f11944a);
                e0Var3 = this.f11945b.f23271g;
                e0Var4 = this.f11945b.f23271g;
                e0Var3.sendMessage(e0Var4.obtainMessage(0, a));
                BasePendingResult.f23094o.set(false);
                zaci zaciVar = this.f11945b;
                zaci.m17494b(this.f11944a);
                weakReference3 = this.f11945b.f23270f;
                GoogleApiClient googleApiClient = (GoogleApiClient) weakReference3.get();
                if (googleApiClient != null) {
                    googleApiClient.mo17524a(this.f11945b);
                }
            } catch (RuntimeException e) {
                e0Var = this.f11945b.f23271g;
                e0Var2 = this.f11945b.f23271g;
                e0Var.sendMessage(e0Var2.obtainMessage(1, e));
                BasePendingResult.f23094o.set(false);
                zaci zaciVar2 = this.f11945b;
                zaci.m17494b(this.f11944a);
                weakReference = this.f11945b.f23270f;
                GoogleApiClient googleApiClient2 = (GoogleApiClient) weakReference.get();
                if (googleApiClient2 != null) {
                    googleApiClient2.mo17524a(this.f11945b);
                }
            }
        } catch (Throwable th) {
            BasePendingResult.f23094o.set(false);
            zaci zaciVar3 = this.f11945b;
            zaci.m17494b(this.f11944a);
            weakReference2 = this.f11945b.f23270f;
            GoogleApiClient googleApiClient3 = (GoogleApiClient) weakReference2.get();
            if (googleApiClient3 != null) {
                googleApiClient3.mo17524a(this.f11945b);
            }
            throw th;
        }
    }
}
