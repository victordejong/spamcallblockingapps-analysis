package com.google.android.gms.internal.appset;

import com.google.android.gms.appset.C5870c;
import com.google.android.gms.appset.zzc;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C6059r;
import com.google.android.gms.tasks.C7968h;
/* renamed from: com.google.android.gms.internal.appset.n */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/appset/n.class */
final class BinderC7252n extends AbstractBinderC7243e {

    /* renamed from: d */
    final /* synthetic */ C7968h f34233d;

    public BinderC7252n(C7253o c7253o, C7968h c7968h) {
        this.f34233d = c7968h;
    }

    @Override // com.google.android.gms.internal.appset.AbstractC7244f
    /* renamed from: K3 */
    public final void mo7832K3(Status status, zzc zzcVar) {
        C6059r.m17286a(status, zzcVar != null ? new C5870c(zzcVar.m17726l0(), zzcVar.m17727k0()) : null, this.f34233d);
    }
}
