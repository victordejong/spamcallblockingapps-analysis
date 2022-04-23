package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import android.content.Context;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.zaaf;
import com.google.android.gms.common.api.internal.zaaz;
import com.google.android.gms.common.internal.zal;
import com.google.android.gms.signin.zad;
import java.util.ArrayList;
import java.util.Map;
/* renamed from: c.d.b.d.d.a.a.d */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/d.class */
public final class C3248d extends AbstractRunnableC3264l {

    /* renamed from: b */
    public final Map<Api.Client, C3250e> f11936b;

    /* renamed from: c */
    public final /* synthetic */ zaaf f11937c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3248d(zaaf zaafVar, Map<Api.Client, C3250e> map) {
        super(zaafVar, null);
        this.f11937c = zaafVar;
        this.f11936b = map;
    }

    @Override // p131c.p161d.p170b.p224d.p238d.p239a.p240a.AbstractRunnableC3264l
    /* renamed from: a */
    public final void mo27298a() {
        GoogleApiAvailabilityLight googleApiAvailabilityLight;
        boolean z;
        Context context;
        zaaz zaazVar;
        zad zadVar;
        zad zadVar2;
        zaaz zaazVar2;
        Context context2;
        Context context3;
        boolean z2;
        googleApiAvailabilityLight = this.f11937c.f23186d;
        zal zalVar = new zal(googleApiAvailabilityLight);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Api.Client client : this.f11936b.keySet()) {
            if (client.mo17609i()) {
                z2 = this.f11936b.get(client).f11942c;
                if (!z2) {
                    arrayList.add(client);
                }
            }
            arrayList2.add(client);
        }
        int i = -1;
        int i2 = 0;
        int i3 = 0;
        if (arrayList.isEmpty()) {
            int size = arrayList2.size();
            while (true) {
                if (i3 >= size) {
                    break;
                }
                Object obj = arrayList2.get(i3);
                i3++;
                context3 = this.f11937c.f23185c;
                int a = zalVar.m17181a(context3, (Api.Client) obj);
                i = a;
                if (a == 0) {
                    i = a;
                    break;
                }
            }
        } else {
            int size2 = arrayList.size();
            while (true) {
                if (i2 >= size2) {
                    break;
                }
                Object obj2 = arrayList.get(i2);
                i2++;
                context2 = this.f11937c.f23185c;
                int a2 = zalVar.m17181a(context2, (Api.Client) obj2);
                i = a2;
                if (a2 != 0) {
                    i = a2;
                    break;
                }
            }
        }
        if (i != 0) {
            ConnectionResult connectionResult = new ConnectionResult(i, null);
            zaazVar2 = this.f11937c.f23183a;
            zaazVar2.m17534a(new C3254g(this, this.f11937c, connectionResult));
            return;
        }
        z = this.f11937c.f23195m;
        if (z) {
            zadVar = this.f11937c.f23193k;
            if (zadVar != null) {
                zadVar2 = this.f11937c.f23193k;
                zadVar2.mo8623d();
            }
        }
        for (Api.Client client2 : this.f11936b.keySet()) {
            C3250e eVar = this.f11936b.get(client2);
            if (client2.mo17609i()) {
                context = this.f11937c.f23185c;
                if (zalVar.m17181a(context, client2) != 0) {
                    zaazVar = this.f11937c.f23183a;
                    zaazVar.m17534a(new C3252f(this, this.f11937c, eVar));
                }
            }
            client2.mo17620a(eVar);
        }
    }
}
