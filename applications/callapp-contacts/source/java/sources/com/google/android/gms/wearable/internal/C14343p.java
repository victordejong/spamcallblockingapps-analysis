package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.AbstractC11921j;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.wearable.internal.p */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/p.class */
final class C14343p<T> extends AbstractC14327do<Status> {

    /* renamed from: a */
    private T f52308a;

    /* renamed from: b */
    private C11899i<T> f52309b;

    /* renamed from: g */
    private AbstractC14242ak<T> f52310g;

    private C14343p(AbstractC11826g abstractC11826g, T t, C11899i<T> c11899i, AbstractC14242ak<T> abstractC14242ak) {
        super(abstractC11826g);
        this.f52308a = (T) C12045o.m19162a(t);
        this.f52309b = (C11899i) C12045o.m19162a(c11899i);
        this.f52310g = (AbstractC14242ak) C12045o.m19162a(abstractC14242ak);
    }

    /* renamed from: a */
    public static <T> AbstractC11921j<Status> m11355a(AbstractC11826g abstractC11826g, AbstractC14242ak<T> abstractC14242ak, T t) {
        return abstractC11826g.mo19405a(new C14343p(abstractC11826g, t, AbstractC11826g.m19444b(), abstractC14242ak));
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: a */
    public final /* synthetic */ AbstractC11925m mo11354a(Status status) {
        this.f52308a = null;
        this.f52309b = null;
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.C11892d.AbstractC11893a
    /* renamed from: a */
    public final /* synthetic */ void mo11353a(C14314db c14314db) throws RemoteException {
        this.f52310g.mo11352a(c14314db, this, this.f52308a, this.f52309b);
        this.f52308a = null;
        this.f52309b = null;
    }
}
