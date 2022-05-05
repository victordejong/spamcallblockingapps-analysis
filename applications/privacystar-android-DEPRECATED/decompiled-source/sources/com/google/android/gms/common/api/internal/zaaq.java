package com.google.android.gms.common.api.internal;

import android.support.annotation.WorkerThread;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.IAccountAccessor;
import java.util.ArrayList;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaaq.class */
public final class zaaq extends zaau {
    private final /* synthetic */ zaak zagi;
    private final ArrayList<Api.Client> zago;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaaq(zaak zaakVar, ArrayList<Api.Client> arrayList) {
        super(zaakVar, null);
        this.zagi = zaakVar;
        this.zago = arrayList;
    }

    @Override // com.google.android.gms.common.api.internal.zaau
    @WorkerThread
    public final void zaan() {
        zabe zabeVar;
        Set<Scope> zaat;
        IAccountAccessor iAccountAccessor;
        zabe zabeVar2;
        zabeVar = this.zagi.zafs;
        zaaw zaawVar = zabeVar.zaed;
        zaat = this.zagi.zaat();
        zaawVar.zagz = zaat;
        ArrayList<Api.Client> arrayList = this.zago;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Api.Client client = arrayList.get(i);
            i++;
            iAccountAccessor = this.zagi.zage;
            zabeVar2 = this.zagi.zafs;
            client.getRemoteService(iAccountAccessor, zabeVar2.zaed.zagz);
        }
    }
}
