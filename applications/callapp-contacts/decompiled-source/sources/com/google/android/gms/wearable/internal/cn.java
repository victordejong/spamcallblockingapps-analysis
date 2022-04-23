package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.d;
import com.google.android.gms.tasks.i;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cn.class */
final class cn implements d.b<Status> {

    /* renamed from: a  reason: collision with root package name */
    private final i<Void> f30104a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cn(i<Void> iVar) {
        this.f30104a = iVar;
    }

    @Override // com.google.android.gms.common.api.internal.d.b
    public final /* synthetic */ void a(Object obj) {
        Status status = (Status) obj;
        int statusCode = status.getStatusCode();
        if (statusCode == 0 || statusCode == 4001) {
            this.f30104a.a((i<Void>) null);
        } else {
            b(status);
        }
    }

    @Override // com.google.android.gms.common.api.internal.d.b
    public final void b(Status status) {
        this.f30104a.a(new ApiException(status));
    }
}
