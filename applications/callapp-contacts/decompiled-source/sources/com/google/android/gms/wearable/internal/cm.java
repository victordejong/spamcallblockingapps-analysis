package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.d;
import com.google.android.gms.tasks.i;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cm.class */
final class cm implements d.b<Status> {

    /* renamed from: a  reason: collision with root package name */
    private final i<Boolean> f30103a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cm(i<Boolean> iVar) {
        this.f30103a = iVar;
    }

    @Override // com.google.android.gms.common.api.internal.d.b
    public final /* synthetic */ void a(Object obj) {
        Status status = (Status) obj;
        int statusCode = status.getStatusCode();
        if (statusCode == 0) {
            this.f30103a.a((i<Boolean>) Boolean.TRUE);
        } else if (statusCode == 4002) {
            this.f30103a.a((i<Boolean>) Boolean.FALSE);
        } else {
            b(status);
        }
    }

    @Override // com.google.android.gms.common.api.internal.d.b
    public final void b(Status status) {
        this.f30103a.a(new ApiException(status));
    }
}
