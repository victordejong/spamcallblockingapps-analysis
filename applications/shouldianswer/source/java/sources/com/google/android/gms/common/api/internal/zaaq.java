package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.IAccountAccessor;
import java.util.ArrayList;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaaq.class */
public final class zaaq extends zaau {
    private final /* synthetic */ zaak zagj;
    private final ArrayList<Api.Client> zagp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaaq(zaak zaakVar, ArrayList<Api.Client> arrayList) {
        super(zaakVar, null);
        this.zagj = zaakVar;
        this.zagp = arrayList;
    }

    @Override // com.google.android.gms.common.api.internal.zaau
    public final void zaan() {
        zabe zabeVar;
        Set<Scope> zaat;
        IAccountAccessor iAccountAccessor;
        zabe zabeVar2;
        zabeVar = this.zagj.zaft;
        zaaw zaawVar = zabeVar.zaee;
        zaat = this.zagj.zaat();
        zaawVar.zaha = zaat;
        ArrayList<Api.Client> arrayList = this.zagp;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            i++;
            iAccountAccessor = this.zagj.zagf;
            zabeVar2 = this.zagj.zaft;
            arrayList.get(i).getRemoteService(iAccountAccessor, zabeVar2.zaee.zaha);
        }
    }
}
