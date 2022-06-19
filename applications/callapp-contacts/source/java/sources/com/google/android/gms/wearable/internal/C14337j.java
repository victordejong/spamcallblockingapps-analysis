package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.wearable.AbstractC14226f;
/* renamed from: com.google.android.gms.wearable.internal.j */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/j.class */
final class C14337j extends AbstractC14327do<Status> {

    /* renamed from: a */
    private final String f52301a;

    /* renamed from: b */
    private AbstractC14226f.AbstractC14227a f52302b;

    public C14337j(AbstractC11826g abstractC11826g, AbstractC14226f.AbstractC14227a abstractC14227a, String str) {
        super(abstractC11826g);
        this.f52302b = (AbstractC14226f.AbstractC14227a) C12045o.m19162a(abstractC14227a);
        this.f52301a = str;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: a */
    public final /* synthetic */ AbstractC11925m mo11354a(Status status) {
        this.f52302b = null;
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.C11892d.AbstractC11893a
    /* renamed from: a */
    public final /* synthetic */ void mo11353a(C14314db c14314db) throws RemoteException {
        C14314db c14314db2 = c14314db;
        AbstractC14226f.AbstractC14227a abstractC14227a = this.f52302b;
        String str = this.f52301a;
        if (str == null) {
            c14314db2.f52251b.m11405a(c14314db2, this, abstractC14227a);
        } else {
            c14314db2.f52251b.m11405a(c14314db2, this, new C14295cj(str, abstractC14227a));
        }
        this.f52302b = null;
    }
}
