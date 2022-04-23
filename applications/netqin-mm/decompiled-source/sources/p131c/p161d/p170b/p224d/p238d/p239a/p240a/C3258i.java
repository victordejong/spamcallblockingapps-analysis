package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.internal.zaaf;
import com.google.android.gms.common.api.internal.zaar;
import com.google.android.gms.common.api.internal.zaaz;
import com.google.android.gms.common.internal.IAccountAccessor;
import java.util.ArrayList;
import java.util.Set;
/* renamed from: c.d.b.d.d.a.a.i */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/i.class */
public final class C3258i extends AbstractRunnableC3264l {

    /* renamed from: b */
    public final ArrayList<Api.Client> f11950b;

    /* renamed from: c */
    public final /* synthetic */ zaaf f11951c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3258i(zaaf zaafVar, ArrayList<Api.Client> arrayList) {
        super(zaafVar, null);
        this.f11951c = zaafVar;
        this.f11950b = arrayList;
    }

    @Override // p131c.p161d.p170b.p224d.p238d.p239a.p240a.AbstractRunnableC3264l
    /* renamed from: a */
    public final void mo27298a() {
        zaaz zaazVar;
        Set<Scope> i;
        IAccountAccessor iAccountAccessor;
        zaaz zaazVar2;
        zaazVar = this.f11951c.f23183a;
        zaar zaarVar = zaazVar.f23242n;
        i = this.f11951c.m17565i();
        zaarVar.f23219p = i;
        ArrayList<Api.Client> arrayList = this.f11950b;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Api.Client client = arrayList.get(i2);
            i2++;
            iAccountAccessor = this.f11951c.f23197o;
            zaazVar2 = this.f11951c.f23183a;
            client.mo17618a(iAccountAccessor, zaazVar2.f23242n.f23219p);
        }
    }
}
