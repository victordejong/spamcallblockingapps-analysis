package com.google.android.gms.common.api.internal;

import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.IAccountAccessor;
import java.util.ArrayList;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaaq.class */
public final class zaaq extends zaau {

    /* renamed from: g */
    private final ArrayList<Api.Client> f7173g;

    /* renamed from: h */
    private final /* synthetic */ zaak f7174h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaaq(zaak zaakVar, ArrayList<Api.Client> arrayList) {
        super(zaakVar, null);
        this.f7174h = zaakVar;
        this.f7173g = arrayList;
    }

    @Override // com.google.android.gms.common.api.internal.zaau
    @WorkerThread
    /* renamed from: a */
    public final void mo14822a() {
        zabe zabeVar;
        Set<Scope> q;
        IAccountAccessor iAccountAccessor;
        zabe zabeVar2;
        zabeVar = this.f7174h.f7143a;
        zaaw zaawVar = zabeVar.f7229n;
        q = this.f7174h.m14833q();
        zaawVar.f7196p = q;
        ArrayList<Api.Client> arrayList = this.f7173g;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Api.Client client = arrayList.get(i);
            i++;
            iAccountAccessor = this.f7174h.f7157o;
            zabeVar2 = this.f7174h.f7143a;
            client.getRemoteService(iAccountAccessor, zabeVar2.f7229n.f7196p);
        }
    }
}
