package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.common.api.AbstractC2492d;
import com.google.android.gms.common.api.AbstractC2500h;
import com.google.android.gms.common.api.Status;
/* renamed from: com.google.android.gms.auth.api.signin.internal.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/l.class */
public final class C2432l extends AbstractC2436p<Status> {
    public C2432l(AbstractC2492d abstractC2492d) {
        super(abstractC2492d);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: a */
    public final /* synthetic */ AbstractC2500h mo14232a(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.C2545d.AbstractC2546a
    /* renamed from: a */
    protected final /* synthetic */ void mo14324a(C2430j c2430j) {
        C2430j c2430j2 = c2430j;
        ((AbstractC2442v) c2430j2.m14067v()).mo14500a(new BinderC2431k(this), c2430j2.m14509c());
    }
}
