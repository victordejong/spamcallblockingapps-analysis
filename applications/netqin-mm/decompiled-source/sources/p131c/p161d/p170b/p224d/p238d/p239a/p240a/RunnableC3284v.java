package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import com.google.android.gms.common.api.Api;
/* renamed from: c.d.b.d.d.a.a.v */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/v.class */
public final class RunnableC3284v implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3285w f12000a;

    public RunnableC3284v(C3285w wVar) {
        this.f12000a = wVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Api.Client client;
        Api.AnyClient anyClient;
        client = this.f12000a.f12001a.f23139b;
        anyClient = this.f12000a.f12001a.f23140c;
        client.mo17617a(String.valueOf(anyClient.getClass().getName()).concat(" disconnecting because it was signed out."));
    }
}
