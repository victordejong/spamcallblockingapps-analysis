package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.zaar;
import com.google.android.gms.common.api.internal.zaaz;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.zab;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
/* renamed from: e.m.a.f.e.a.a.i */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/i.class */
public final class C24923i extends AbstractRunnableC24931m {

    /* renamed from: b */
    public final ArrayList<Api.Client> f69842b;

    /* renamed from: c */
    public final /* synthetic */ zaar f69843c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C24923i(zaar zaarVar, ArrayList<Api.Client> arrayList) {
        super(zaarVar);
        this.f69843c = zaarVar;
        this.f69842b = arrayList;
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.AbstractRunnableC24931m
    /* renamed from: a */
    public final void mo4287a() {
        HashSet hashSet;
        zaar zaarVar = this.f69843c;
        zaaz zaazVar = zaarVar.f5787a.f5846n;
        ClientSettings clientSettings = zaarVar.f5804r;
        if (clientSettings == null) {
            hashSet = Collections.emptySet();
        } else {
            hashSet = new HashSet(clientSettings.f5943b);
            Map<Api<?>, zab> map = zaarVar.f5804r.f5945d;
            for (Api<?> api : map.keySet()) {
                if (!zaarVar.f5787a.f5839g.containsKey(api.f5690b)) {
                    Objects.requireNonNull(map.get(api));
                    hashSet.addAll(null);
                }
            }
        }
        zaazVar.f5823p = hashSet;
        ArrayList<Api.Client> arrayList = this.f69842b;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Api.Client client = arrayList.get(i);
            zaar zaarVar2 = this.f69843c;
            client.getRemoteService(zaarVar2.f5801o, zaarVar2.f5787a.f5846n.f5823p);
        }
    }
}
