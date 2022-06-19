package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import com.google.android.gms.common.api.Api;
/* renamed from: e.m.a.f.e.a.a.w */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/w.class */
public final class RunnableC24951w implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C24953x f69878a;

    public RunnableC24951w(C24953x c24953x) {
        this.f69878a = c24953x;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Api.Client client = this.f69878a.f69880a.f5850b;
        client.disconnect(client.getClass().getName().concat(" disconnecting because it was signed out."));
    }
}
