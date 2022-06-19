package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11892d;
import com.google.android.gms.tasks.C14186i;
/* renamed from: com.google.android.gms.wearable.internal.cm */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cm.class */
final class C14298cm implements C11892d.AbstractC11894b<Status> {

    /* renamed from: a */
    private final C14186i<Boolean> f52245a;

    public C14298cm(C14186i<Boolean> c14186i) {
        this.f52245a = c14186i;
    }

    @Override // com.google.android.gms.common.api.internal.C11892d.AbstractC11894b
    /* renamed from: a */
    public final /* synthetic */ void mo11401a(Object obj) {
        Status status = (Status) obj;
        int statusCode = status.getStatusCode();
        if (statusCode == 0) {
            this.f52245a.m11471a((C14186i<Boolean>) Boolean.TRUE);
        } else if (statusCode == 4002) {
            this.f52245a.m11471a((C14186i<Boolean>) Boolean.FALSE);
        } else {
            mo11400b(status);
        }
    }

    @Override // com.google.android.gms.common.api.internal.C11892d.AbstractC11894b
    /* renamed from: b */
    public final void mo11400b(Status status) {
        this.f52245a.m11472a(new ApiException(status));
    }
}
