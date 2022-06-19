package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.zaar;
import com.google.android.gms.common.api.internal.zabd;
import com.google.android.gms.common.internal.zal;
import com.google.android.gms.signin.zae;
import java.util.ArrayList;
import java.util.Map;
/* renamed from: e.m.a.f.e.a.a.h */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/h.class */
public final class C24921h extends AbstractRunnableC24931m {

    /* renamed from: b */
    public final Map<Api.Client, C24915e> f69840b;

    /* renamed from: c */
    public final /* synthetic */ zaar f69841c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C24921h(zaar zaarVar, Map<Api.Client, C24915e> map) {
        super(zaarVar);
        this.f69841c = zaarVar;
        this.f69840b = map;
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.AbstractRunnableC24931m
    /* renamed from: a */
    public final void mo4287a() {
        zae zaeVar;
        zal zalVar = new zal(this.f69841c.f5790d);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Api.Client client : this.f69840b.keySet()) {
            if (!client.requiresGooglePlayServices() || this.f69840b.get(client).f69832c) {
                arrayList2.add(client);
            } else {
                arrayList.add(client);
            }
        }
        int i = -1;
        int i2 = 0;
        if (arrayList.isEmpty()) {
            int size = arrayList2.size();
            while (true) {
                if (i2 >= size) {
                    break;
                }
                int m38825a = zalVar.m38825a(this.f69841c.f5789c, (Api.Client) arrayList2.get(i2));
                i2++;
                i = m38825a;
                if (m38825a == 0) {
                    i = m38825a;
                    break;
                }
            }
        } else {
            int size2 = arrayList.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size2) {
                    break;
                }
                int m38825a2 = zalVar.m38825a(this.f69841c.f5789c, (Api.Client) arrayList.get(i3));
                i3++;
                i = m38825a2;
                if (m38825a2 != 0) {
                    i = m38825a2;
                    break;
                }
            }
        }
        if (i != 0) {
            ConnectionResult connectionResult = new ConnectionResult(i, null);
            zaar zaarVar = this.f69841c;
            zabd zabdVar = zaarVar.f5787a;
            zabdVar.f5837e.sendMessage(zabdVar.f5837e.obtainMessage(1, new C24917f(this, zaarVar, connectionResult)));
            return;
        }
        zaar zaarVar2 = this.f69841c;
        if (zaarVar2.f5799m && (zaeVar = zaarVar2.f5797k) != null) {
            zaeVar.a();
        }
        for (Api.Client client2 : this.f69840b.keySet()) {
            C24915e c24915e = this.f69840b.get(client2);
            if (!client2.requiresGooglePlayServices() || zalVar.m38825a(this.f69841c.f5789c, client2) == 0) {
                client2.connect(c24915e);
            } else {
                zaar zaarVar3 = this.f69841c;
                zabd zabdVar2 = zaarVar3.f5787a;
                zabdVar2.f5837e.sendMessage(zabdVar2.f5837e.obtainMessage(1, new C24919g(zaarVar3, c24915e)));
            }
        }
    }
}
