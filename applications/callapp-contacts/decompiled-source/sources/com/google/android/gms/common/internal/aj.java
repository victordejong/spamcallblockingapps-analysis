package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.tasks.i;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/aj.class */
final class aj implements j.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ j f22840a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ i f22841b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ n.a f22842c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ al f22843d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(j jVar, i iVar, n.a aVar, al alVar) {
        this.f22840a = jVar;
        this.f22841b = iVar;
        this.f22842c = aVar;
        this.f22843d = alVar;
    }

    @Override // com.google.android.gms.common.api.j.a
    public final void a(Status status) {
        if (status.isSuccess()) {
            this.f22841b.a((i) this.f22842c.a(this.f22840a.a(0L, TimeUnit.MILLISECONDS)));
            return;
        }
        this.f22841b.a((Exception) b.a(status));
    }
}
