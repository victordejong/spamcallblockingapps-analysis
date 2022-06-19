package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.IAccountAccessor;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaam.class */
public final class zaam extends zaaq {
    public final /* synthetic */ zaar zaa;
    private final ArrayList<Api.Client> zac;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaam(zaar zaarVar, ArrayList<Api.Client> arrayList) {
        super(zaarVar, null);
        this.zaa = zaarVar;
        this.zac = arrayList;
    }

    @Override // com.google.android.gms.common.api.internal.zaaq
    public final void zaa() {
        zabd zabdVar;
        IAccountAccessor iAccountAccessor;
        zabd zabdVar2;
        zabdVar = this.zaa.zaa;
        zabdVar.zag.zad = zaar.zap(this.zaa);
        ArrayList<Api.Client> arrayList = this.zac;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            iAccountAccessor = this.zaa.zao;
            zabdVar2 = this.zaa.zaa;
            arrayList.get(i).getRemoteService(iAccountAccessor, zabdVar2.zag.zad);
        }
    }
}
