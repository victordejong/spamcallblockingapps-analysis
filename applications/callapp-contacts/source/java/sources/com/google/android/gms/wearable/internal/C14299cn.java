package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11892d;
import com.google.android.gms.tasks.C14186i;
/* renamed from: com.google.android.gms.wearable.internal.cn */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cn.class */
final class C14299cn implements C11892d.AbstractC11894b<Status> {

    /* renamed from: a */
    private final C14186i<Void> f52246a;

    public C14299cn(C14186i<Void> c14186i) {
        this.f52246a = c14186i;
    }

    @Override // com.google.android.gms.common.api.internal.C11892d.AbstractC11894b
    /* renamed from: a */
    public final /* synthetic */ void mo11401a(Object obj) {
        Status status = (Status) obj;
        int statusCode = status.getStatusCode();
        if (statusCode == 0 || statusCode == 4001) {
            this.f52246a.m11471a((C14186i<Void>) null);
        } else {
            mo11400b(status);
        }
    }

    @Override // com.google.android.gms.common.api.internal.C11892d.AbstractC11894b
    /* renamed from: b */
    public final void mo11400b(Status status) {
        this.f52246a.m11472a(new ApiException(status));
    }
}
